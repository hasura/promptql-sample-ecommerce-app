# PromptQL Sample eCommerce App

This is a sample eCommerce application using Hasura PromptQL. Follow the steps below to set it up.

## Installation

1. Clone the repo:
   ```bash
   git clone https://github.com/hasura/promptql-sample-ecommerce-app
   ```

2. Install Hasura DDN CLI:
   ```bash
   curl -L https://graphql-engine-cdn.hasura.io/ddn/cli/v4/get.sh | bash
   ```

3. Log in to Hasura via CLI:
   ```bash
   ddn auth login
   ```

4. Change to the `ddn_ecommerce` directory:
   ```bash
   cd ddn_ecommerce
   ```
5. Set up environment variables:
   - Copy the `.env.example` file:
     ```bash
     cp .env.example .env
     ```
   - Edit `.env` to include your API keys:
     - Get your **Hasura DDN PAT**:
       ```bash
       ddn auth print-pat
       ```
       Update the `HASURA_DDN_PAT` variable in `.env` with the obtained PAT.
     - Get your **Anthropic API key** (this will be used for executing PromptQL queries) and update the `ANTHROPIC_API_KEY` variable in `.env`.
     - Get your **OpenAI API key** (this will be used for creating the vector embeddings of product reviews) and  update the `APP_TYPESCRIPT_OPENAI_API_KEY` variable in `.env`.
     - Get your **PromptQL API key**:
       - Create a Hasura DDN project:
         ```bash
         ddn project create
         ```
       - Go to [Hasura DDN Console](https://console.hasura.io/) > select your project > Go to Settings (bottom left corner) > Go to PromptQL under **Project Settings** > Generate New API Key (remember to copy the key).
       - Update the `PROMPTQL_SECRET_KEY` variable in `.env` with the obtained API key.

## Running the App

1. Start the playground server from the `ddn_ecommerce` directory:
   ```bash
   ddn run docker-start
   ```

2. Open the Hasura Console:
   Go to [PromptQL Playground on Hasura Local Console](https://console.hasura.io/local/chat), enter your playground URL (`http://localhost:5000`).

**Note:** This setup works best on Chrome. Other browsers may experience issues.

## Example Queries
You can ask queries like:

- What is Mia Wright's order history?
- What reviews has Jane Smith written?
- Find electronic products less than $300 where the reviews mention they are working great.
- What are the average ratings for each category?
- How much has Bob Brown spent till date?
- What are customers saying about Laptop Pro?

See the power of PromptQL in action!