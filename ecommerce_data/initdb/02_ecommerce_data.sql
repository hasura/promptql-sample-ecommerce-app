-- Insert sample data into Users
INSERT INTO Users (first_name, last_name, email, password) VALUES
('John', 'Doe', 'john.doe@example.com', 'hashed_password_1'),
('Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2'),
('Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_3'),
('Bob', 'Brown', 'bob.brown@example.com', 'hashed_password_4'),
('Carol', 'Davis', 'carol.davis@example.com', 'hashed_password_5'),
('David', 'Wilson', 'david.wilson@example.com', 'hashed_password_6'),
('Emily', 'Clark', 'emily.clark@example.com', 'hashed_password_7'),
('Frank', 'Lopez', 'frank.lopez@example.com', 'hashed_password_8'),
('Grace', 'Lee', 'grace.lee@example.com', 'hashed_password_9'),
('Henry', 'Walker', 'henry.walker@example.com', 'hashed_password_10'),
('Ivy', 'Hall', 'ivy.hall@example.com', 'hashed_password_11'),
('Jack', 'Allen', 'jack.allen@example.com', 'hashed_password_12'),
('Karen', 'Young', 'karen.young@example.com', 'hashed_password_13'),
('Leo', 'King', 'leo.king@example.com', 'hashed_password_14'),
('Mia', 'Wright', 'mia.wright@example.com', 'hashed_password_15');

-- Insert sample data into Products
INSERT INTO Products (product_name, category, description, price, stock_quantity) VALUES
-- Electronics
('Smartphone X', 'Electronics', 'Latest smartphone with cutting-edge features.', 999.99, 100),
('Laptop Pro', 'Electronics', 'High-performance laptop for professionals.', 1299.99, 50),
('Wireless Earbuds', 'Electronics', 'Comfortable and high-quality sound.', 199.99, 200),
('Smartwatch S', 'Electronics', 'Stylish smartwatch with health tracking.', 299.99, 150),
('Tablet A', 'Electronics', 'Lightweight tablet with HD display.', 499.99, 120),
('Bluetooth Speaker B', 'Electronics', 'Portable speaker with excellent bass.', 149.99, 180),
('Noise-Cancelling Headphones', 'Electronics', 'Immersive sound experience.', 249.99, 80),

-- Clothing and Apparel
('Men''s Casual Shirt', 'Clothing and Apparel', 'Comfortable cotton shirt.', 29.99, 300),
('Women''s Summer Dress', 'Clothing and Apparel', 'Lightweight and stylish.', 49.99, 200),
('Kid''s Sneakers', 'Clothing and Apparel', 'Durable sneakers for kids.', 39.99, 250),
('Men''s Leather Jacket', 'Clothing and Apparel', 'Genuine leather jacket.', 199.99, 75),
('Women''s Handbag', 'Clothing and Apparel', 'Elegant handbag for all occasions.', 89.99, 150),
('Kid''s T-Shirt Pack', 'Clothing and Apparel', 'Pack of 5 colorful t-shirts.', 59.99, 180),
('Unisex Sunglasses', 'Clothing and Apparel', 'UV protection sunglasses.', 19.99, 220),

-- Home and Kitchen
('Blender Pro', 'Home and Kitchen', 'Powerful blender with multiple settings.', 79.99, 90),
('Non-Stick Cookware Set', 'Home and Kitchen', '10-piece set with non-stick coating.', 129.99, 60),
('Vacuum Cleaner V', 'Home and Kitchen', 'High suction vacuum cleaner.', 159.99, 70),
('Air Purifier', 'Home and Kitchen', 'Removes allergens and pollutants.', 199.99, 65),
('LED Desk Lamp', 'Home and Kitchen', 'Adjustable brightness and color.', 49.99, 120),
('Coffee Maker', 'Home and Kitchen', 'Programmable coffee maker.', 89.99, 85),
('Memory Foam Pillow', 'Home and Kitchen', 'Ergonomic support pillow.', 39.99, 150),

