SELECT description,
       SUM(total_price) AS total_revenue
FROM sales
GROUP BY description
ORDER BY total_revenue DESC
LIMIT 10;
