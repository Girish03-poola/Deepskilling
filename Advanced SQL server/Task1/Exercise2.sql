CREATE DATABASE IF NOT EXISTS SalesDB;
USE SalesDB;

DROP TABLE IF EXISTS OrderDetails;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Region VARCHAR(30)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers VALUES
(1,'Rahul','North'),
(2,'Priya','South'),
(3,'Amit','East'),
(4,'Sneha','West');

INSERT INTO Products VALUES
(101,'Laptop','Electronics'),
(102,'Mobile','Electronics'),
(103,'Chair','Furniture'),
(104,'Table','Furniture');

INSERT INTO Orders VALUES
(1,1,'2024-01-10'),
(2,2,'2024-01-11'),
(3,3,'2024-01-12'),
(4,4,'2024-01-13');

INSERT INTO OrderDetails VALUES
(1,1,101,2),
(2,1,103,1),
(3,2,102,3),
(4,2,104,2),
(5,3,101,1),
(6,3,104,4),
(7,4,103,2),
(8,4,102,1);

SELECT
    c.Region,
    p.Category,
    SUM(od.Quantity) AS TotalQuantity
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY c.Region, p.Category;

SELECT
    c.Region,
    p.Category,
    SUM(od.Quantity) AS TotalQuantity
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY c.Region, p.Category WITH ROLLUP;

SELECT
    c.Region,
    p.Category,
    SUM(od.Quantity) AS TotalQuantity
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY c.Region, p.Category

UNION ALL

SELECT
    c.Region,
    NULL,
    SUM(od.Quantity)
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY c.Region

UNION ALL

SELECT
    NULL,
    p.Category,
    SUM(od.Quantity)
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
GROUP BY p.Category

UNION ALL

SELECT
    NULL,
    NULL,
    SUM(od.Quantity)
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID;
