create database Sales_Analytics;
use Sales_Analytics;

alter table Order_Details modify Profit_Margin double;
alter table Order_Details modify Order_Date date ;
alter table Order_Details modify Month_start date;


-- 01-.DATA VALIDATION

	-- Step 1.1: Check the data
SELECT * FROM Customers LIMIT 5;
SELECT * FROM Orders LIMIT 5;
SELECT * FROM Order_Details LIMIT 5;
SELECT * FROM Products LIMIT 5;
SELECT * FROM Targets LIMIT 5;

   -- Step 1.2: Check row counts
SELECT COUNT(*) AS total_customers FROM Customers;
SELECT COUNT(*) AS total_orders FROM Orders;
SELECT COUNT(*) AS total_order_details FROM Order_Details;
SELECT COUNT(*) AS total_products FROM Products;
SELECT COUNT(*) AS total_targets FROM Targets;

   -- Step 1.3: Check column structure
DESCRIBE Customers;
DESCRIBE Orders;
DESCRIBE Order_Details;
DESCRIBE Products;
DESCRIBE Targets;


-- Step 02 — Overall Sales Analysis

    -- 2.1 Total sales?
select sum(Net_Sales) AS Total_Sales from Order_Details;    
    -- 2.2 Total orders?
select count(Order_ID) AS Total_Orders from Order_Details;
    -- 2.3 Total Quantity sold?
select sum(Quantity) AS Total_Quantity from  Order_Details;
    -- 2.4 Average Order Value (AOV)?
select sum(Net_Sales) / count( distinct Order_ID) as AOV from Order_Details;


-- Step 03 — Monthly Sales Analysis
    --  Date format check
SELECT
    DATE_FORMAT(o.Order_Date, '%Y-%m') AS Month,
    SUM(od.Net_Sales) AS Total_Sales
FROM Orders o
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY DATE_FORMAT(o.Order_Date, '%Y-%m')
ORDER BY Month;


    -- Disable Safe Updates
SET SQL_SAFE_UPDATES = 0;


    -- Convert old date into new DATE column
UPDATE Orders
SET Order_Date_New = STR_TO_DATE(Order_Date, '%d-%m-%Y')
WHERE Order_ID IS NOT NULL;


    -- Enable Safe Updates again
SET SQL_SAFE_UPDATES = 1;


    -- Check conversion
SELECT
    Order_Date,
    Order_Date_New
FROM Orders
LIMIT 20;


  --  Remove old column
ALTER TABLE Orders
DROP COLUMN Order_Date;


   -- Rename new column and set DATE datatype
ALTER TABLE Orders
CHANGE COLUMN Order_Date_New Order_Date DATE;


   -- Verify table structure
DESCRIBE Orders;

  -- Final date check
SELECT
    Order_Date,
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month
FROM Orders
LIMIT 20;


-- Step 3.1: Monthly Sales Analysis
SELECT
    DATE_FORMAT(o.Order_Date, '%Y-%m') AS Month,
    SUM(od.Net_Sales) AS Total_Sales
FROM Orders o
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY DATE_FORMAT(o.Order_Date, '%Y-%m')
ORDER BY Month;


-- Step 3.2:Monthly Orders
SELECT
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM Orders
GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY Month;


-- Step 3.3:Monthly Quantity Sold
SELECT
    DATE_FORMAT(o.Order_Date, '%Y-%m') AS Month,
    SUM(od.Quantity) AS Total_Quantity
FROM Orders o
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY DATE_FORMAT(o.Order_Date, '%Y-%m')
ORDER BY Month;

-- Step 3.4: Monthly Average Order Value (AOV)
SELECT
    DATE_FORMAT(o.Order_Date, '%Y-%m') AS Month,
    SUM(od.Net_Sales) / COUNT(DISTINCT o.Order_ID) AS AOV
FROM Orders o
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY DATE_FORMAT(o.Order_Date, '%Y-%m')
ORDER BY Month;


-- Step 3.5: Monthly Sales Growth (MoM)

