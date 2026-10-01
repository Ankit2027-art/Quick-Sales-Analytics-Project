#  Quick-Commerce Sales Analytics

##  Project Overview

**Quick-Commerce Sales Analytics** is an end-to-end data analytics portfolio project designed to analyze a simulated quick-commerce business from multiple analytical perspectives.

The project uses a **synthetic sales dataset** and applies three major analytics tools:

-  **Microsoft Excel** — Data analysis & business reporting
-  **SQL** — Relational data analysis & business queries
-  **Python** — Data cleaning, EDA & visualization

The goal of the project is to transform raw transactional data into meaningful business insights related to **sales, customers, products, categories, regions, and profitability**.

> **Note:** The dataset used in this project is synthetic and was created for educational and portfolio purposes. It does not represent real company transactions or confidential business data.



#  Business Problem

Quick-commerce businesses generate large amounts of transactional data involving customers, products, orders, discounts, and profitability.

The objective of this project is to analyze this data and answer practical business questions such as:

- How much revenue and profit is being generated?
- How are sales changing over time?
- Which products generate the highest sales?
- Which products generate the highest profit?
- Which categories perform best?
- Who are the highest-value customers?
- Which regions contribute the most to sales?
- Which products or categories have low profitability?
- How do sales performance and profitability differ?



#  Dataset

The project uses a **synthetic Quick-Commerce sales dataset** consisting of four core tables.

###  Customers

Contains customer information:

- Customer_ID
- Customer_Name
- Gender
- Age
- City
- State
- Region

###  Products

Contains product information:

- Product_ID
- Product_Name
- Category
- Sub_Category
- Brand
- Cost_Price
- Selling_Price

###  Orders

Contains order-level information:

- Order_ID
- Order_Date
- Customer_ID
- Payment_Method
- Order_Status

###  Order_Details

Contains product-level transaction information:

- Order_ID
- Product_ID
- Quantity
- Discount
- Sales
- Profit


#  Data Relationships

```text
Customers
    │
    │ Customer_ID
    ↓
Orders
    │
    │ Order_ID
    ↓
Order_Details
    │
    │ Product_ID
    ↓
Products
```
-

#  Tools & Technologies

##  Excel

Used for:

- Data understanding
- Data cleaning
- KPI calculation
- Pivot Tables
- Business analysis
- Sales analysis
- Customer analysis
- Product analysis
- Category analysis
- Regional analysis
- Profitability analysis

### Excel Functions Used

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



##  SQL

Used for:

- Database analysis
- Data quality checks
- Table joins
- Business queries
- Customer analysis
- Product analysis
- Category analysis
- Regional analysis
- Profitability analysis
- Advanced business analysis

### SQL Concepts Used

```text
SELECT
WHERE
ORDER BY
GROUP BY
HAVING
DISTINCT
LIMIT
SUM()
AVG()
COUNT()
MIN()
MAX()
INNER JOIN
LEFT JOIN
CASE
COALESCE()
Subqueries
CTEs
Window Functions
RANK()
DENSE_RANK()
ROW_NUMBER()
LAG()
Running Totals
```

---

##  Python

### Development Environment

- Visual Studio Code
- Jupyter Notebook

### Libraries

- NumPy
- Pandas
- Matplotlib

Python was used for:

- Data loading
- Data understanding
- Data cleaning
- Data preparation
- Feature engineering
- Exploratory Data Analysis
- Business analysis
- Data visualization
- Advanced analysis
- Insight generation



#  Project Workflow

```text
                 Synthetic Dataset
                        │
                        ↓
              Data Understanding
                        │
          ┌─────────────┼─────────────┐
          ↓             ↓             ↓
       Excel           SQL          Python
          │             │             │
          ↓             ↓             ↓
      Cleaning      Quality Checks   Cleaning
          │             │             │
          ↓             ↓             ↓
       Analysis     Business Queries   EDA
          │             │             │
          ↓             ↓             ↓
       KPIs          Advanced SQL   Visualization
          │             │             │
          └─────────────┼─────────────┘
                        ↓
                Business Insights
                        ↓
               Recommendations
```



#  Excel Analysis

The Excel stage focused on understanding the business using spreadsheet-based analysis.

### Key Areas

