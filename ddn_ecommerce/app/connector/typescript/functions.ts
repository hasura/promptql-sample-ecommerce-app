import {Client} from "pg";

export interface ReviewRow {
  reviewId: number
};

/**
 * @readonly
 */
export async function semanticSearchReviews(
  text: string,
  limit?: number,
  offset?: number
): Promise<ReviewRow[]> {
  const client = new Client({
    connectionString: process.env.PG_CONNECTION_URI,
  });
  const openai_api_key = process.env.OPENAI_API_KEY;

  try {
    // Generate embedding for the search text
    const embeddingResponse = await fetch("https://api.openai.com/v1/embeddings", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Authorization": `Bearer ${openai_api_key}`,
      },
      body: JSON.stringify({
        input: text,
        model: "text-embedding-3-large",
      }),
    });

    const embeddingData = await embeddingResponse.json() as any;
    const embedding = embeddingData.data[0].embedding;
    const formattedEmbedding = `[${embedding.join(",")}]`;

    await client.connect();

    // Base query to find reviews with similar embeddings
    let searchQuery = `
      SELECT 
        review_id,
        1 - (embedding <=> $1::vector) as similarity
      FROM Reviews
      WHERE embedding IS NOT NULL
      ORDER BY embedding <=> $1::vector
    `;

    const queryParams = [formattedEmbedding];
    
    if (limit !== undefined) {
      searchQuery += ` LIMIT ${limit}`;

      // Include OFFSET only if LIMIT is defined
      if (offset !== undefined) {
        searchQuery += ` OFFSET ${offset}`;
      }
    } else {
      searchQuery += ` LIMIT 20`;
    }


    const result = await client.query(searchQuery, queryParams);

    // Map the results to the expected ReviewRow interface
    const reviewRows: ReviewRow[] = result.rows.map(row => ({
      reviewId: row.review_id
    }));

    return reviewRows;
  } catch (error) {
    console.error("Error performing semantic search:", error);
    return [];
  } finally {
    await client.end();
  }
}

export async function vectorize(): Promise<string> {
  const client = new Client({
    connectionString: process.env.PG_CONNECTION_URI,
  });
  const openai_api_key = process.env.OPENAI_API_KEY;

  try {
    await client.connect();

    // Get all reviews that don't have embeddings yet
    const getReviewsQuery = `
      SELECT review_id, comment
      FROM Reviews
      WHERE embedding IS NULL AND comment IS NOT NULL
    `;
    const reviews = await client.query(getReviewsQuery);

    // Process reviews in batches to avoid rate limits
    const batchSize = 100;
    for (let i = 0; i < reviews.rows.length; i += batchSize) {
      const batch = reviews.rows.slice(i, i + batchSize);
      
      // Generate embeddings for each review in the batch
      const embeddings = await Promise.all(
        batch.map(async (review) => {
          const embeddingResponse = await fetch("https://api.openai.com/v1/embeddings", {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
              "Authorization": `Bearer ${openai_api_key}`,
            },
            body: JSON.stringify({
              input: review.comment,
              model: "text-embedding-3-large",
            }),
          });

          const embeddingData = await embeddingResponse.json() as any;
          return {
            review_id: review.review_id,
            embedding: embeddingData.data[0].embedding,
          };
        })
      );

      // Update reviews with their embeddings
      for (const { review_id, embedding } of embeddings) {
        // Format the embedding array as a PostgreSQL vector string
        const formattedEmbedding = `[${embedding.join(",")}]`;
        
        const updateQuery = `
          UPDATE Reviews
          SET embedding = $1::vector
          WHERE review_id = $2
        `;
        await client.query(updateQuery, [formattedEmbedding, review_id]);
      }

      // Log progress
      console.log(`Processed ${Math.min(i + batchSize, reviews.rows.length)} out of ${reviews.rows.length} reviews`);
    }

    return "SUCCESS";
  } catch (error) {
    console.error("Error vectorizing reviews:", error);
    throw error;
  } finally {
    await client.end();
  }
}