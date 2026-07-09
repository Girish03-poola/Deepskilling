CREATE DATABASE IF NOT EXISTS SQL_Practice;
USE SQL_Practice;

DROP TABLE IF EXISTS Products;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(1, 'Laptop', 'Electronics', 80000),
(2, 'Mobile', 'Electronics', 50000),
(3, 'TV', 'Electronics', 80000),
(4, 'Headphones', 'Electronics', 5000),
(5, 'Sofa', 'Furniture', 35000),
(6, 'Bed', 'Furniture', 35000),
(7, 'Table', 'Furniture', 15000),
(8, 'Chair', 'Furniture', 5000),
(9, 'Dictionary', 'Books', 700),
(10, 'Encyclopedia', 'Books', 700),
(11, 'Novel', 'Books', 500),
(12, 'Magazine', 'Books', 300);

SELECT *
FROM (
    SELECT ProductID,
           ProductName,
           Category,
           Price,
           ROW_NUMBER() OVER (PARTITION BY Category ORDER BY Price DESC) AS RowNumber
    FROM Products
) AS Result
WHERE RowNumber <= 3;

SELECT *
FROM (
    SELECT ProductID,
           ProductName,
           Category,
           Price,
           RANK() OVER (PARTITION BY Category ORDER BY Price DESC) AS RankValue
    FROM Products
) AS Result
WHERE RankValue <= 3;

SELECT *
FROM (
    SELECT ProductID,
           ProductName,
           Category,
           Price,
           DENSE_RANK() OVER (PARTITION BY Category ORDER BY Price DESC) AS DenseRankValue
    FROM Products
) AS Result
WHERE DenseRankValue <= 3;
