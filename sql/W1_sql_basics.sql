-- Week 1: SQL Basics (from ZERO)
-- Dataset: W3Schools sample database

-- 1) See first 10 customers
SELECT * FROM Customers
LIMIT 10;

-- 2) See only name + country
SELECT CustomerName, Country
FROM Customers
LIMIT 10;

-- 3) Customers from Germany
SELECT *
FROM Customers
WHERE Country = 'Germany';

-- 4) Customers NOT from Germany
SELECT *
FROM Customers
WHERE Country <> 'Germany';

-- 5) Customers from Germany OR France
SELECT *
FROM Customers
WHERE Country IN ('Germany', 'France');

-- 6) Names starting with A
SELECT *
FROM Customers
WHERE CustomerName LIKE 'A%';

-- 7) Sort customers by country then name
SELECT CustomerName, Country
FROM Customers
ORDER BY Country ASC, CustomerName ASC
LIMIT 10;

-- 8) Preview Orders table
SELECT *
FROM Orders
LIMIT 10;

-- 9) Newest orders first
SELECT *
FROM Orders
ORDER BY OrderDate DESC
LIMIT 10;

-- 10) Orders for CustomerID = 1 (you can change 1 later)
SELECT *
FROM Orders
WHERE CustomerID = 1
ORDER BY OrderDate DESC;

-- 11) Orders shipped to Germany
SELECT OrderID, CustomerID, OrderDate, ShipCountry
FROM Orders
WHERE ShipCountry = 'Germany'
ORDER BY OrderDate DESC
LIMIT 10;

-- 12) Orders with ShipVia = 1
SELECT OrderID, CustomerID, OrderDate, ShipVia
FROM Orders
WHERE ShipVia = 1
ORDER BY OrderDate DESC
LIMIT 10;

-- 13) Count all customers
SELECT COUNT(*) AS total_customers
FROM Customers;

-- 14) Count customers by country
SELECT Country, COUNT(*) AS customers
FROM Customers
GROUP BY Country
ORDER BY customers DESC;

-- 15) Count orders per customer (top 10)
SELECT CustomerID, COUNT(*) AS total_orders
FROM Orders
GROUP BY CustomerID
ORDER BY total_orders DESC
LIMIT 10;