-- Beauty and Personal Care
('Facial Cleanser', 'Beauty and Personal Care', 'Gentle daily cleanser.', 14.99, 300),
('Moisturizing Lotion', 'Beauty and Personal Care', 'Hydrates and nourishes skin.', 24.99, 250),
('Lipstick Set', 'Beauty and Personal Care', 'Set of 5 vibrant colors.', 29.99, 200),
('Men''s Shaving Kit', 'Beauty and Personal Care', 'Complete shaving essentials.', 49.99, 180),
('Hair Dryer', 'Beauty and Personal Care', 'Fast drying with heat control.', 59.99, 160),
('Makeup Brush Set', 'Beauty and Personal Care', 'Professional 12-piece set.', 34.99, 210),
('Perfume Fragrance', 'Beauty and Personal Care', 'Long-lasting scent.', 69.99, 140),

-- Books
('Mystery Novel: The Lost Key', 'Books', 'A thrilling mystery novel.', 15.99, 500),
('Science Fiction: Journey to Mars', 'Books', 'An epic space adventure.', 17.99, 400),
('Cookbook: Healthy Eating', 'Books', 'Delicious and healthy recipes.', 22.99, 350),
('Biography: Life of Tesla', 'Books', 'The story of Nikola Tesla.', 19.99, 300),
('Children''s Book: The Adventures of Tom', 'Books', 'A fun tale for kids.', 12.99, 450),
('Self-Help: Mindfulness Meditation', 'Books', 'Guide to mindfulness.', 14.99, 380),
('Historical Fiction: The Ancient Empire', 'Books', 'A journey to ancient times.', 18.99, 320),

-- Toys and Games
('Building Blocks Set', 'Toys and Games', 'Creative building blocks.', 49.99, 200),
('Remote Control Car', 'Toys and Games', 'High-speed RC car.', 59.99, 150),
('Board Game: Strategy Quest', 'Toys and Games', 'Fun for the whole family.', 39.99, 180),
('Dollhouse Deluxe', 'Toys and Games', 'Multi-story dollhouse.', 99.99, 80),
('Puzzle 1000 pieces', 'Toys and Games', 'Challenging and fun.', 24.99, 220),
('Action Figure Hero', 'Toys and Games', 'Collectible action figure.', 29.99, 210),
('Stuffed Animal Bear', 'Toys and Games', 'Soft and cuddly bear.', 19.99, 250),

-- Health and Wellness
('Yoga Mat', 'Health and Wellness', 'Non-slip yoga mat.', 29.99, 200),
('Dumbbell Set', 'Health and Wellness', 'Adjustable weights.', 79.99, 120),
('Vitamin C Supplements', 'Health and Wellness', 'Boosts immunity.', 19.99, 300),
('Fitness Tracker Band', 'Health and Wellness', 'Monitor your activity.', 49.99, 180),
('Protein Powder', 'Health and Wellness', 'Supports muscle growth.', 59.99, 160),
('Resistance Bands', 'Health and Wellness', 'Set of 5 bands.', 24.99, 220),
('Massage Roller', 'Health and Wellness', 'Eases muscle tension.', 34.99, 200),

-- Sports and Outdoors
('Mountain Bike', 'Sports and Outdoors', 'Durable and lightweight.', 299.99, 50),
('Camping Tent', 'Sports and Outdoors', 'Sleeps up to 4 people.', 149.99, 70),
('Sleeping Bag', 'Sports and Outdoors', 'Warm and comfortable.', 89.99, 90),
('Hiking Backpack', 'Sports and Outdoors', 'Spacious with multiple pockets.', 79.99, 110),
('Soccer Ball', 'Sports and Outdoors', 'Official size and weight.', 29.99, 150),
('Fishing Rod', 'Sports and Outdoors', 'Telescopic fishing rod.', 59.99, 130),
('Outdoor Portable Grill', 'Sports and Outdoors', 'Perfect for picnics.', 99.99, 80),

