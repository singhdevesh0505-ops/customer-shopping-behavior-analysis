--Database creation
 CREATE DATABASE CustomerShoppingAnalysis;
GO

USE CustomerShoppingAnalysis;
GO
--VERIFICATION
SELECT TOP 10 *
FROM customer_shopping;
-- ==========================================
-- Customer Shopping Behavior Analysis
-- SQL Analysis
-- ==========================================

-- Module 1: Data Exploration

-- Query 1
-- Total Customers

SELECT COUNT(*) AS Total_Customers
FROM customer_shopping;

SELECT DISTINCT category
FROM customer_shopping;

SELECT DISTINCT payment_method
FROM customer_shopping;

SELECT DISTINCT season
FROM customer_shopping;

SELECT TOP 5 *
FROM customer_shopping;

-- Total Revenue
SELECT SUM(purchase_amount) AS Total_Revenue
FROM customer_shopping;

-- Average Purchase Amount
SELECT AVG(purchase_amount) AS Average_Purchase
FROM customer_shopping;

-- Revenue by Category
SELECT category,
       SUM(purchase_amount) AS Revenue
FROM customer_shopping
GROUP BY category
ORDER BY Revenue DESC;

-- Revenue by Season
SELECT season,
       SUM(purchase_amount) AS Revenue
FROM customer_shopping
GROUP BY season
ORDER BY Revenue DESC;

-- Customers by Gender
SELECT gender,
       COUNT(*) AS Customers
FROM customer_shopping
GROUP BY gender;


-- Top 10 Highest Purchases
SELECT TOP 10 *
FROM customer_shopping
ORDER BY purchase_amount DESC;

-- Payment Method Usage
SELECT payment_method,
       COUNT(*) AS Transactions
FROM customer_shopping
GROUP BY payment_method
ORDER BY Transactions DESC;

-- Category with Average Purchase
SELECT category,
       AVG(purchase_amount) AS Avg_Purchase
FROM customer_shopping
GROUP BY category
ORDER BY Avg_Purchase DESC;

-- Customers spending more than 80
SELECT *
FROM customer_shopping
WHERE purchase_amount > 80;

-- Total Sales by Gender and Category
SELECT gender,
       category,
       SUM(purchase_amount) AS Total_Sales
FROM customer_shopping
GROUP BY gender, category
ORDER BY gender, Total_Sales DESC;

SELECT TOP 10
    customer_id,
    purchase_amount
FROM customer_shopping
ORDER BY purchase_amount DESC;

SELECT  category,
 AVG(purchase_amount) AS Avg_Purchase
FROM customer_shopping
GROUP BY category
ORDER BY Avg_Purchase DESC;

SELECT season,
COUNT(*) AS Total_Customers
FROM customer_shopping
GROUP BY season;

SELECT *
FROM customer_shopping
WHERE purchase_amount > 80;

SELECT
    payment_method,
    SUM(purchase_amount) AS Total_Sales
FROM customer_shopping
GROUP BY payment_method
ORDER BY Total_Sales DESC;