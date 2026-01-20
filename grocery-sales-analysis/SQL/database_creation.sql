--Create database
CREATE DATABASE grocery_sales_db;

-- Use the database
USE grocery_sales_db;

-- Create sales table
CREATE TABLE sales_data (
    order_id VARCHAR(10),
    order_date DATE,
    customer_id VARCHAR(10),
    customer_gender VARCHAR(10),
    customer_age INT,
    product_category VARCHAR(50),
    product_name VARCHAR(50),
    quantity INT,
    unit_price INT,
    total_amount INT,
    payment_mode VARCHAR(20),
    store_location VARCHAR(50)
);