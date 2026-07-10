CREATE DATABASE ProductDB;
GO

USE ProductDB;
GO

CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(101,'Laptop',80000),
(102,'Mobile',50000),
(103,'Headphones',5000);

WITH Calendar AS
(
    SELECT CAST('2025-01-01' AS DATE) AS CalendarDate

    UNION ALL

    SELECT DATEADD(DAY,1,CalendarDate)
    FROM Calendar
    WHERE CalendarDate < '2025-01-31'
)
SELECT CalendarDate
FROM Calendar
OPTION (MAXRECURSION 31);

CREATE TABLE StagingProducts
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO StagingProducts VALUES
(101,'Laptop',82000),
(102,'Mobile',51000),
(104,'Smart Watch',12000);

MERGE Products AS Target
USING StagingProducts AS Source
ON Target.ProductID = Source.ProductID

WHEN MATCHED THEN
UPDATE SET
    Target.ProductName = Source.ProductName,
    Target.Price = Source.Price

WHEN NOT MATCHED BY TARGET THEN
INSERT
(
    ProductID,
    ProductName,
    Price
)
VALUES
(
    Source.ProductID,
    Source.ProductName,
    Source.Price
);

SELECT * FROM Products;
