create database ecommerceDB;
use ecommerceDB;

CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(50),
Price DECIMAL (10,2)
);

CREATE TABLE Sales (
SaleID INT PRIMARY KEY,
ProductID INT,
Quantity INT,
TotalAmount DECIMAL(10,2),
SaleDate DATE
);

CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50),
DepartmentName VARCHAR (50)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, "EcoDot", 4500),
(2, "Laptop", 65000),
(3, "AirBuds", 3000),
(4, "SmartPhone", 35000);

INSERT INTO Sales (SaleID, ProductID, Quantity, TotalAmount, SaleDate) VALUES
(1, 1, 2, 9000, "2025-07-04"),
(2, 2, 1, 65000, "2025-09-24"),
(3, 3, 4, 12000, "2024-01-16"),
(4, 4, 1, 35000, "2024-05-10");

INSERT INTO Employees (EmpID, EmpName, DepartmentName) VALUES
(1, "Srimathi", "Finance"),
(2, "Joshi", "IT"),
(3, "Hari", "IT"),
(4, "Barath", "Marketting"),
(5, "Kavya", "HR"),
(6, "Manju", "Marketting"),
(7, "Subbash", "IT"),
(8, "Aravind", "Finance");

-- ORDER BY & LIMIT--
SELECT ProductName, Price
FROM Products
ORDER BY Price DESC
LIMIT 3;

-- AGGRIGATE FUNCTION--
SELECT COUNT(*) AS Total_Sale FROM Sales;
SELECT SUM(TotalAmount) FROM Sales;
SELECT MAX(TotalAmount) FROM Sales;
SELECT MIN(TotalAmount) FROM Sales;
SELECT AVG(TotalAmount) FROM Sales;
  
  -- GROUP BY & HAVINGS--
SELECT DepartmentName, COUNT(EmpID) AS TotalEmployees
FROM Employees
GROUP BY DepartmentName
HAVING COUNT(EmpID) > 10;
