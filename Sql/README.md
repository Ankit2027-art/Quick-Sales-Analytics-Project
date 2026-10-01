#  Quick-Commerce Sales Analytics — SQL Analysis

##  Overview

This section contains the **SQL-based analysis** of the Quick-Commerce Sales Analytics project.

The SQL analysis focuses on transforming business questions into structured database queries and extracting meaningful insights related to sales, customers, products, regions, and profitability.

The analysis was performed using a relational database containing customer, product, order, and order-detail data.

---

##  Objectives

The main objectives of the SQL analysis were to:

- Understand the relational structure of the datasets
- Perform data quality checks
- Analyze overall business performance
- Analyze customer behavior
- Analyze product performance
- Analyze category performance
- Analyze regional performance
- Analyze profitability
- Solve real-world business questions using SQL
- Apply advanced SQL techniques for deeper analysis

---

#  Database Structure

The SQL analysis uses four core tables:

```text
Customers
    │
    └──────< Orders
                 │
                 └──────< Order_Details >────── Products
```

### Customers

Contains customer information:

- Customer_ID
- Customer_Name
- Gender
- Age
- City
- State
- Region

### Products

Contains product information:

- Product_ID
- Product_Name
- Category
- Sub_Category
- Brand
- Cost_Price
- Selling_Price

### Orders

Contains order-level information:

- Order_ID
- Order_Date
- Customer_ID
- Payment_Method
- Order_Status

### Order_Details

Contains transaction-level information:

- Order_ID
- Product_ID
- Quantity
- Discount
- Sales
- Profit

---

#  SQL Concepts Used

The analysis covers both fundamental and advanced SQL concepts.

### Basic SQL

- `SELECT`
- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `HAVING`
- `DISTINCT`
- `LIMIT`

### Aggregate Functions

- `SUM()`
- `AVG()`
- `COUNT()`
- `MIN()`
- `MAX()`

### Joins

- `INNER JOIN`
- `LEFT JOIN`

### Conditional Logic

- `CASE`
- Conditional aggregation

### NULL Handling

- `IS NULL`
- `IS NOT NULL`
- `COALESCE()`

### Date Analysis

- Date extraction
- Monthly analysis
- Year-based analysis
- Date filtering

### String Functions

- String manipulation
- Text filtering
- Pattern matching

### Advanced SQL

- Subqueries
- CTEs
- Window Functions
- `RANK()`
- `DENSE_RANK()`
- `ROW_NUMBER()`
- `LAG()`
- Running totals

---

#  Analysis Performed

## 1. Data Quality Checks

Performed checks for:

- NULL values
- Duplicate records
- Data consistency
- Key relationships
- Invalid or unexpected values

---

## 2. Overall Sales Analysis

Analyzed:

- Total Sales
- Total Orders
- Total Quantity
- Average Order Value
- Total Profit
- Profitability

---

## 3. Customer Analysis

Identified:

- Top customers by sales
- Customer order frequency
- Customer contribution
- High-value customers
- Customers with specific purchasing patterns

---

## 4. Product Analysis

Analyzed:

- Top-selling products
- Product sales
- Quantity sold
- Product profit
- Product rankings
- Low-performing products

---

## 5. Category Analysis

Compared categories based on:

- Sales
- Quantity
- Profit
- Profitability

---

## 6. Regional Analysis

Analyzed:

- Regional sales
- Regional profit
- Regional order volume
- Regional contribution

---

## 7. Profitability Analysis

Analyzed:

- Sales
- Cost
- Profit
- Profit Margin
- Product profitability
- Category profitability

---

#  Advanced Business Analysis

Advanced SQL techniques were used to answer questions such as:

- Which products rank highest by sales?
- Which customers contribute the most revenue?
- How does sales performance change over time?
- Which products perform best within each category?
- Which regions generate the highest sales?
- How does a product compare with other products in its category?
- What are the top-performing products within each region?

These analyses demonstrate the practical application of SQL beyond basic data retrieval.

---

#  SQL Project Structure

```text
SQL/
│
├── Dataset/
│
├── Analysis/
│   ├── Data_Quality_Checks.sql
│   ├── Overall_Sales_Analysis.sql
│   ├── Customer_Analysis.sql
│   ├── Product_Analysis.sql
│   ├── Category_Analysis.sql
│   ├── Regional_Analysis.sql
│   ├── Profitability_Analysis.sql
│   └── Advanced_Analysis.sql
│
└── README.md
```

> The SQL files are organized according to the business analysis performed in the project.

---

#  Business Value

The SQL analysis converts raw transactional data into structured business information that can be used to understand:

- Revenue performance
- Customer contribution
- Product performance
- Regional trends
- Profitability
- Business opportunities

The analysis demonstrates how SQL can be used to answer practical business questions from relational data.

---

## Dataset

The complete dataset is maintained separately due to file-size considerations.

**Dataset Type:** Synthetic Quick-Commerce Sales Dataset

---

##  Disclaimer

This project uses **synthetic data** created for educational and portfolio purposes.

It does not contain real customer transactions, confidential company information, or proprietary business data.