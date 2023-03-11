-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- You'll need to execute association methods on your Sequelize models to create the following relationships between them:

        --  Product belongs to Category, as a category can have multiple products but a product can only belong to one category.

        -- Category has many Product models.

        -- Product belongs to many Tag models. Using the ProductTag through model, allow products to have multiple tags and tags to have many products.

        -- Tag belongs to many Product models.