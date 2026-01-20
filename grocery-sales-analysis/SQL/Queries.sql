-- View sample data
SELECT * FROM sales_data LIMIT 10;

-- Total revenue
SELECT SUM(total_amount) AS total_revenue
FROM sales_data;

-- Total number of orders
SELECT COUNT(order_id) AS total_orders
FROM sales_data;

-- Sales by product category
SELECT product_category,
       SUM(total_amount) AS category_revenue
FROM sales_data
GROUP BY product_category
ORDER BY category_revenue DESC;

-- Top 5 selling products
SELECT product_name,
       SUM(quantity) AS total_quantity
FROM sales_data
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 5;

-- Monthly sales trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(total_amount) AS monthly_revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- Payment mode analysis
SELECT payment_mode,
       COUNT(*) AS transactions
FROM sales_data
GROUP BY payment_mode;

-- City wise sales
SELECT store_location,
       SUM(total_amount) AS revenue
FROM sales_data
GROUP BY store_location
ORDER BY revenue DESC;

-- Age group analysis
SELECT 
    CASE 
        WHEN customer_age < 18 THEN '<18'
        WHEN customer_age <= 30 THEN '18-30'
        WHEN customer_age <= 45 THEN '31-45'
        ELSE '46+'
    END AS age_group,
    SUM(total_amount) AS revenue
FROM sales_data
GROUP BY age_group;