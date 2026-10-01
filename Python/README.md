# Quick-Commerce Sales Analytics — Python Analysis

## Overview

This section contains the **Python-based analysis** of the Quick-Commerce Sales Analytics project.

The analysis was performed using **Python, NumPy, Pandas, and Matplotlib** to explore sales performance, customer behavior, product performance, regional trends, and profitability.

The Python analysis builds on the business understanding developed during the Excel and SQL stages of the project.

---

## bjectives

The main objectives of the Python analysis were to:

- Understand the structure and characteristics of the sales data
- Validate and prepare datasets for analysis
- Perform data cleaning and preparation
- Create derived business metrics
- Analyze overall sales performance
- Analyze monthly sales trends
- Identify high-value customers
- Analyze product and category performance
- Compare regional performance
- Perform exploratory data analysis (EDA)
- Create meaningful business visualizations
- Extract actionable business insights

---

## Dataset

The project uses a **synthetic Quick-Commerce dataset** created for educational and portfolio purposes.

The Python analysis uses four core datasets:

### Customers
Contains customer information such as:

- Customer ID
- Customer Name
- Gender
- Age
- City
- State
- Region

### Products
Contains product information such as:

- Product ID
- Product Name
- Category
- Sub-Category
- Brand
- Cost Price
- Selling Price

### Orders
Contains order-level information such as:

- Order ID
- Order Date
- Customer ID
- Payment Method
- Order Status

### Order Details
Contains product-level transaction information such as:

- Order ID
- Product ID
- Quantity
- Discount
- Sales
- Profit

> **Note:** The dataset is synthetic and does not represent real customer transactions or confidential business data.

---

# 🛠️ Technologies & Libraries

- Python
- NumPy
- Pandas
- Matplotlib
- Jupyter Notebook

---

# 📚 Analysis Workflow

The Python analysis was completed through the following stages:

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
Exploratory Data Analysis
     ↓
Business Analysis
     ↓
Data Visualization
     ↓
Advanced Analysis
     ↓
Final Business Insights
```

---

# 📓 Notebook Structure
01_Data_Loading.ipynb
→ Load datasets and verify successful import.

02_Data_Understanding.ipynb
→ Understand columns, data types, shape, and basic statistics.

03_Data_Cleaning.ipynb
→ Handle missing values, duplicates, incorrect data types, and inconsistencies.

04_Data_Preparation.ipynb
→ Prepare and organize cleaned data for analysis.

05_Feature_Engineering.ipynb
→ Create useful derived features and business metrics.

06_EDA.ipynb
→ Explore sales, customers, products, regions, trends, and patterns.

07_Visualization.ipynb
→ Create meaningful charts and visualizations.

08_Advanced_Analysis.ipynb
→ Perform deeper analysis and identify actionable business insights.

---

#  Key Analysis Areas

## 1. Overall Sales Analysis

Analyzed:

- Total Sales
- Total Orders
- Total Quantity
- Average Order Value
- Total Profit
- Profitability

---

## 2. Monthly Sales Analysis

Analyzed sales performance over time to identify:

- Monthly sales trends
- Sales growth patterns
- High-performing months
- Low-performing months
- Changes in business performance over time

---

## 3. Customer Analysis

Analyzed customer-level performance to identify:

- Top customers by sales
- High-value customers
- Customer order behavior
- Customer contribution to revenue

---

## 4. Product Analysis

Analyzed:

- Top-selling products
- Product sales contribution
- Quantity sold
- Product profitability
- High-performing products
- Low-performing products

---

## 5. Category Analysis

Compared product categories based on:

- Sales
- Quantity
- Profit
- Profitability

---

## 6. Regional Analysis

Analyzed business performance across regions using:

- Sales
- Orders
- Quantity
- Profit
- Regional contribution

---

## 7. Profitability Analysis

Analyzed profitability using:

- Sales
- Cost
- Profit
- Profit Margin
- Product-level profitability
- Category-level profitability

---

# 📈 Visualizations

The project uses **Matplotlib** to create visualizations for business analysis, including:

- Monthly Sales Trends
- Top Product Performance
- Regional Sales Performance
- Other analytical charts

Generated charts are stored in:

```text
outputs/
└── charts/
```

---

# Project Structure

```text
Python/
│
├── Python_Sales_Analytics/
│   │
│   ├── data/
│   │   ├── Customers.csv
│   │   ├── Products.csv
│   │   ├── Orders.csv
│   │   └── Order_Details.csv
│   │
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
│   │   ├── cleaned_sales_data.csv
│   │   ├── customer_analysis.csv
│   │   ├── product_analysis.csv
│   │   ├── region_analysis.csv
│   │   ├── monthly_sales.csv
│   │   └── charts/
│   │
│   └── requirements.txt
│
└── README.md
```

---

#  Business Insights

The Python analysis was used to identify patterns across:

- Sales performance
- Customer contribution
- Product performance
- Category profitability
- Regional performance
- Monthly trends

The results provide a data-driven view of the business and support further business recommendations.

---

##  Dataset

The complete dataset is maintained separately due to file-size considerations.

**Dataset:** Synthetic Quick-Commerce Sales Dataset

---

##  Disclaimer

This project is created for **educational and portfolio purposes** using synthetic data. It does not represent actual transactions, customers, or confidential information from any real company.