WITH Monthly_Sales AS (
    SELECT
        DATE_FORMAT(o.Order_Date, '%Y-%m') AS Month,
        SUM(od.Net_Sales) AS Total_Sales
    FROM Orders o
    JOIN Order_Details od
        ON o.Order_ID = od.Order_ID
    GROUP BY DATE_FORMAT(o.Order_Date, '%Y-%m')
)

SELECT
    Month,
    Total_Sales,

    LAG(Total_Sales) OVER (ORDER BY Month) AS Previous_Month_Sales,

    ROUND(
        (
            Total_Sales - LAG(Total_Sales) OVER (ORDER BY Month)
        )
        / NULLIF(
            LAG(Total_Sales) OVER (ORDER BY Month),
            0
        ) * 100,
        2
    ) AS MoM_Growth_Percent

FROM Monthly_Sales
ORDER BY Month;


-- Step 3.5:Higest Sales month
SELECT
    DATE_FORMAT(o.Order_Date, '%Y-%m') AS Month,
    SUM(od.Net_Sales) AS Total_Sales
FROM orders o
JOIN order_details od
    ON o.Order_ID = od.Order_ID
GROUP BY Month
ORDER BY Total_Sales DESC
LIMIT 1;

-- step 3.6:Lowest Sales Month
SELECT 
    date_format(o.Order_Date, '%y-%m') AS Month,
    Sum(od.Net_Sales) AS Total_Sales
FROM Orders o 
Join Order_details od 
     ON o.order_ID  = od.Order_ID
 --  WHERE YEAR(o.Order_Date) = 2024 ( IF WANT Specific year)
GROUP BY MONTH
ORDER BY Total_Sales ASC
limit 1;



-- STEP 04: CUSTOMER ANALYSIS
alter table Customers  rename Column ï»¿Customer_ID to Customer_ID;

  -- 4.1 — Total Customers
SELECT
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM customers;

-- 4.2 — Customer-wise Sales
SELECT 
	c.Customer_ID,
    c.Customer_Name,
    sum(od.Net_Sales) AS Total_sales
FROM Customers C
JOIN Orders o
	ON c.customer_ID = o.Customer_ID
JOIN Order_details od
    ON o.Order_ID = od.order_ID
GROUP BY   
    c.customer_ID,
    c.Customer_Name
ORDER BY Total_Sales DESC;

-- 4.3 — Top 10 Customers by Sales
SELECT 
  c.Customer_ID,
  c.Customer_Name,
  SUM(od.Net_Sales) AS Total_Sales
FROM Customers c
Join Orders o
  ON c.Customer_ID = o.Customer_ID
Join Order_Details od
  ON o.order_ID = od.Order_ID
GROUP BY
  c.Customer_ID,
  c.Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;

-- 4.4 - Customer-wise Orders

SELECT
  c.Customer_ID,
  c.Customer_Name,
  Count(DISTINCT o.Order_ID) AS Total_Orders
FROM Customers c
JOIN Orders o
  on c.Customer_ID  = o.Customer_ID
GROUP BY
  c.Customer_ID,
  c.Customer_Name
ORDER BY Total_Orders DESC;


-- 4.5 Customer-wise Quantity
SELECT
  c.Customer_ID,
  c.Customer_Name,
  Sum(od.Quantity) AS Total_Quantity
FROM Customers c
jOIN Orders o 
  ON o.Customer_Id = c.Customer_Id
JOIN Order_Details od
  ON o.Order_ID = od.Order_ID
GROUP BY
  c.Customer_ID,
  c.Customer_Name
ORDER BY Total_Quantity DESC;

-- 4.6 Customer-wise Profit
SELECT 
  c.Customer_ID,
  c.Customer_Name,
  SUM(od.Profit) AS Total_Profit
FROM Customers c
JOIN Orders o
  ON c.Customer_ID  = o.Customer_ID
JOIN Order_Details od
  ON o.Order_ID = od.Order_ID