-- Pet Supplies
('Dog Food Premium', 'Pet Supplies', 'Nutritious food for dogs.', 49.99, 200),
('Cat Litter Box', 'Pet Supplies', 'Easy to clean.', 34.99, 150),
('Bird Cage', 'Pet Supplies', 'Spacious for small birds.', 69.99, 90),
('Aquarium Starter Kit', 'Pet Supplies', 'Includes tank and accessories.', 99.99, 80),
('Pet Grooming Brush', 'Pet Supplies', 'Keeps fur healthy.', 14.99, 220),
('Dog Leash and Collar Set', 'Pet Supplies', 'Durable and adjustable.', 24.99, 180),
('Cat Scratching Post', 'Pet Supplies', 'Protects your furniture.', 39.99, 140),

-- Automotive Parts and Accessories
('Car Battery Charger', 'Automotive Parts and Accessories', 'Portable charger.', 59.99, 100),
('All-Season Car Tires', 'Automotive Parts and Accessories', 'Set of 4 tires.', 399.99, 40),
('Motor Oil Synthetic', 'Automotive Parts and Accessories', 'High performance.', 29.99, 150),
('Car Vacuum Cleaner', 'Automotive Parts and Accessories', 'Compact and powerful.', 49.99, 120),
('Dashboard Camera', 'Automotive Parts and Accessories', 'HD recording.', 89.99, 90),
('Car Seat Covers', 'Automotive Parts and Accessories', 'Set of 5 covers.', 99.99, 70),
('LED Headlights', 'Automotive Parts and Accessories', 'Bright and efficient.', 79.99, 80);


-- Insert sample data into Orders
INSERT INTO Orders (user_id, status, total_amount) VALUES
(1, 'Completed', 1299.99),
(1, 'Shipped', 199.99),
(2, 'Processing', 49.99),
(4, 'Completed', 159.98),
(4, 'Shipped', 199.98),
(4, 'Processing', 164.97),
(5, 'Completed', 259.98),
(5, 'Cancelled', 0.00),
(7, 'Completed', 19.99),
(8, 'Processing', 149.98),
(10, 'Completed', 299.97),
(10, 'Shipped', 399.99),
(11, 'Completed', 69.99),
(13, 'Processing', 34.99),
(14, 'Completed', 3899.97),
(14, 'Shipped', 149.97),
(15, 'Completed', 399.98),
(15, 'Shipped', 199.99),
(15, 'Processing', 14.99);

-- Insert sample data into OrderItems
-- Adjust product IDs to match those assigned by your database
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES
(1, 2, 1, 1299.99), -- Laptop Pro
(2, 3, 1, 199.99), -- Wireless Earbuds
(3, 9, 1, 49.99), -- Women's Summer Dress
(4, 15, 2, 79.99), -- Blender Pro x2
(5, 17, 1, 159.99), -- Vacuum Cleaner V
(5, 21, 1, 39.99), -- Memory Foam Pillow
(6, 34, 1, 59.99), -- Hair Dryer
(6, 35, 1, 34.99), -- Makeup Brush Set
(6, 36, 1, 69.99), -- Perfume Fragrance
(7, 16, 2, 129.99), -- Non-Stick Cookware Set x2
(8, 58, 1, 299.99), -- Mountain Bike
(9, 42, 1, 19.99), -- Stuffed Animal Bear
(10, 11, 2, 199.99), -- Men's Leather Jacket x2
(11, 58, 1, 299.99), -- Mountain Bike
(12, 2, 1, 1299.99), -- Laptop Pro
(13, 36, 1, 69.99), -- Perfume Fragrance
(14, 35, 1, 34.99), -- Makeup Brush Set
(15, 2, 3, 1299.99), -- Laptop Pro x3
(16, 3, 3, 199.99), -- Wireless Earbuds x3
(17, 6, 2, 149.99), -- Bluetooth Speaker B x2
(18, 16, 2, 129.99), -- Non-Stick Cookware Set x2
(19, 15, 1, 79.99); -- Blender Pro


