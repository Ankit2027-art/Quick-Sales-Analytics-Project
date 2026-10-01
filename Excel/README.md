# Quick-Commerce Sales Analytics — Excel Analysis

## About the Project

This is the Excel part of my **Quick-Commerce Sales Analytics** project.

I created a synthetic sales dataset to practice and understand how sales data can be analyzed in a real business scenario. In this stage, I used Excel to work with the data, calculate important KPIs, and find useful patterns related to customers, products, categories, regions, and profit.

The project will later be extended with **SQL and Python analysis**.

---

##  What I Wanted to Find

The main purpose of this analysis was to answer questions like:

- What are the total sales and profit?
- How are sales changing month by month?
- Which products are selling the most?
- Which products are generating more profit?
- Which categories are performing well?
- Which customers are contributing more to sales?
- How are different regions performing?
- Are there any products making a loss?
- Which areas need more attention?

---

## Dataset

The dataset is **synthetic** and was created for learning and portfolio purposes.

It is divided into four main tables.

### Customers

Customer information such as:

- Customer_ID
- Customer_Name
- Gender
- Age
- City
- State
- Region

### Products

Product-related details:

- Product_ID
- Product_Name
- Category
- Sub_Category
- Brand
- Cost_Price
- Selling_Price

### Orders

Order-level information:

- Order_ID
- Order_Date
- Customer_ID
- Payment_Method
- Order_Status

### Order_Details

Product-level details for each order:

- Order_ID
- Product_ID
- Quantity
- Discount
- Sales
- Profit

---

## Tools Used

For this part of the project, I mainly worked with **Microsoft Excel**.

Some of the Excel features and functions I used were:

- Excel Tables
- Sorting
- Filtering
- Conditional Formatting
- Pivot Tables
- Data Validation
- Lookup Functions
- Aggregation Functions

### Excel Functions

```text
SUM
SUMIFS
COUNTIFS
AVERAGEIFS
XLOOKUP
INDEX
MATCH
IFERROR
UNIQUE
SORT
FILTER
TEXT
EOMONTH
```

---

# Analysis

## 1. Sales Performance

I started with the overall sales performance and calculated basic KPIs such as:

- Total Sales
- Total Orders
- Total Quantity
- Average Order Value
- Monthly Sales
- Monthly Sales Growth

This helped me get a basic idea of the overall business performance.

---

## 2. Customer Analysis

Customer data was analyzed to understand purchasing behavior.

I looked at:

- Top customers by sales
- Number of orders placed by customers
- Customer contribution to total sales
- High-value customers
- Customer purchasing patterns

---

## 3. Product Analysis

For products, I compared sales and profitability using:

- Total Sales
- Quantity Sold
- Total Profit
- Profit Margin
- Product Ranking

I also checked which products were performing poorly and which ones were generating higher profits.

---

## 4. Category Analysis

I compared different categories based on:

- Sales
- Profit
- Profit Margin
- Contribution to overall sales

This helped in understanding that a category with higher sales is not necessarily the category with the highest profit margin.

---

## 5. Regional Analysis

I also compared sales performance across different regions.

The analysis included:

- Regional Sales
- Regional Profit
- Number of Orders
- Contribution to Total Sales

This gave a better understanding of how different regions were performing.

---

## Profitability Analysis

Profitability was one of the important parts of the analysis.

I calculated and compared:

- Total Sales
- Total Cost
- Total Profit
- Profit Margin
- Product-level Profit
- Category-level Profit
- Loss-making Products
- High-margin Products

This helped identify products and categories where sales and profit were different from each other.

---


### Product Analysis

- **Most Profitable Product:** Colgate Orange Drink 500ml
- **Highest Profit Margin:** Amul Moong Dal Pack of 6
- Some products were found to be loss-making and need further analysis.

### Category Analysis

- **Highest Total Profit:** Beverages
- **Highest Profit Margin:** Beauty & Hygiene

One thing I noticed from the analysis is that **high sales do not always mean high profitability**. Discounts, product costs, and selling prices can make a significant difference.

---

# Excel Files

```text
Excel/
│
├── Quick_Commerce_Sales_Analysis.xlsx
├── README.md
│
└── screenshots/
    ├── sales_analysis.png
    ├── customer_analysis.png
    ├── product_analysis.png
    └── profitability_analysis.png
```

---

# What I Learned from the Analysis

While working on the Excel analysis, I found that looking only at sales is not enough.

For example, a product can have good sales but still generate less profit because of its cost or discount. Similarly, some categories may have lower sales but better profit margins.

Customer and regional analysis also helped in understanding where most of the business is coming from.

---

# Possible Business Actions

Based on the analysis, some areas that can be looked into further are:

1. Check the reason behind loss-making products.
2. Review discounts on products with low profit margins.
3. Focus on products and categories that maintain healthy margins.
4. Identify high-value customers and understand their buying patterns.
5. Compare regional performance to find areas with lower contribution.
6. Consider both sales and profit before making product-level decisions.

---

## Dataset Note

The dataset used in this project is **synthetic**.

It was created only for learning, analysis practice, and portfolio purposes. It does not contain real customer transactions or confidential company data.

---

# Project Flow

```text
Synthetic Dataset
       ↓
Excel Data Cleaning
       ↓
Excel Analysis
       ↓
Sales Analysis
       ↓
Customer Analysis
       ↓
Product & Category Analysis
       ↓
Regional Analysis
       ↓
Profitability Analysis
       ↓
Insights & Recommendations
       ↓
SQL Analysis
       ↓
Python Analysis
```

---

## Project Details

**Project:** Quick-Commerce Sales Analytics  
**Current Analysis:** Excel  
**Dataset:** Synthetic  
**Main Areas:** Sales, Customers, Products, Regions & Profitability