GROUP BY
  c.Customer_ID,
  C.Customer_Name
Order BY Total_Profit DESC;

-- 4.7 Customer Profit Margin
SELECT 
  c.Customer_ID,
  c.Customer_Name,
  SUM(od.Net_Sales) AS Total_Sales,
  SUM(od.Profit) AS Total_Profit,
  ROUND(
    SUM(od.Profit) / NULLIF(SUM(od.Net_Sales),0) * 100,2
    ) AS Profit_Margin_Percent
FROM Customers c
JOIN Orders o
  ON c.Customer_ID  = o.Customer_ID
JOIN Order_Details od
  ON o.Order_ID = od.Order_ID
GROUP BY 
  c.Customer_ID,
  c.Customer_Name
ORDER BY Profit_Margin_Percent DESC;

-- 4.8 — Top 10 Customers by Profit
SELECT
  c.Customer_ID,
  c.Customer_Name,
  sum(od.Profit) AS Total_Profit
From Customers c
JOIN Orders o
  ON o.Order_ID = o.Customer_ID
JOIN Order_Details od
  ON o.Order_ID = od.Order_Id
GROUP BY
  c.Customer_ID,
  c.Customer_Name
ORDER BY Total_Profit DESC
LIMIT 10;


-- 4.9 High Sales + Low Profit Margin Customers
WITH Customer_Performance AS (
    SELECT
        c.Customer_ID,
        c.Customer_Name,
        SUM(od.Net_Sales) AS Total_Sales,
        SUM(od.Profit) AS Total_Profit,
        ROUND(
            SUM(od.Profit) / NULLIF(SUM(od.Net_Sales), 0) * 100,
            2
        ) AS Profit_Margin_Percent
    FROM Customers c
    JOIN Orders o
        ON c.Customer_ID = o.Customer_ID
    JOIN Order_Details od
        ON o.Order_ID = od.Order_ID
    GROUP BY
        c.Customer_ID,
        c.Customer_Name
)

SELECT
    Customer_ID,
    Customer_Name,
    Total_Sales,
    Total_Profit,
    Profit_Margin_Percent
FROM Customer_Performance
WHERE Total_Sales > (SELECT AVG(Total_Sales) FROM Customer_Performance)
  AND Profit_Margin_Percent < (SELECT AVG(Profit_Margin_Percent) FROM Customer_Performance)
ORDER BY Total_Sales DESC;


-- 4.10 Average Customer Discount
SELECT 
  c.Customer_ID,
  c.Customer_Name,
  ROUND(AVG(od.Discount) * 100,2) AS Average_Discount_Percent
FROM Customers c
JOIN Orders o
  ON o.Customer_ID = c.Customer_ID
JOIN Order_Details od
  ON o.Order_ID = od.Order_ID
GROUP BY
  c.Customer_ID,
  c.Customer_Name
ORDER BY Average_Discount_Percent DESC;


-- Step 05 — Product Analysis
   -- 5.1 Top 10 Products by Sales
SELECT 
  p.Product_ID,
  p.Product_Name,
  SUM(od.Net_Sales) AS Total_Sales
  From Products p
Join Order_Details od
  ON p.Product_ID = od.Product_ID
GROUP BY 
  p.Product_ID,
  p.Product_Name
Order BY Total_Sales DESC
LIMIT 10;
describe Products;

alter table Products RENAME COLUMN ï»¿Product_ID to Product_ID;

-- 5.2 Top 10 Products by Profit
SELECT 
  p.Product_ID,
  p.Product_Name,
  SUM(od.Profit) AS Total_profit
FROM Products p
JOin Order_Details od
  ON p.Product_ID = od.Product_ID
Group BY
  p.Product_ID,
  p.Product_Name
Order BY Total_Profit DESC
LIMIT 10;

-- 5.3 Top 10 Products by Quantity Sold

SELECT
  p.Product_ID,
  p.Product_Name,
  sum(od.Quantity) AS Total_Quantity
From Products p
JOIN Order_Details od
  ON p.Product_Id = od.Product_ID
