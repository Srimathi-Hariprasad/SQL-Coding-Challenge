CREATE DATABASE CustomerDB;
USE CustomerDB;

-- Create Order and Order_History Table--
CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(50),
OrderDate DATE,
Amount DECIMAL(10,2)
);

CREATE TABLE Order_History (
OrderID INT PRIMARY KEY,
CustomerName VARCHAR(50),
OrderDate DATE,
Amount DECIMAL(10,2),
DELETEOn DATETIME
);

INSERT INTO Orders (OrderID, CustomerName, OrderDate, Amount) VALUES
(1, "Aravind Kumar", "2013-04-15", 5000),
(2, "Hariprasad Kumar", "2013-08-01", 7000),
(3, "Subbash Kumar", "2014-09-05", 3000),
(4, "Abi Vickey", "2015-02-09", 4000);

-- Create Trigger--
CREATE TRIGGER LogOrderDeletion
AFTER DELETE ON Orders
FOR EACH ROW
INSERT INTO Order_History (OrderID, CustomerName, OrderDate, Amount, DELETEOn)
VALUES (Old.OrderID, Old.CustomerName, Old.OrderDate, Old.Amount, NOW());

DELETE FROM Orders WHERE OrderID = 2;
-- Check Logs--
SELECT * FROM Order_History;

-- DCL Commands Grant & Revoke Access--
CREATE USER "HR"@"localhost" IDENTIFIED BY "Password123";
GRANT SELECT ON Orders TO "HR"@"localhost";
REVOKE SELECT ON Orders FROM "HR"@"localhost";
 
 -- Check Privileges--
SHOW GRANTS FOR 'junior_analyst'@'localhost';
 
 -- TCL Commands(Transaction Example)--
 CREATE TABLE Accounts (
 AccountID INT PRIMARY KEY,
 AccountName VARCHAR(50),
 Balance DECIMAL(10,2)
 );

INSERT INTO Accounts (AccountID, AccountName, Balance) VALUES
(101, "Meena", 10000.00),
(102, "Hari", 7000.00),
(103, "Manju", 5000.00),
(104, "Anu", 2000.00);

-- Test Transaction--
SELECT TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 1000
WHERE AccountID = 103; -- Debit Manju

SAVEPOINT after_debit;

UPDATE Accounts
SET Balance = Balance + 1000
WHERE AccountID = 101; -- Credit Meena

-- Commit is Sucessful--
COMMIT;

-- OR rollback if something goes wrong
-- ROLLBACK TO after_debit;
-- ROLLBACK;