-- Insert sample data into Reviews
INSERT INTO Reviews (product_id, user_id, rating, comment) VALUES
(1, 1, 5, 'Amazing phone with great features!'),
(1, 2, 4, 'Good phone but battery life could be better.'),
(2, 5, 5, 'Excellent performance for work.'),
(2, 3, 4, 'Great laptop but a bit pricey.'),
(3, 7, 5, 'Love these earbuds, excellent sound quality.'),
(3, 8, 3, 'Comfortable but connection drops sometimes.'),
(4, 4, 4, 'Stylish smartwatch with useful features.'),
(5, 6, 5, 'Tablet is lightweight and fast.'),
(6, 9, 4, 'Good speaker but battery life is average.'),
(7, 10, 5, 'Headphones have great noise cancellation.'),
(8, 11, 3, 'Shirt is comfortable but size runs small.'),
(9, 12, 5, 'Dress is beautiful and fits perfectly.'),
(10, 13, 4, 'Sneakers are durable and stylish.'),
(11, 14, 5, 'Jacket is high quality and looks great.'),
(12, 15, 4, 'Handbag is elegant but could be larger.'),
(13, 1, 5, 'T-shirts are colorful and my kids love them.'),
(14, 2, 4, 'Sunglasses are good but frame feels cheap.');

-- Insert additional reviews into Reviews
INSERT INTO Reviews (product_id, user_id, rating, comment) VALUES
-- Reviews for Product ID 2 (Laptop Pro)
(2, 6, 2, 'Experiencing frequent overheating issues.'),
(2, 9, 5, 'Best laptop I have ever used. Highly recommended!'),
-- Reviews for Product ID 3 (Wireless Earbuds)
(3, 10, 1, 'Stopped working after a week. Very disappointed.'),
(3, 5, 4, 'Good quality but a bit expensive.'),
-- Reviews for Product ID 5 (Tablet A)
(5, 7, 3, 'Average performance, expected more for the price.'),
(5, 12, 5, 'Excellent tablet, very fast and lightweight.'),
-- Reviews for Product ID 11 (Men''s Leather Jacket)
(11, 13, 2, 'Leather feels cheap and sizing is off.'),
(11, 2, 5, 'High-quality jacket, fits perfectly.'),
-- Reviews for Product ID 15 (Blender Pro)
(15, 8, 4, 'Works well but quite noisy.'),
(15, 3, 5, 'Fantastic blender, makes smoothies quickly.'),
-- Reviews for Product ID 17 (Vacuum Cleaner V)
(17, 4, 1, 'Stopped working after a month. Poor quality.'),
(17, 9, 4, 'Good suction power, cleans efficiently.'),
-- Reviews for Product ID 22 (Hair Dryer)
(22, 11, 5, 'Dries hair quickly without damage.'),
(22, 6, 3, 'Average hair dryer, nothing special.'),
-- Reviews for Product ID 42 (Stuffed Animal Bear)
(42, 14, 5, 'Adorable and soft, my child loves it.'),
(42, 15, 4, 'Good quality but smaller than expected.'),
-- Reviews for Product ID 58 (Mountain Bike)
(58, 1, 5, 'Great bike for off-road trails.'),
(58, 7, 2, 'Had issues with the gears after a few rides.'),
-- Reviews for Product ID 64 (Dog Food Premium)
(64, 5, 4, 'My dog enjoys it, but it''s a bit pricey.'),
(64, 8, 1, 'Caused allergies in my pet, had to switch brands.'),
-- Reviews for Product ID 69 (Car Vacuum Cleaner)
(69, 10, 5, 'Very handy for quick clean-ups in the car.'),
(69, 2, 3, 'Decent suction but battery life is short.');