Group BY
  p.Product_ID,
  p.Product_Name
Order BY Total_Quantity DESC
LIMIT 10;

-- 5.4 — Product Profit Margin
SELECT 
  p.Product_ID,
  p.Product_Name,
  SUM(od.Profit) AS Total_Sales,
  ROUND(
    Sum(od.Profit) /NULLIF(sum(od.Net_sales),0)*100,2
    ) AS Profit_Mergin_Percent
FROM Products p
Join Order_Details od
  on p.Product_ID = od.Product_ID
Group by 
  p.Product_ID,
  p.Product_Name
Order BY Profit_Mergin_Percent DESC;


 -- 5.5 — Loss-Making Products
 SELECT
   p.Product_Id,
   p.Product_Name,
   SUM(od.Net_sales) Total_Sales,
   SUM(od.Profit) AS Total_Profit
FROM Products p
JOIN Order_Details od
  ON p.Product_ID = od.Product_ID
GROUP BY 
  p.Product_Id,
  p.Product_Name
Having sum(od.Profit) < 0 
Order BY Total_Profit ASC;

-- 5.6 — Highest Profit Margin Product
WITH Product_Performance AS (
    SELECT
        p.Product_ID,
        p.Product_Name,
        SUM(od.Net_Sales) AS Total_Sales,
        SUM(od.Profit) AS Total_Profit,
        SUM(od.Profit) / NULLIF(SUM(od.Net_Sales), 0) * 100 AS Profit_Margin
    FROM Products p
    JOIN Order_Details od
        ON p.Product_ID = od.Product_ID
    GROUP BY
        p.Product_ID,
        p.Product_Name
)
SELECT
    Product_ID,
    Product_Name,
    ROUND(Profit_Margin, 2) AS Profit_Margin
FROM Product_Performance
ORDER BY Profit_Margin DESC
LIMIT 1;

-- Step 06 — Region Analysis
   -- 6.1 Sales by Region
SELECT
  c.Region,
  SUM(od.Net_Sales) AS Total_Sales
From Customers c
JOIN Orders o
  ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
  ON o.Order_Id = od.Order_ID
GROUP BY c.Region
ORDER BY Total_Sales DESC;

   -- 6.2 Profit By Region
   
SELECT 
  c.Region,
  SUM(od.Profit) AS Total_Profit
FROM Customers c
Join Orders o
  ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
  ON o.Order_ID = od.Order_ID
Group by c.Region
Order By Total_Profit DESC;

-- 6.3 Customers by Region
SELECT
  c.Region,
  Count(DISTINCT Customer_ID) AS Total_Customers
From Customers c
Group by Region
ORDER BY Total_Customers DESC;

-- 6.4 Quantity by Region
SELECT
    c.Region,
    SUM(od.Quantity) AS Total_Quantity
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY c.Region
ORDER BY Total_Quantity DESC;


-- 6.5 Region Profit Margin
SELECT
    c.Region,
    SUM(od.Net_Sales) AS Total_Sales,
    SUM(od.Profit) AS Total_Profit,
    ROUND(
        SUM(od.Profit) / NULLIF(SUM(od.Net_Sales), 0) * 100,
        2
    ) AS Profit_Margin_Percent
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY c.Region
ORDER BY Profit_Margin_Percent DESC;


-- 6.6 — Highest Profit Region
SELECT
  c.Region,
  sum(od.Profit) AS Total_Profit
FROM Customers c
JOIN Orders o
  ON o.Customer_ID = c.Customer_ID
JOIN Order_Details od
  ON o.Order_ID = od.Order_ID
GROUP BY
  c.Region
ORDER BY Total_Profit DESC;



-- 6.6 — Highest Profit Margin Region
SELECT 
    c.Region,
    SUM(od.Net_Sales) AS Total_Sales,
    SUM(od.Profit) AS Total_Profit,
    ROUND(
        SUM(od.Profit) / NULLIF(SUM(od.Net_Sales), 0) * 100,
        2
    ) AS Profit_Margin_Percent
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY c.Region
ORDER BY Profit_Margin_Percent DESC;


