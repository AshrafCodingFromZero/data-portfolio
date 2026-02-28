-- Week 1: SQL Basics (from ZERO)
-- Dataset: W3Schools sample database (SQL Server)

-- 1) See first 10 customers
SELECT TOP 10 * 
FROM Customers;

-- 2) See only name + country (first 10 rows)
SELECT TOP 10 CustomerName, Country
FROM Customers;

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

-- 7) Sort customers by country then name (take first 10 after sorting)
SELECT TOP 10 CustomerName, Country
FROM Customers
ORDER BY Country ASC, CustomerName ASC;

-- 8) Preview Orders table (first 10)
SELECT TOP 10 *
FROM Orders;

-- 9) Newest orders first (top 10 newest)
SELECT TOP 10 *
FROM Orders
ORDER BY OrderDate DESC;

-- 10) Orders for CustomerID = 1 (you can change 1 later)
SELECT *
FROM Orders
WHERE CustomerID = 1
ORDER BY OrderDate DESC;

-- 11) Orders shipped to Germany (top 10 newest)
SELECT TOP 10 OrderID, CustomerID, OrderDate, ShipCountry
FROM Orders
WHERE ShipCountry = 'Germany'
ORDER BY OrderDate DESC;

-- 12) Orders with ShipVia = 1 (top 10 newest)
SELECT TOP 10 OrderID, CustomerID, OrderDate, ShipVia
FROM Orders
WHERE ShipVia = 1
ORDER BY OrderDate DESC;

-- 13) Count all customers
SELECT COUNT(*) AS total_customers
FROM Customers;

-- 14) Count customers by country
SELECT Country, COUNT(*) AS customers
FROM Customers
GROUP BY Country
ORDER BY customers DESC;

-- 15) Count orders per customer (top 10 customers by number of orders)
SELECT TOP 10 CustomerID, COUNT(*) AS total_orders
FROM Orders
GROUP BY CustomerID
ORDER BY total_orders DESC;
