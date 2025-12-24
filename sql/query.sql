CREATE TABLE sales(
  order_id VARCHAR(10),
  order_date DATE,
  customer_id VARCHAR(10),
  gender VARCHAR(10),
  age INT,
  product_category VARCHAR(50),
  product_name VARCHAR(100),
  quantity INT,
  unit_price INT,
  total_amount INT,
  payment_method VARCHAR(20),
  order_status VARCHAR(20),
  delivery_status VARCHAR(20),
  country VARCHAR(20),
  city VARCHAR (50)
);

-- verifying data
SELECT * FROM sales LIMIT 5;

-- 1. Find the total revenue generated from all orders:
SELECT SUM(total_amount) AS total_revenue
FROM sales;

-- 2. Display total revenue month-wise: 
SELECT EXTRACT (MONTH FROM order_date) AS month,
SUM(total_amount) AS month_wise_revenue
FROM sales 
GROUP BY month
ORDER BY month;

-- 3. Category-wise revenue:
SELECT product_category, SUM(total_amount) AS category_wise_revenue
FROM sales 
GROUP BY product_category;

-- 4. Payment method usage:
SELECT payment_method,
COUNT (*) AS total_orders
FROM sales
GROUP BY payment_method;

-- 5. City-wise sales count:
SELECT city,
COUNT (*) AS city_wise_sales
FROM sales
GROUP BY city
ORDER BY city ASC; 

-- 6. Cancelled orders count:
SELECT COUNT (*) AS cancelled_orders
FROM sales
WHERE order_status='Cancelled';

-- 7. Average order value:
SELECT ROUND(AVG(total_amount)) AS avg_order_value
FROM sales;

-- 8. Repeated customer count:
SELECT customer_id,
COUNT (*) AS repeated_customers
FROM sales
GROUP BY customer_id
HAVING COUNT(*)>1;

-- 9. Delivered v/s Not delivered count:
SELECT delivery_status,
COUNT (*) AS order_count
FROM sales
GROUP BY delivery_status;

-- 10. Top 3 cities with highest sales
SELECT city,
SUM(total_amount) AS total_sales
FROM sales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 3;

-- 11. Month with highest total revenue:
SELECT EXTRACT(MONTH FROM order_date) AS month,
SUM(total_amount) AS total_revenue
FROM sales
GROUP BY month
ORDER BY total_revenue DESC
LIMIT 1;









