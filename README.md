# retail-sales-analysis

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

## Optional Insights (if included in notebook)

- **Top Products:** Identify products generating the most revenue  
- **Key Customers:** Rank customers by total spend to pinpoint the most valuable clients

---

## Summary of Insights

- Sales fluctuate seasonally, which helps with planning campaigns and stock  
- The UK is the primary market, with potential for international growth  
- Initial exploration confirms the dataset is clean and ready for analysis

