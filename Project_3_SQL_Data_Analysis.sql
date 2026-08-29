CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE orders (
    OrderID VARCHAR(50),
    Date DATE,
    CustomerID VARCHAR(50),
    Product VARCHAR(100),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    ShippingAddress VARCHAR(255),
    PaymentMethod VARCHAR(50),
    OrderStatus VARCHAR(50),
    TrackingNumber VARCHAR(100),
    CouponCode VARCHAR(50),
    ReferralSource VARCHAR(100),
    ItemsInCart INT,
    TotalPrice DECIMAL(10,2)
);

-- SELECT
SELECT OrderID, Product, Quantity, TotalPrice
FROM orders
LIMIT 10;

-- WHERE
SELECT OrderID, Product, Quantity, TotalPrice
FROM orders
WHERE TotalPrice > 1000
LIMIT 10;

-- ORDER BY
SELECT OrderID, Product, Quantity, TotalPrice
FROM orders
ORDER BY TotalPrice DESC
LIMIT 10;

-- COUNT
SELECT COUNT(*) AS Total_Orders
FROM orders;

-- SUM
SELECT SUM(TotalPrice) AS Total_Revenue
FROM orders;

-- AVG
SELECT AVG(TotalPrice) AS Average_Order_Value
FROM orders;

-- GROUP BY Product
SELECT
    Product,
    COUNT(*) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue
FROM orders
GROUP BY Product
ORDER BY Total_Revenue DESC
LIMIT 10;

-- Payment Method
SELECT
    PaymentMethod,
    COUNT(*) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue
FROM orders
GROUP BY PaymentMethod
LIMIT 10;

-- Order Status
SELECT
    OrderStatus,
    COUNT(*) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue
FROM orders
GROUP BY OrderStatus
LIMIT 10;

-- Top 5 Products
SELECT
    Product,
    SUM(TotalPrice) AS Revenue
FROM orders
GROUP BY Product
ORDER BY Revenue DESC
LIMIT 5;