#  Quick-Commerce Sales Analytics — Python Analysis

##  Overview

This section contains the **Python-based analysis** of the Quick-Commerce Sales Analytics project.

The analysis was performed using **Python, NumPy, Pandas, and Matplotlib** to explore sales performance, customer behavior, product performance, category trends, regional performance, and profitability.

The Python stage builds on the business analysis performed using **Excel and SQL**, providing a programmatic and exploratory approach to the same business problem.



#  Objectives

The main objectives of the Python analysis were to:

- Understand the structure and characteristics of the sales data
- Validate and prepare datasets for analysis
- Perform data cleaning and data preparation
- Create derived business metrics
- Analyze overall sales performance
- Analyze monthly sales trends
- Identify high-value customers
- Analyze product and category performance
- Compare regional performance
- Perform Exploratory Data Analysis (EDA)
- Create meaningful business visualizations
- Extract actionable business insights



#  Dataset

The project uses a **synthetic Quick-Commerce dataset** created for educational and portfolio purposes.

The Python analysis is based on four core datasets.

### Customers

Contains customer information such as:

- Customer_ID
- Customer_Name
- Gender
- Age
- City
- State
- Region

### Products

Contains product information such as:

- Product_ID
- Product_Name
- Category
- Sub_Category
- Brand
- Cost_Price
- Selling_Price

### Orders

Contains order-level information such as:

- Order_ID
- Order_Date
- Customer_ID
- Payment_Method
- Order_Status

### Order_Details

Contains product-level transaction information such as:

- Order_ID
- Product_ID
- Quantity
- Discount
- Sales
- Profit

> **Note:** The dataset is synthetic and does not represent real customer transactions, confidential information, or proprietary company data.



# Technologies & Libraries

### Programming Language

- Python

### Libraries

- NumPy
- Pandas
- Matplotlib

### Environment

- Vs Code



#  Analysis Workflow

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



#  Notebook Structure
```
01_Data_Loading.ipynb - Load datasets and verify successful data import
02_Data_Understanding.ipynb - Examine columns, data types, shape, statistics, and data characteristics
03_Data_Cleaning.ipynb - Handle missing values, duplicates, data types, and inconsistencies
04_Data_Preparation.ipynb - Prepare and organize cleaned data for analysis
05_Feature_Engineering.ipynb - Create derived features and business metrics
06_EDA.ipynb - Explore sales, customers, products, categories, regions, and trends
07_Visualization.ipynb - Create business-focused charts and visualizations
08_Advanced_Analysis.ipynb - Perform deeper analysis and identify additional business insights

```


#  Key Analysis Areas

## 1. Overall Sales Analysis

Analyzed:

- Total Sales
- Total Orders
- Total Quantity
- Average Order Value
- Total Profit
- Profitability



## 2. Monthly Sales Analysis

Analyzed sales performance over time to identify:

- Monthly sales trends
- Sales growth patterns
- High-performing months
- Low-performing months
- Changes in business performance



## 3. Customer Analysis

Analyzed customer-level performance to identify:

- Top customers by sales
- High-value customers
- Customer order behavior
- Customer contribution to revenue



## 4. Product Analysis

Analyzed products based on:

- Total Sales
- Quantity Sold
- Product contribution
- Product profitability
- High-performing products
- Low-performing products



## 5. Category Analysis

Compared product categories based on:

- Sales
- Quantity
- Profit
- Profitability
- Contribution to overall performance



## 6. Regional Analysis

Analyzed regional business performance using:

- Sales
- Orders
- Quantity
- Profit
- Regional contribution



## 7. Profitability Analysis

Analyzed profitability using:

- Sales
- Cost
- Profit
- Profit Margin
- Product-level profitability
- Category-level profitability



#  Visualizations

Matplotlib was used to create visualizations that support the analysis and make business trends easier to understand.

Examples include:

- Monthly Sales Trends
- Top Product Performance
- Regional Sales Performance
- Category Performance
- Other analytical visualizations

Generated charts are available in:

```text
outputs/
└── charts/
```



# 💡 Business Insights

The Python analysis was used to identify patterns across:

- Sales performance
- Customer contribution
- Product performance
- Category profitability
- Regional performance
- Monthly sales trends

The analysis provides a programmatic view of the business and supports the identification of areas requiring further business investigation.



#  Project Structure

```text
Python_Sales_Analytics/
│
├── data/
│   ├── Customers.csv
│   ├── Products.csv
│   ├── Orders.csv
│   ├── Order_Details.csv
│   └── Targets.csv
│
├── notebooks/
│   ├── 01_Data_Loading.ipynb
│   ├── 02_Data_Understanding.ipynb
│   ├── 03_Data_Cleaning.ipynb
│   ├── 04_Data_Preparation.ipynb
│   ├── 05_Feature_Engineering.ipynb
│   ├── 06_EDA.ipynb
│   ├── 07_Visualization.ipynb
│   └── 08_Advanced_Analysis.ipynb
│
├── outputs/
│   ├── cleaned_sales_data.csv
│   ├── customer_analysis.csv
│   ├── product_analysis.csv
│   ├── region_analysis.csv
│   ├── monthly_sales.csv
│   └── charts/
│       ├── monthly_sales.png
│       ├── top_products.png
│       └── region_sales.png
│
├── README.md
└── requirements.txt

```

> Large datasets and processed CSV files are maintained separately in the project's Google Drive dataset repository.


# Dataset & Supporting Files

The complete dataset and processed Python output files are maintained separately because of file-size considerations.

 **[Access Dataset & Supporting Files](https://drive.google.com/drive/folders/1Hs6Un_FjMjEbBL34xnvaBJuGpY-F-zfn?usp=drive_link)**

**Dataset Type:** Synthetic Quick-Commerce Sales Dataset



#  Key Learning

This analysis demonstrated how Python can be used to move beyond spreadsheet-based analysis and perform a structured, reproducible data analytics workflow.

The project provided practical experience in:

- Data loading
- Data cleaning
- Data preparation
- Feature engineering
- Exploratory Data Analysis
- Aggregation and grouping
- Business analysis
- Data visualization
- Insight generation



#  Overall Project Flow

```text
Synthetic Dataset
       ↓
Excel Analysis
       ↓
SQL Analysis
       ↓
Python Data Analysis
       ↓
Data Cleaning & Preparation
       ↓
Feature Engineering
       ↓
EDA
       ↓
Visualization
       ↓
Business Insights
```



##  Project Details
```
Project: Quick-Commerce Sales Analytics
Analysis: Python
Dataset: Synthetic
Language: Python
Libraries: NumPy, Pandas, Matplotlib
Environment: Jupyter Notebook
Focus Areas: Sales, Customers, Products, Categories, Regions & Profitability

```


##  Disclaimer

This project was created for **educational and portfolio purposes** using synthetic data.

It does not contain real customer transactions, confidential business information, or proprietary company data.
