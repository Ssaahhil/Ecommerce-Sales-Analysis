CREATE DATABASE IF NOT EXISTS ECOMMERCE_SALES;
SELECT * FROM orders;
DROP TABLE details;
SELECT * FROM details;
DROP TABLE orders;
-- List the unique categories from the Details table.
SELECT DISTINCT Category FROM details;

-- Count the total number of orders in the Orders table.
SELECT COUNT(*) AS Total_Orders FROM orders;

-- Find the total profit for each category in the Details table.
SELECT Category,SUM(profit) AS Profit FROM details
GROUP BY Category;

-- Retrieve the orders placed in the year 2018 from the Orders table.
SELECT COUNT(Order_Date) FROM orders
WHERE Order_Date LIKE '%2018';

-- Find the total quantity of items ordered by each customer.
SELECT CustomerName, COUNT(Order_ID) FROM orders
GROUP BY CustomerName
ORDER BY COUNT(Order_ID) DESC;

-- Find the top 5 cities with the highest total sales amount.
SELECT orders.City, SUM(details.Amount) AS Total_Sales FROM orders
JOIN details
ON orders.Order_ID = details.Order_ID
GROUP BY orders.city
ORDER BY SUM(details.Amount) DESC LIMIT 5;

-- Calculate the average profit margin (Profit/Amount) for each sub-category.
SELECT Sub_Category, ROUND(AVG(Profit/Amount),2) AS Profit_Margin FROM details
GROUP BY Sub_Category;

-- List the customers who have placed more than 5 orders.
SELECT orders.CustomerName, COUNT(details.Quantity) FROM orders
JOIN details
ON orders.Order_ID = details.Order_ID
GROUP BY CustomerName
ORDER BY COUNT(details.Quantity) DESC LIMIT 5;

