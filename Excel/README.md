# Quick-Commerce Sales Analytics — Excel Analysis

##  About the Project

This repository contains the **Excel analysis** component of my **Quick-Commerce Sales Analytics** project.

The project uses a **synthetic Quick-Commerce sales dataset** to simulate a real-world retail/e-commerce analytics scenario. Excel was used to clean, transform, analyze, and summarize the data to identify patterns in sales, customers, products, categories, regions, and profitability.

The complete project also includes **SQL and Python analysis** as separate components.

---

##  Final Analysis Workbook

The complete Excel analysis workbook is available on Google Drive:

 **[Open Final Analysis Workbook](https://drive.google.com/drive/folders/1Hs6Un_FjMjEbBL34xnvaBJuGpY-F-zfn?usp=drive_link)**

The workbook contains the complete analysis, calculations, KPIs, and business insights developed during the Excel stage.

---

#  Business Questions

The analysis was designed to answer questions such as:

- What are the total sales and profit?
- How do sales change month by month?
- Which products generate the highest sales?
- Which products generate the highest profit?
- Which categories perform well?
- Which customers contribute the most to sales?
- How do different regions perform?
- Which products have low or negative profitability?
- Which areas require further attention?

---

#  Dataset

The dataset is **synthetic** and was created specifically for learning, analysis, and portfolio purposes.

The analysis is based on four primary tables.

### Customers

Contains customer-related information:

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

Contains product-level transaction information:

- Order_ID
- Product_ID
- Quantity
- Discount
- Sales
- Profit

> **Dataset Note:** The dataset is completely synthetic. It does not contain real customer transactions, confidential information, or proprietary company data.



#  Tools & Excel Features

The analysis was performed using **Microsoft Excel**.

### Excel Features

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

# Analysis Performed

## 1. Sales Performance Analysis

Analyzed the overall sales performance using key business metrics such as:

- Total Sales
- Total Orders
- Total Quantity
- Average Order Value
- Monthly Sales
- Monthly Sales Growth

This provided an overview of the overall business performance and sales trends.


## 2. Customer Analysis

Customer-level analysis was performed to understand purchasing behavior and customer contribution.

The analysis included:

- Top customers by sales
- Number of orders placed
- Customer contribution to total sales
- High-value customers
- Customer purchasing patterns


## 3. Product Analysis

Products were analyzed based on both sales performance and profitability.

Key metrics included:

- Total Sales
- Quantity Sold
- Total Profit
- Profit Margin
- Product Ranking

The analysis also identified products with comparatively lower performance and products generating higher profits.


## 4. Category Analysis

Different product categories were compared based on:

- Total Sales
- Total Profit
- Profit Margin
- Contribution to overall sales

This analysis highlighted the difference between **sales performance and profitability**.



## 5. Regional Analysis

Regional performance was analyzed using:

- Regional Sales
- Regional Profit
- Number of Orders
- Contribution to Total Sales

This helped identify differences in business performance across regions.



## 6. Profitability Analysis

Profitability was one of the key areas of the analysis.

The analysis included:

- Total Sales
- Total Cost
- Total Profit
- Profit Margin
- Product-level Profit
- Category-level Profit
- Loss-making Products
- High-margin Products

This helped identify situations where strong sales performance did not necessarily result in strong profitability.



#  Key Findings

### Product Analysis

- **Most Profitable Product:** Colgate Orange Drink 500ml
- **Highest Profit Margin:** Amul Moong Dal Pack of 6
- Some products were identified as loss-making and require further investigation.

### Category Analysis

- **Highest Total Profit:** Beverages
- **Highest Profit Margin:** Beauty & Hygiene

### Overall Observation

One of the important findings from the analysis was that **high sales do not necessarily mean high profitability**.

Product cost, selling price, and discounts can significantly affect the final profit generated by a product.



#  Business Recommendations

Based on the analysis, the following areas can be considered for further business investigation:

1. Investigate the reasons behind loss-making products.
2. Review discounts applied to products with low profit margins.
3. Focus on products and categories maintaining healthy margins.
4. Analyze purchasing behavior of high-value customers.
5. Compare regional performance to identify lower-contributing regions.
6. Evaluate both sales and profitability before making product-level decisions.



# 📁 Excel Project Structure

```text
Excel/
│
├── Final_Analysis/
│   └── Quick_Commerce_Sales_Analysis.xlsx
│
├── Screenshots/
│   ├── sales_analysis.png
│   ├── customer_analysis.png
│   ├── product_analysis.png
│   └── profitability_analysis.png
│
└── README.md
```



#  What I Learned

Through this Excel analysis, I learned that business analysis should not rely on a single metric such as sales.

A product may generate high revenue but still have relatively low profitability because of product cost or discounts. Similarly, a category with lower sales can sometimes generate stronger margins.

Customer and regional analysis also provided a better understanding of where business revenue and profit are being generated.



#  Overall Project Flow

```text
Synthetic Dataset
       ↓
Excel Data Understanding & Cleaning
       ↓
Excel Analysis & KPI Calculation
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
Business Insights & Recommendations
       ↓
SQL Analysis
       ↓
Python Analysis
```



##  Project Details

Project: Quick-Commerce Sales Analytics
Analysis: Excel
Dataset: Synthetic
Tools: Microsoft Excel
Focus Areas: Sales, Customers, Products, Categories, Regions & Profitability
Additional Analysis: SQL & Python



##  Disclaimer

This project is created for **educational and portfolio purposes** using synthetic data.

It does not represent actual transactions, customers, financial records, or confidential information from any real company.