-- 6.7 — Highest Profit Region
SELECT
    c.Region,
    sum(od.Profit) AS Total_Profit
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY c.Region
ORDER BY Total_Profit DESC
LIMIT 1;

-- 6.8 Highest Profit Margin Region
SELECT
    c.Region,
    ROUND(
        SUM(od.Profit) / NULLIF(SUM(od.Net_Sales), 0) * 100,
        2
    ) AS Profit_Margin_Percent
FROM Customers c
JOIN Orders o
  ON o.Customer_ID = c.Customer_ID
JOIN Order_Details od
  ON o.Order_ID = od.Order_ID
GROUP BY c.Region
ORDER BY Profit_Margin_Percent DESC
LIMIT 1;
	
-- 6.9 — Lowest Performing Region
SELECT
    c.Region,
    SUM(od.Net_Sales) AS Total_Sales
FROM Customers c
JOIN Orders o
    ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
    ON o.Order_ID = od.Order_ID
GROUP BY c.Region
ORDER BY Total_Sales ASC
LIMIT 1;


-- Step 07 — Category Analysis
   -- 7.1 Category-wise Sales
SELECT 
    p.Category,
    ROUND(SUM(od.Net_Sales),2) AS Total_Sales
FROM Products p
JOIN Order_Details od
   ON p.Product_ID = od.Product_ID
GROUP BY p.Category
ORDER BY Total_Sales DESC;

  -- 7.2 Category-wise Profit
SELECT 
    p.Category,
    ROUND(SUM(od.Profit),2) AS Total_Profit
FROM Products p
JOIN Order_Details od
    ON p.Product_ID = od.Product_ID
GROUP BY p.Category
ORDER BY Total_Profit DESC;

  -- 7.3 Category-wise Profit Margin
SELECT
   p.Category,
   SUM(od.Profit) AS Total_Profit,
   ROUND(
       SUM(od.Profit)/ NULLIF(SUM(od.Net_Sales),0) * 100,
       2
       ) AS Profit_Margin_Percent
FROM Products p
JOIN Order_Details od
   ON p.Product_ID = od.Product_ID
GROUP BY p.Category
ORDER BY Profit_Margin_Percent DESC;

-- 7.4 Highest Profit Category
SELECT 
    p.Category,
    SUM(od.Profit) AS Total_Profit
FROM Products p
JOIN Order_Details od
    ON p.Product_ID = od.Product_ID
GROUP BY p.Category
ORDER BY Total_profit DESC
LIMIT 1;

-- 7.5 Highest Profit Margin Category
SELECT 
  p.Category,
      p.Category,
    ROUND(
        SUM(od.Profit) / NULLIF(SUM(od.Net_Sales), 0) * 100,
        2
    ) AS Profit_Margin_Percent
FROM Products p
JOIN Order_Details od
   ON p.Product_ID = od.Product_ID
GROUP BY p.Category
ORDER BY Profit_Margin_Percent DESC
LIMIT 1;

-- 7.6 Category-Wise Quantity
SELECT
    p.Category,
    SUM(od.Quantity) AS Total_Quantity
FROM Products p
JOIN Order_Details od
    ON p.Product_ID = od.Product_ID
GROUP BY p.Category
ORDER BY Total_Quantity DESC;


-- Step 08. Advanced SQL Analysis
    -- 8.1 — Top 3 Products in Each Category
WITH Product_Sales AS (
    SELECT
        p.Category,
        p.Product_ID,
        p.Product_Name,
        SUM(od.Net_Sales) AS Total_Sales
    FROM Products p
    JOIN Order_Details od
        ON p.Product_ID = od.Product_ID
    GROUP BY
        p.Category,
        p.Product_ID,
        p.Product_Name
),


