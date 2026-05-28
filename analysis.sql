CREATE TABLE sales_data (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    category VARCHAR(50),
    amount DECIMAL(10,2),
    order_date DATE
);

SELECT 
    SUM(amount) AS total_revenue
FROM sales_data;

SELECT 
    category,
    SUM(amount) AS total_revenue
FROM sales_data
GROUP BY category
ORDER BY total_revenue DESC;

SELECT 
    customer_name,
    SUM(amount) AS total_spent
FROM sales_data
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 5;

SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(amount) AS monthly_revenue
FROM sales_data
GROUP BY month
ORDER BY month;
  
GROUP BY month
ORDER BY month;
