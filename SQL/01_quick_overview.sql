SELECT COUNT(*) AS total_rows, COUNT(DISTINCT customer_id) AS unique_customers
FROM sales;
---
SELECT SUM(total_price) AS total_revenue
FROM sales;