Ranked_Products AS (
    SELECT
        Category,
        Product_ID,
        Product_Name,
        Total_Sales,
        ROW_NUMBER() OVER (
            PARTITION BY Category
            ORDER BY Total_Sales DESC
        ) AS Product_Rank
    FROM Product_Sales
)


SELECT
    Category,
    Product_ID,
    Product_Name,
    Total_Sales,
    Product_Rank
FROM Ranked_Products
WHERE Product_Rank <= 3
ORDER BY Category, Product_Rank;

-- 8.2 — Best Customer in Each Region
WITH Customer_Sales AS (
    SELECT
        c.Region,
        c.Customer_ID,
        c.Customer_Name,
        SUM(od.Net_Sales) AS Total_Sales
    FROM Customers c
    JOIN Orders o
        ON c.Customer_ID = o.Customer_ID
    JOIN Order_Details od
        ON o.Order_ID = od.Order_ID
    GROUP BY
        c.Region,
        c.Customer_ID,
        c.Customer_Name
),

Ranked_Customers AS (
    SELECT
        Region,
        Customer_ID,
        Customer_Name,
        Total_Sales,
        ROW_NUMBER() OVER (
            PARTITION BY Region
            ORDER BY Total_Sales DESC
        ) AS Customer_Rank
    FROM Customer_Sales
)

SELECT
    Region,
    Customer_ID,
    Customer_Name,
    Total_Sales
FROM Ranked_Customers
WHERE Customer_Rank = 1
ORDER BY Region;


-- Step 8.3 — Monthly Sales Ranking
WITH Monthly_Sales AS (
    SELECT
      DATE_FORMAT(o.Order_Date,'%y-%m') AS Month,
      ROUND(SUM(od.Net_Sales),2) AS Total_Sales
	FROM Orders o
    JOIN Order_Details od
	  ON o.Order_ID = od.Order_ID
	GROUP BY DATE_FORMAT(o.Order_Date,'%y-%m')
)

SELECT
    Month,
    Total_Sales,
    RANK() OVER(
      ORDER BY Total_Sales DESC
      ) AS Sales_Rank
    FROM Monthly_Sales
    ORDER BY Sales_Rank;


WITH Monthly_Sales AS (
    SELECT
        DATE_FORMAT(o.Order_Date,'%y-%m') AS Month,
        Sum(od.Net_Sales) AS Total_Sales
        FROM Orders o
        JOIN Order_Details od
          ON o.Order_ID = od.Order_ID
          GROUP BY DATE_FORMAT(o.Order_Date,'%y-%m')
)

SELECT
    Month,
    Total_Sales,
    SUM(Total_Sales) OVER(
      ORDER BY Month
      ) AS Running_Total_Sales
FROM Monthly_Sales
ORDER BY Month;

-- Step 29 — Product Contribution to Total Sales
WITH Product_Sales AS ( 
    SELECT
    p.Product_ID,
    p.Product_Name,
    SUM(od.Net_Sales) AS Total_Sales
FROM Products p
JOIN Order_Details od
    ON p.Product_ID = od.Product_ID
GROUP BY
    p.Product_ID,
    p.Product_Name
)

SELECT
    Product_ID,
    Product_Name,
    Total_Sales,
    ROUND(
        Total_Sales / SUM(Total_Sales) OVER () * 100,
        2
    ) AS Sales_Contribution_Percent
FROM Product_Sales
ORDER BY Sales_Contribution_Percent DESC;


-- 8.4 — Top 3 Customers in Each Region
WITH Customer_Sales AS ( 
    SELECT
      c.Region,
      c.Customer_ID,
      c.Customer_Name,
      SUM(od.Net_sales) AS Total_Sales
      FROM Customers c
      JOIN Orders o
        ON c.Customer_ID = o.Customer_ID
	  JOIN Order_Details od
        ON o.Order_ID = od.Order_ID
	  GROUP BY 
        c.Region,
        c.Customer_ID,
        c.Customer_Name
),

Ranked_Customers AS (
    SELECT
        Region,
        Customer_ID,
        Customer_Name,
        Total_Sales,
        RANK() OVER (
            PARTITION BY Region
            ORDER BY Total_Sales DESC
        ) AS Customer_Rank
    FROM Customer_Sales
)


