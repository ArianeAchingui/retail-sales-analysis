SELECT country,
       SUM(total_price) AS total_revenue
FROM sales
GROUP BY country
ORDER BY total_revenue DESC;
