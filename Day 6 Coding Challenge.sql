CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE Employees(
EmpID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
JoinDate DATE 
);

CREATE TABLE Students (
StudentID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50)
);

INSERT INTO Employees (EmpID, FirstName, LastName, JoinDate) VALUES
(1, "Hari", "Prasad", "2020-07-15"),
(2, "Sri", "Mathi", "2015-04-20"),
(3, "Subbash", "Kumar", "2024-05-18"),
(4, "Aravind", "Raj", "2015-02-01");

INSERT INTO Students (StudentID, FirstName, LastName) VALUES
(1, "Kiran", "Singh"),
(2, "Ishwarya", "Rajesh"),
(3, "Abi", "Vicky"),
(4, "Rajesh", "Kannan"),
(5, "Jayanth", "Kumar");

-- Convert FirstName to Uppercase and LastName to Lowercase---
SELECT UPPER(FirstName) AS FirstName_Upper,
       LOWER(LastName) AS LastName_Lower
FROM Employees;


-- Combine FirstName & LastName---
SELECT CONCAT(FirstName, " ", LastName) AS FullName
FROM Employees;

-- Get First 3 letters of FirstName--
SELECT SUBSTRING(FirstName, 1, 3) AS FisrtName_Part
FROM Employees;
       
-- Date Function--
SELECT FirstName, LastName,
DATEDIFf(NOW(), JoinDate) AS Tenure_Days,
YEAR(NOW()), YEAR(JoinDate) AS Tenure_Years
FROM Employees;

-- User Defind Function--
DELIMITER //
CREATE FUNCTION GetFullName(FirstName VARCHAR(50), LastName VARCHAR(50))
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
     RETURN CONCAT(FirstName, " ", LastName);
END //

DELIMITER ;

-- Use The Function--
SELECT StudentID, GetFullName(FirstName, LastName) AS FullName
FROM Students;