SELECT 
    Region,
    Customer_ID,
    Customer_Name,
    Total_Sales,
    Customer_Rank
FROM Ranked_Customers
WHERE Customer_Rank <=3;


-- 8.5 — Best-Selling Product in Each Category
WITH Product_Sales AS(
    SELECT 
      p.Category,
      p.Product_ID,
      p.Product_Name,
      Sum(od.Net_Sales) AS Total_Sales
    From Products p
    JOIN Order_Details od
      ON p.Product_ID = od.Product_ID
	GROUP BY
      p.Category,
      p.Product_ID,
      p.Product_Name
),
Ranked_Products AS (
    SELECT
        Category,
        Product_ID,
        Product_Name,
        Total_Sales,
        ROW_NUMBER() OVER (
            PARTITION BY Category
            ORDER BY Total_Sales DESC
        ) AS Product_Rank
    FROM Product_Sales
)


SELECT
    Category,
    Product_ID,
    Product_Name,
    Total_Sales
FROM Ranked_Products
WHERE Product_Rank = 1
ORDER BY Category;
    
 -- 8.6 — Best-Performing Product by Profit in Each Category 
 WITH Product_profit AS(
     SELECT 
         p.Category,
         p.Product_ID,
         p.Product_Name,
         SUM(od.Profit) AS Total_Profit
	FROM Products p
    JOIN Order_Details od
        ON p.Product_ID = od.Product_ID
	GROUP BY 
        p.Category,
        p.Product_ID,
        p.Product_Name
),
Ranked_Products AS(
	SELECT
      Category,
      Product_ID,
      Product_Name,
      Total_Profit,
      ROW_NUMBER() OVER(
        PARTITION BY Category
        ORDER BY Total_Profit DESC
        ) AS Profit_Rank

    FROM Product_Profit
)

SELECT
    Category,
    Product_ID,
    Product_Name,
    Total_Profit
FROM Ranked_Products
WHERE Profit_Rank = 1
ORDER BY Category;

-- 8.7 — Products Above Average Sales
WITH Product_Sales AS(
      SELECT
          p.Product_ID,
          p.Product_Name,
          SUM(od.Net_Sales) AS Total_Sales
     FROM Products p
     JOIN Order_Details od
         ON p.Product_ID = od.Product_ID
	 GROUP BY 
         p.Product_ID,
         p.Product_Name
)
SELECT
     Product_ID,
     Product_name,
     Total_Sales
FROM Product_Sales
WHERE Total_Sales > (SELECT AVG(Total_Sales)
FROM Product_sales
)
ORDER BY Total_Sales DESC;

-- 8.8 — Products with Below-Average Profit Margin
WITH Product_Performance AS(
    SELECT
      p.Product_ID,
      p.Product_Name,
      SUM(od.Net_Sales) AS Total_Sales,
      SUM(od.Profit) AS Total_Profit,
      SUM(od.Profit)/NULLIF(SUM(od.Net_Sales),0) * 100 AS Profit_Margin
    FROM Products p
    JOIN Order_Details od
      ON p.Product_ID = od.Product_ID
	GROUP BY
      p.Product_ID,
      p.Product_Name
)
SELECT
    Product_ID,
    Product_Name,
    ROUND(Total_Sales,2) AS Total_Sales,
    ROUND(Total_Profit,2) AS Total_Profit,
    ROUND(Profit_Margin,2) AS Profit_Margin
    FROM Product_Performance
    WHERE Profit_Margin < (SELECT AVG(Profit_Margin) FROM Product_Performance)
    ORDER BY Profit_Margin ASC;
    
    -- 8.9 — Customers Above Average Sales
