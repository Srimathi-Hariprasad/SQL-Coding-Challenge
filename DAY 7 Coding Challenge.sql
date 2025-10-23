CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50),
DepartmentID INT,
HireDate DATE
);

CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);

CREATE TABLE Salaries (
SalaryID INT PRIMARY KEY,
EmpID INT,
SalaryAmount DECIMAL(10,2),
PayDate DATE,
FOREIGN KEY (EmpID) REFERENCES Employees(EmpID)
);

INSERT INTO Employees (EmpID, EmpName, DepartmentID, HireDate) VALUES
(101, "Hari Prasad", 1, "2021-07-18"),
(102, "Sri Mathi", 2, "2018-04-20"),
(103, "Ajay Kumar", 3, "2023-05-14"),
(104, "Arun Kumar", 4, "2015-01-03");

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, "HR"),
(2, "Finance"),
(3, "Marketing"),
(4, "IT");

INSERT INTO Salaries (SalaryID, EmpID, SalaryAmount, PayDate) VALUES
(1, 101, 50000, "2013-05-20"),
(2, 102, 60000, "2013-06-14"),
(3, 103, 45000, "2013-08-01"),
(4, 104, 70000, "2013-02-05");


-- Stored Procedure--
DELIMITER $$

CREATE PROCEDURE GetEmpByID(IN emp_id INT)
BEGIN
   SELECT *
   FROM Employees
   WHERE EmpID = emp_id;
END $$

DELIMITER $$;

CALL GetEmpByID(101);


-- CREATE VIEW--
CREATE VIEW EmployeeDepView AS
SELECT
e.EmpName,
d.DepartmentName
FROM Employees e
JOIN Departments d
ON e.DepartmentID = d.DepartmentID;

-- Complax View--
CREATE VIEW EmployeeFullInfo AS
SELECT
e.EmpID,
e.EmpName,
d.DepartmentName,
s.SalaryAmount,
s.PayDate
FROM Employees e
JOIN Departments d 
ON e.DepartmentID = d.DepartmentID
JOIN Salaries s
ON e.EmpID = s.EmployeeID;

SELECT * FROM EmployeeDepView;
SELECT * FROM EmployeeFullInfo;



ON e.DepartmentID = d.DepartmentID
JOIN Salaries s
ON e.EmpID = s.EmpID;



