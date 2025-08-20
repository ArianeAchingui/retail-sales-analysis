# retail-sales-analysis

## Data Cleaning Process using Excel
## Data Cleaning Process

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

8. Inserted a new column "total_price"