WITH Customer_Sales AS( 
      SELECT
		c.Customer_ID,
		c.Customer_Name,
		SUM(od.Net_Sales) AS Total_Sales
FROM Customers c
JOIN Orders o
      ON c.Customer_ID = o.Customer_ID
JOIN Order_Details od
      ON o.Order_ID = od.Order_ID
GROUP BY
      c.Customer_ID,
      c.Customer_Name
)
SELECT 
	Customer_ID,
    Customer_Name,
    Round(Total_Sales,2) AS Total_Sales
FROM Customer_Sales
WHERE Total_Sales >(
SELECT AVG(Total_Sales) 
FROM Customer_Sales
)
ORDER BY Total_Sales DESC;


-- 8.10 — Customer Value Analysis
 -- Which customers generate the highest sales and profit?
 WITH Customer_Performance AS(
       SELECT
          c.Customer_id,
          c.Customer_Name,
          SUM(od.Net_Sales) AS Total_Sales,
          Sum(od.Profit) AS Total_Profit
      FROM Customers c
      JOIN Orders o
        ON c.Customer_ID = o.Customer_ID
	  JOIN Order_Details od
        ON o.Order_ID = o.Order_ID
	  GROUP BY
        c.Customer_id,
        c.Customer_Name
)
SELECT
      Customer_ID,
      Customer_Name,
      ROUND(Total_Sales,2) AS Total_sales,
      ROUND(Total_Profit,2) AS Total_Profit
FROM Customer_Performance
ORDER BY Total_Sales DESC
LIMIT 10;
  
  
  -- 8.11 — Loss-Making Customers
  
WITH Customer_Profit AS(
      SELECT
         c.Customer_Id,
         c.Customer_Name,
         sum(od.Net_Sales) AS Total_Sales,
         SUM(od.Profit) AS Total_Profit
     FROM Customers c
     JOIN Orders o
        ON c.Customer_ID = o.Customer_ID
	 JOIN Order_Details od
        ON o.Order_ID = od.Order_ID
	GROUP BY
        c.Customer_ID,
        c.Customer_Name
)
SELECT
    Customer_ID,
    Customer_Name,
    ROUND(Total_Sales) AS Total_Sales,
    ROUND(Total_Profit) AS Total_Profit
    FROM Customer_Profit
    WHERE Total_Profit <0
    ORDER BY Total_Profit ASC;
    
-- 8.12 — Category-wise Quantity Sold 
   -- highest quantity of products?
SELECT
    p.Category,
    SUM(od.Quantity) AS Total_Quantity
FROM Products p
JOIN Order_Details od
    ON p.Product_ID = od.Product_ID
GROUP BY p.Category
ORDER BY Total_Quantity DESC;

    -- To find only the highest-quantity category:
SELECT
    p.Category,
    SUM(od.Quantity) AS Total_Quantity
FROM Products p
JOIN Order_Details od
    ON p.Product_ID = od.Product_ID
GROUP BY p.Category
ORDER BY Total_Quantity DESC
LIMIT 1;


-- 8.13 — Category Sales Contribution
WITH Category_Sales AS (
    SELECT
        p.Category,
        SUM(od.Net_Sales) AS Total_Sales
    FROM Products p
    JOIN Order_Details od
        ON p.Product_ID = od.Product_ID
    GROUP BY p.Category
)

SELECT
    Category,
    ROUND(Total_Sales, 2) AS Total_Sales,
    ROUND(
        Total_Sales / SUM(Total_Sales) OVER () * 100,
        2
    ) AS Sales_Contribution_Percent
FROM Category_Sales
ORDER BY Sales_Contribution_Percent DESC;

-- 8.14 — Category Ranking by Sales
WITH Category_Sales AS (
    SELECT
        p.Category,
        SUM(od.Net_Sales) AS Total_Sales
    FROM Products p
    JOIN Order_Details od
        ON p.Product_ID = od.Product_ID
    GROUP BY p.Category
)

SELECT
    Category,
    ROUND(Total_Sales, 2) AS Total_Sales,
    RANK() OVER (
        ORDER BY Total_Sales DESC
    ) AS Sales_Rank
FROM Category_Sales
ORDER BY Sales_Rank;

