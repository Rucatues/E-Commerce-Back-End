-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE DATABASE ---
USE ecommerce_db; 

-- CREATE TABLES ---
CREATE TABLE Category (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    category_name VARCHAR(30) NOT NULL
); 

CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    product_name VARCHAR(30) NOT NULL, 
    price DECIMAL NOT NULL, /* How to validate that this is a decimal per homework instructions?*/
    stock INT NOT NULL DEFAULT 10, /* How to validate that this is a number per homework instructions?*/
    category_id INT, 
    FOREIGN KEY (category_id) REFERENCES category(id) ON DELETE SET NULL
);

CREATE TABLE Tag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    tag_name VARCHAR(30)
);

CREATE TABLE ProductTag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    product_id INT, 
    tag_id INT, 
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE SET NULL, 
    FOREIGN KEY (tag_id) REFERENCES tag(id) ON DELETE SET NULL
);

-- You'll need to execute association methods on your Sequelize models to create the following relationships between them:

        --  Product belongs to Category, as a category can have multiple products but a product can only belong to one category.

        -- Category has many Product models.

        -- Product belongs to many Tag models. Using the ProductTag through model, allow products to have multiple tags and tags to have many products.

        -- Tag belongs to many Product models.