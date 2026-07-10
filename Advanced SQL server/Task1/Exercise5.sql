USE ProductDB;
GO

IF OBJECT_ID('Orders', 'U') IS NOT NULL
    DROP TABLE Orders;

IF OBJECT_ID('Customers', 'U') IS NOT NULL
    DROP TABLE Customers;

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers VALUES
(1, 'Rahul'),
(2, 'Priya'),
(3, 'Amit'),
(4, 'Sneha');

INSERT INTO Orders VALUES
(101, 1, '2025-01-01'),
(102, 1, '2025-01-05'),
(103, 1, '2025-01-10'),
(104, 1, '2025-01-15'),
(105, 2, '2025-01-03'),
(106, 2, '2025-01-08'),
(107, 2, '2025-01-12'),
(108, 3, '2025-01-06'),
(109, 3, '2025-01-14'),
(110, 4, '2025-01-02'),
(111, 4, '2025-01-09'),
(112, 4, '2025-01-16'),
(113, 4, '2025-01-20'),
(114, 4, '2025-01-25');

WITH CustomerOrderCounts AS
(
    SELECT
        CustomerID,
        COUNT(OrderID) AS OrderCount
    FROM Orders
    GROUP BY CustomerID
)

SELECT
    c.CustomerID,
    c.Name,
    coc.OrderCount
FROM CustomerOrderCounts coc
JOIN Customers c
ON c.CustomerID = coc.CustomerID
WHERE coc.OrderCount > 3;
