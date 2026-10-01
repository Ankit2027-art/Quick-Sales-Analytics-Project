#  Quick-Commerce Sales Analytics — SQL Analysis

##  Overview

This section contains the **SQL-based analysis** of the Quick-Commerce Sales Analytics project.

The analysis focuses on converting business questions into structured SQL queries and extracting meaningful insights related to **sales, customers, products, categories, regions, and profitability**.

The project uses a relational database structure consisting of customer, product, order, and order-detail data.

The SQL analysis is part of an end-to-end analytics project that also includes **Excel and Python analysis**.


#  Objectives

The main objectives of the SQL analysis were to:

- Understand the relational structure of the datasets
- Perform data quality checks
- Analyze overall business performance
- Analyze customer behavior
- Analyze product and category performance
- Compare regional performance
- Analyze profitability
- Solve practical business questions using SQL
- Apply advanced SQL techniques for deeper analysis



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

- `Customer_ID`
- `Customer_Name`
- `Gender`
- `Age`
- `City`
- `State`
- `Region`

### Products

Contains product information:

- `Product_ID`
- `Product_Name`
- `Category`
- `Sub_Category`
- `Brand`
- `Cost_Price`
- `Selling_Price`

### Orders

Contains order-level information:

- `Order_ID`
- `Order_Date`
- `Customer_ID`
- `Payment_Method`
- `Order_Status`

### Order_Details

Contains transaction-level information:

- `Order_ID`
- `Product_ID`
- `Quantity`
- `Discount`
- `Sales`
- `Profit`


# SQL Concepts Used

The analysis covers fundamental as well as advanced SQL concepts.

## Basic SQL

- `SELECT`
- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `HAVING`
- `DISTINCT`
- `LIMIT`

## Aggregate Functions

- `SUM()`
- `AVG()`
- `COUNT()`
- `MIN()`
- `MAX()`

## Joins

- `INNER JOIN`
- `LEFT JOIN`

## Conditional Logic

- `CASE`
- Conditional aggregation

## NULL Handling

- `IS NULL`
- `IS NOT NULL`
- `COALESCE()`

## Date Analysis

- Date filtering
- Date extraction
- Monthly analysis
- Year-based analysis

## String Functions

- String manipulation
- Text filtering
- Pattern matching

## Advanced SQL

- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- `RANK()`
- `DENSE_RANK()`
- `ROW_NUMBER()`
- `LAG()`
- Running totals


#  Analysis Performed

## 1. Data Quality Checks

Performed checks for:

- NULL values
- Duplicate records
- Data consistency
- Key relationships
- Invalid or unexpected values

These checks helped validate the data before performing business analysis.



## 2. Overall Sales Analysis

Analyzed key business metrics including:

- Total Sales
- Total Orders
- Total Quantity
- Average Order Value
- Total Profit
- Profitability



## 3. Customer Analysis

Analyzed customer-level performance to identify:

- Top customers by sales
- Customer order frequency
- Customer contribution to revenue
- High-value customers
- Customer purchasing patterns



## 4. Product Analysis

Analyzed products based on:

- Total Sales
- Quantity Sold
- Product Profit
- Product Rankings
- High-performing products
- Low-performing products


## 5. Category Analysis

Compared product categories using:

- Sales
- Quantity
- Profit
- Profitability
- Contribution to overall performance



## 6. Regional Analysis

Analyzed regional performance using:

- Regional Sales
- Regional Profit
- Order Volume
- Regional Contribution



## 7. Profitability Analysis

Analyzed:

- Sales
- Cost
- Profit
- Profit Margin
- Product-level profitability
- Category-level profitability



# Advanced Business Analysis

Advanced SQL techniques were used to answer practical business questions such as:

- Which products rank highest by sales?
- Which customers contribute the most revenue?
- How does sales performance change over time?
- Which products perform best within each category?
- Which regions generate higher sales?
- How does a product compare with other products in its category?
- What are the top-performing products within each region?

These queries demonstrate the application of SQL for **business-oriented data analysis**, rather than only basic data retrieval.



#  SQL Project Structure

```text
SQL/
│---Datsets/ON_Drive
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

> The datasets used for the SQL analysis are maintained separately in the project's Google Drive repository.



#  Business Value

The SQL analysis converts transactional data into structured business information that can be used to understand:

- Revenue performance
- Customer contribution
- Product performance
- Category performance
- Regional trends
- Profitability
- Business opportunities

This demonstrates how SQL can be used to transform raw relational data into information that supports business analysis and decision-making.



#  Dataset

The SQL analysis uses a **synthetic Quick-Commerce Sales Dataset**.

The complete datasets are maintained separately because of file-size considerations.

 **[Access Dataset & Supporting Files]([YOUR_GOOGLE_DRIVE_LINK](https://drive.google.com/drive/folders/1Hs6Un_FjMjEbBL34xnvaBJuGpY-F-zfn?usp=drive_link))**

**Dataset Type:** Synthetic


#  Key Learning

Through this SQL analysis, I gained practical experience in:

- Writing business-oriented SQL queries
- Working with relational datasets
- Performing data quality checks
- Joining multiple tables
- Using aggregate functions
- Performing grouped analysis
- Handling NULL values
- Working with dates
- Using subqueries and CTEs
- Applying window functions
- Ranking business entities
- Converting business questions into SQL solutions



#  Overall Project Flow

```text
Synthetic Dataset
       ↓
Excel Analysis
       ↓
SQL Database
       ↓
Data Quality Checks
       ↓
Business Queries
       ↓
Customer / Product / Category Analysis
       ↓
Regional & Profitability Analysis
       ↓
Advanced SQL Analysis
       ↓
Business Insights
       ↓
Python Analysis
```



##  Project Details
Project: Quick-Commerce Sales Analytics
Analysis: SQL
Dataset: Synthetic
Focus: Business & Sales Analytics
Core Areas: Sales, Customers, Products, Categories, Regions & Profitability
Advanced Topics: CTEs, Subqueries, Window Functions & Ranking

## Disclaimer

This project was created for **educational and portfolio purposes** using synthetic data.

It does not contain real customer transactions, confidential company information, or proprietary business data.
