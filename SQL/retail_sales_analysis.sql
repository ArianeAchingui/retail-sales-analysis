--1. Total Sales
SELECT 
     SUM(sales_amount) AS total_sales
FROM retail_sales;

--2. Number of Transactions
SELECT 
      COUNT(DISTINCT invoice_no) AS number_of_transactions
FROM retail_sales;

--3. Sales by country
SELECT 
       country,
       SUM(sales_amount) AS total_sales
FROM retail_sales
GROUP BY country
ORDER BY total_sales DESC;

--4. Sales change by month
SELECT 
       strftime('%Y-%m',invoice_date) AS sales_month,
       SUM(sales_amount) AS total_sales
FROM retail_sales
GROUP BY sales_month
ORDER BY sales_month ASC;

--5. Top 10 Products by sales
SELECT 
      stock_code,
      description, 
	  SUM(sales_amount) AS total_sales
FROM retail_sales
GROUP BY stock_code, description 
ORDER BY total_sales DESC
LIMIT 10;

--6. Top Customers by sales
SELECT 
     customer_id,
	 SUM(sales_amount) AS total_sales
FROM retail_sales
WHERE customer_id IS NOT NULL
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT 10;
	 
--7. Calculate month-over-month sales by comparing each month's sales
-- with the previous month's sales using a CTE and LAG().

WITH monthly_sales AS (
    SELECT
        strftime('%Y-%m', invoice_date) AS sales_month,
        SUM(sales_amount) AS total_sales
    FROM retail_sales
    GROUP BY sales_month
)

SELECT
    sales_month,
    total_sales,
    LAG(total_sales) OVER (ORDER BY sales_month) AS previous_month_sales
FROM monthly_sales
ORDER BY sales_month;

--8. Top 3 products by country using DENSE_RANK()
WITH product_country_sales AS (
    SELECT
        country,
        stock_code,
        description,
        SUM(sales_amount) AS total_sales
    FROM retail_sales
    GROUP BY country, stock_code, description
),

ranked_products AS (
    SELECT
        country,
        stock_code,
        description,
        total_sales,
        DENSE_RANK() OVER (
            PARTITION BY country
            ORDER BY total_sales DESC
        ) AS product_rank
    FROM product_country_sales
)

SELECT
    country,
    stock_code,
    description,
    total_sales,
    product_rank
FROM ranked_products
WHERE product_rank <= 3
ORDER BY country, product_rank, total_sales DESC;