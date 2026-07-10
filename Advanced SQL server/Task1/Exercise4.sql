USE SalesDB;
GO
IF OBJECT_ID('Sales','U') IS NOT NULL
DROP TABLE Sales;
GO

CREATE TABLE Sales
(
    ProductName VARCHAR(50),
    SaleMonth VARCHAR(20),
    Quantity INT
);

INSERT INTO Sales VALUES
('Laptop','January',10),
('Laptop','February',15),
('Laptop','March',20),
('Mobile','January',25),
('Mobile','February',18),
('Mobile','March',30),
('Headphones','January',12),
('Headphones','February',10),
('Headphones','March',14);

SELECT *
FROM Sales;