- Sales Performance
- Monthly Sales
- Customer Analysis
- Product Analysis
- Category Analysis
- Regional Analysis
- Profitability Analysis

 **Excel folder:** `Excel/`

 **[View Excel Analysis →]([Excel/README.md](https://drive.google.com/drive/folders/1Hs6Un_FjMjEbBL34xnvaBJuGpY-F-zfn?usp=drive_link))**



#  SQL Analysis

The SQL stage focused on converting business questions into structured queries.

### Key Areas

- Data Quality Checks
- Overall Sales Analysis
- Customer Analysis
- Product Analysis
- Category Analysis
- Regional Analysis
- Profitability Analysis
- Advanced SQL Analysis

 **SQL folder:** `SQL/`

**[View SQL Analysis →](SQL/README.md)**



#  Python Analysis

The Python stage focused on programmatic data analysis and exploratory data analysis.

### Workflow

```text
Data Loading
      ↓
Data Understanding
      ↓
Data Cleaning
      ↓
Data Preparation
      ↓
Feature Engineering
      ↓
EDA
      ↓
Visualization
      ↓
Advanced Analysis
      ↓
Final Insights
```

### Key Areas

- Overall Sales Analysis
- Monthly Sales Analysis
- Customer Analysis
- Product Analysis
- Category Analysis
- Regional Analysis
- Profitability Analysis
- Data Visualization

**Python folder:** `Python/`

 **[View Python Analysis →](Python/README.md)**



#  Key Business Areas

The project analyzes the following major business dimensions:

```
Sales: Revenue, orders, quantity & AOV
Customers: Customer contribution & high-value customers
Products: Sales, quantity & profitability
Categories: Category sales & profit
Regions: Regional sales & profit
Time: Monthly sales trends
Profitability: Cost, profit & profit margin

```

#  Key Insights

The analysis demonstrates that:

- High sales do not necessarily mean high profitability.
- Product cost and discounts can significantly affect profit.
- Customer-level analysis helps identify high-value customers.
- Regional analysis helps understand differences in business contribution.
- Category-level analysis can reveal differences between revenue and profit performance.
- Combining sales and profitability metrics provides a more complete view of business performance.

> Specific numerical findings and detailed analysis are available inside the respective Excel, SQL, and Python sections.


#  Repository Structure

```text
Quick-Commerce-Sales-Analytics/
│
├── Excel/
│   ├── Screenshots/
│   │   ├── sales_analysis.png
│   │   ├── customer_analysis.png
│   │   ├── product_analysis.png
│   │   └── profitability_analysis.png
│   │
│   └── README.md
│
├── SQL/
│   ├── Analysis/
│   │   ├── Data_Quality_Checks.sql
│   │   ├── Overall_Sales_Analysis.sql
│   │   ├── Customer_Analysis.sql
│   │   ├── Product_Analysis.sql
│   │   ├── Category_Analysis.sql
│   │   ├── Regional_Analysis.sql
│   │   ├── Profitability_Analysis.sql
│   │   └── Advanced_Analysis.sql
│   │
│   └── README.md
│
├── Python/
│   ├── notebooks/
│   │   ├── 01_Data_Loading.ipynb
│   │   ├── 02_Data_Understanding.ipynb
│   │   ├── 03_Data_Cleaning.ipynb
│   │   ├── 04_Data_Preparation.ipynb
│   │   ├── 05_Feature_Engineering.ipynb
│   │   ├── 06_EDA.ipynb
│   │   ├── 07_Visualization.ipynb
│   │   └── 08_Advanced_Analysis.ipynb
│   │
│   ├── outputs/
│   │   └── charts/
│   │
│   ├── README.md
│   └── requirements.txt
│
├── README.md
└── .gitignore
```



#  Dataset & Supporting Files

The complete datasets, Excel workbook, and processed Python datasets are maintained separately on Google Drive due to file-size considerations.

 **[Access Complete Dataset & Supporting Files →]([GOOGLE_DRIVE_LINK](https://drive.google.com/drive/folders/1Hs6Un_FjMjEbBL34xnvaBJuGpY-F-zfn?usp=drive_link))**

The Drive repository contains:

```text
Quick-Commerce-Sales-Analytics-Datasets/
│
├── Original_Dataset/
│
├── Excel/
│   └── Final_Analysis.xlsx
│
├── SQL/
│
└── Python/
    └── Outputs/
```

---

#  Skills Demonstrated

This project demonstrates practical experience with:

### Data Analytics

- Data Cleaning
- Data Preparation
- Exploratory Data Analysis
- KPI Development
- Business Analysis
- Data Visualization
- Insight Generation

### Excel

- Pivot Tables
- Lookup Functions
- Conditional Analysis
- Aggregation Functions
- Business Reporting

### SQL

- Joins
- Aggregations
- CTEs
- Subqueries
- Window Functions
- Ranking
- Date Analysis
- Business Queries

### Python

- NumPy
- Pandas
- Matplotlib
- Jupyter Notebook
- EDA
- Feature Engineering
- Data Visualization



#  Future Scope

Possible future extensions include:

- Power BI dashboard development
- Advanced customer segmentation
- More detailed profitability analysis
- Additional business KPIs
- Automated reporting

---

# ⚠️ Disclaimer

This project was created for **educational and portfolio purposes** using synthetic data.

It does not contain real customer transactions, confidential business information, or proprietary data from any real company.
