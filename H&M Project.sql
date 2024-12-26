CREATE DATABASE IF NOT EXISTS hm_database;
USE hm_database;


CREATE TABLE IF NOT EXISTS hm_products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    description TEXT
);

INSERT INTO hm_products (product_name, category, price, description) VALUES
('Women\'s T-shirt', 'Clothing', 19.99, 'Basic cotton T-shirt for women'),
('Men\'s Jeans', 'Clothing', 49.99, 'Slim-fit denim jeans for men'),
('Women\'s Dress', 'Clothing', 79.99, 'Floral print maxi dress'),
('Men\'s Shirt', 'Clothing', 29.99, 'Casual button-up shirt'),
('Women\'s Sweater', 'Clothing', 39.99, 'Knitted pullover sweater'),
('Men\'s Jacket', 'Clothing', 99.99, 'Waterproof hooded jacket'),
('Women\'s Skirt', 'Clothing', 34.99, 'A-line midi skirt'),
('Men\'s Shorts', 'Clothing', 24.99, 'Cotton cargo shorts'),
('Women\'s Blouse', 'Clothing', 29.99, 'Silk blend blouse'),
('Men\'s Suit', 'Clothing', 199.99, 'Formal three-piece suit'),
('Women\'s Jeans', 'Clothing', 59.99, 'Skinny high-waist jeans'),
('Men\'s Polo Shirt', 'Clothing', 19.99, 'Pique polo shirt'),
('Women\'s Jacket', 'Clothing', 89.99, 'Faux leather biker jacket'),
('Men\'s Sweater', 'Clothing', 49.99, 'Merino wool crewneck sweater'),
('Women\'s Shorts', 'Clothing', 24.99, 'Denim cutoff shorts'),
('Men\'s Blazer', 'Clothing', 79.99, 'Slim-fit cotton blazer'),
('Women\'s Coat', 'Clothing', 129.99, 'Wool blend trench coat'),
('Men\'s Hoodie', 'Clothing', 39.99, 'Zip-up fleece hoodie'),
('Women\'s Jumpsuit', 'Clothing', 69.99, 'Wide-leg jumpsuit'),
('Men\'s Socks', 'Clothing', 9.99, 'Pack of five cotton socks'),
('Women\'s Scarf', 'Accessories', 14.99, 'Patterned silk scarf'),
('Men\'s Belt', 'Accessories', 24.99, 'Leather belt with metal buckle'),
('Women\'s Hat', 'Accessories', 19.99, 'Wide-brim straw hat'),
('Men\'s Watch', 'Accessories', 129.99, 'Stainless steel chronograph watch'),
('Women\'s Sunglasses', 'Accessories', 39.99, 'Oversized cat-eye sunglasses'),
('Men\'s Wallet', 'Accessories', 49.99, 'Leather bifold wallet'),
('Women\'s Handbag', 'Accessories', 89.99, 'Leather crossbody bag'),
('Men\'s Backpack', 'Accessories', 79.99, 'Canvas backpack with laptop compartment'),
('Women\'s Necklace', 'Accessories', 29.99, 'Gold-plated pendant necklace'),
('Men\'s Tie', 'Accessories', 14.99, 'Silk patterned tie'),
('Women\'s Earrings', 'Accessories', 19.99, 'Stud earrings set'),
('Men\'s Cufflinks', 'Accessories', 34.99, 'Silver cufflinks'),
('Women\'s Bracelet', 'Accessories', 24.99, 'Beaded charm bracelet'),
('Men\'s Gloves', 'Accessories', 19.99, 'Leather touchscreen gloves'),
('Women\'s Ring', 'Accessories', 39.99, 'Sterling silver ring'),
('Men\'s Scarf', 'Accessories', 29.99, 'Cashmere scarf'),
('Women\'s Watch', 'Accessories', 99.99, 'Rose gold dress watch'),
('Men\'s Hat', 'Accessories', 29.99, 'Wool fedora hat'),
('Women\'s Belt', 'Accessories', 34.99, 'Braided leather belt'),
('Men\'s Sunglasses', 'Accessories', 59.99, 'Aviator sunglasses'),
('Women\'s Wallet', 'Accessories', 49.99, 'Zip-around continental wallet'),
('Men\'s Backpack', 'Accessories', 79.99, 'Technical backpack'),
('Women\'s Backpack', 'Accessories', 89.99, 'Nylon backpack with leather trim'),
('Men\'s Briefcase', 'Accessories', 129.99, 'Leather business briefcase'),
('Women\'s Gloves', 'Accessories', 24.99, 'Cashmere-lined leather gloves'),
('Men\'s Scarf', 'Accessories', 34.99, 'Patterned wool scarf'),
('Women\'s Hat', 'Accessories', 19.99, 'Ribbed knit beanie');




SELECT * FROM hm_products;

#Question 1: Retrieve all products along with their categories.

SELECT p.product_name, p.category
FROM hm_products p;

#Question 2: List products priced over $50, along with their descriptions.

SELECT p.product_name, p.price, p.description
FROM hm_products p
WHERE p.price > 50;

#Question 3: Find all products in the 'Accessories' category with prices between $20 and $50.

SELECT p.product_name, p.price
FROM hm_products p
WHERE p.category = 'Accessories'
  AND p.price BETWEEN 20 AND 50;
  
  #Question 4: Display products and their corresponding categories, sorted alphabetically by category.

SELECT p.product_name, p.category
FROM hm_products p
ORDER BY p.category;

# Find the average price of products in each category, along with the highest priced product in each category.
SELECT 
    p.category,
    AVG(p.price) AS avg_price,
    MAX(p.price) AS max_price
FROM hm_products p
GROUP BY p.category;

#Question 1: Find all products whose names start with 'Women's'.
SELECT product_name, category, price
FROM hm_products
WHERE product_name LIKE 'Women''s%';

#Question 2: Find all products whose names start with 'Women'a'.
SELECT product_name, category, price
FROM hm_products
WHERE product_name LIKE 'Women''a%';

#Question 3: Find all products whose names start with 'Women'_a%'.
SELECT product_name, category, price
FROM hm_products
WHERE product_name LIKE 'Women''_a%';
#Question 4: Find all products whose names start with 'Women'_a_'.
SELECT product_name, category, price
FROM hm_products
WHERE product_name LIKE 'Women''_a_';
#Question 5: Find all products whose names start with 'Women'a_'.
SELECT product_name, category, price
FROM hm_products
WHERE product_name LIKE 'Women''a_';













