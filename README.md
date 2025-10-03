# retail-sales-analysis

## Project Overview
This project explores and analyzes the **Online Retail II** dataset to understand sales performance, customer behavior, and product trends.  
The goal is to build a clear, end-to-end data pipeline:

- **Excel** – Clean raw transactional data (handle missing values, remove duplicates, returns, format dates, etc).  
- **Python (EDA)** – Explore sales, customers, products, and revenue trends through data visualizations.  
- **SQL (SQLite)** – Validate insights with queries, aggregate metrics, and prepare the dataset for reporting.  
- **Power BI** – Design an interactive dashboard to communicate insights visually.

By combining Excel, Python, SQL, and Power BI, this project demonstrates how raw data can be transformed into **actionable business intelligence**, highlighting key revenue drivers and customer segments.


## Data Cleaning Process using Excel

The dataset (Online Retail II from UCI Machine Learning Repository) was cleaned in Excel before analysis. Key steps included:

1. **Missing Values**

   * Removed rows with blank `InvoiceNo`.
   * Retained rows with missing `CustomerID`, flagged them as guest checkouts.

2. **Checked and fixed Data Types**

   * Converted `invoice_date` to Date/Time format.
   * Stored `Customer_id` and stock\_code as Text (unique identifier).
   * Set `Quantity` and `Price` as number.

3. **Deleted Negative Quantities (Returns)**

4. **Zero Prices**

   * Filtered transactions with `Price = 0` and deleted them.

5. **Country = "Unspecified"**

   * Retained rows where the country was not specified

6. **Duplicates**

   * Removed duplicate transactions.

7. **Output**

   * Saved cleaned dataset to: `data/clean/online_retail_sales_clean.xlsx`.

8. **Inserted a new column "total_price"**


# Exploratory Data Analysis (EDA) — Online Retail II

This project explores the **Online Retail II dataset**, turning raw transactional data into actionable insights about sales patterns, customer behavior, and product performance.

---

## 1. Setting Up Tools

The analysis uses Python libraries:

- **pandas** & **numpy** — data handling and calculations  
- **matplotlib** & **seaborn** — visualizations  
- **openpyxl** — reading Excel files  

These tools make it easy to explore the dataset and produce clear, informative charts.

---

## 2. Loading and Preparing Data

The cleaned dataset is loaded into Python. During Excel cleaning:

- Missing values were addressed  
- Transactions with `TotalPrice = 0` (returns) were removed  
- Dates were formatted correctly  

This ensures the data reflects actual sales and is ready for analysis.

---

## 3. Dataset Overview

We inspect the first few rows, column types, and dataset size. Key fields:

- `invoice_date`  
- `customer_id`  
- `country`  
- `description` (product)  
- `quantity`  
- `unit_price`  
- `total_price` (represents revenue)  

This overview helps understand the dataset structure before deeper analysis.

---

## 4. Basic Explorations

Initial exploration provides insight into the dataset:

- **Summary statistics** for numeric columns (`df.describe()`)  
- **Unique value counts** per column (`df.nunique()`)  

These checks help detect anomalies, outliers, and patterns.

---

## 5. Revenue by Country

Total revenue is aggregated by country to identify top markets. The UK dominates, but smaller contributions from other countries suggest opportunities for expansion.

---

## 6. Monthly Revenue Trend

Monthly revenue is calculated and visualized. Since `invoice_date` was already formatted in Excel, we can directly observe trends and seasonality.  

This shows high-sales months, guiding promotions and inventory planning.

---
## 7. Top Customers
- **Key Customers:** Rank customers by total spend to pinpoint the most valuable clients

---

## Summary of Insights

- Sales fluctuate seasonally, which helps with planning campaigns and stock  
- The UK is the primary market, with potential for international growth  
- Initial exploration confirms the dataset is clean and ready for analysis


---

## 1.Validate Key Findings Analyze Data Using SQL

After cleaning the dataset in Excel and exploring it in Python, SQL was used to run targeted queries on the data stored in SQLite.
The goal was to validate earlier findings, answer business questions, and prepare for Power BI visualizations.

Quick Overview  
A first pass at the data provided:  
- Total number of transactions and unique customers (The dataset has 524875 rows, with 4339 unique customers).  
- Total revenue (10642128.8) 

---

# 2. Revenue by Country
Total revenue was aggregated by country to identify top markets.  
The UK generated the highest sales, followed by other smaller markets, suggesting room for growth.

---

# 3. Top 10 Products by Revenue  
Top 10 products by revenue were extracted, confirming that **Dotcom Postage** produced the highest sales.

---

# 5.Top Customers  
Customers were ranked by total spend to spot high-value clients, helping guide retention and loyalty strategies.

---

# 6. Closing Note  
These SQL queries confirmed the findings from Python EDA, ensuring consistency across tools and preparing the dataset for use in Power BI.


# Power BI Visualizations

- **Purpose:** Transform cleaned transactional data and SQL insights into charts and interactive dashboard for business understanding.  

- **Files:** The `.pbix` Power BI file is stored in `PowerBI/`.  

- **Key Insights Visualized:**  
  - **Revenue by Country:** Highlights top-performing markets. The UK dominates, with other countries showing opportunities for expansion.  
  - **Monthly Revenue Trend:** Shows seasonality and high-sales months, guiding promotions and inventory planning.  
  - **Top Products by Revenue:** Focused on the top 10 products driving the most sales, helping prioritize stock and marketing efforts.  

- **Notes:**  
  - Filters applied to highlight top-performing products.  
  - Charts include clear titles and formatted axes for easy interpretation.  

  

