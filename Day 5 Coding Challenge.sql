CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Students (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(50),
CourseID int
);

CREATE TABLE COURSES (
CourseID INT PRIMARY KEY,
CourseName VARCHAR(50)
);

CREATE TABLE Enrollments (
EnrollID INT PRIMARY KEY,
StudentID INT,
CourseID int
);

CREATE TABLE CurrentEmployees (
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50),
Department VARCHAR(50)
);

CREATE TABLE PastEmployees (
EmpID INT PRIMARY KEY,
EmpName varchar(50),
Department VARCHAR(50)
);


INSERT INTO Students (StudentID, StudentName, CourseID) VALUES
(1, "Ajith", 1001),
(2, "Devi", 1002),
(3, "Arun", 1003),
(4, "Basker", 1004),
(5, "Anu", 1005);
INSERT INTO Students (StudentID, StudentName, CourseID) VALUES
(6, "Meena", Null);

INSERT INTO Courses (CourseID, CourseName) VALUES
(1001, "Fullstack Development"),
(1002, "Software Testing"),
(1003, "Data Analytics"),
(1004, "Devops"),
(1005, "Cloud Computing"),
(1006, "Web Development");

INSERT INTO CurrentEmployees (EmpID, EmpName, Department) VALUES
(1, "Divya", "Sales"),
(2, "Saran", "HR"),
(3, "Priya", "IT"),
(4, "Akash", "Finance"),
(5, "Prakash", "IT");

INSERT INTO PastEmployees (EmpID, EmpName, Department) VALUES
(1, "Nila", "Marketting"),
(2, "Ramesh", "IT"),
(3, "Priya", "IT"),
(4, "Dev", "Finance");

SELECT * FROM Students;
SELECT * FROM Courses;
-- Inner Join--
SELECT Students.StudentName ,
Courses.CourseName 
FROM Students
INNER JOIN
Courses
ON
Students.StudentID = Courses.CourseID;
SELECT * FROM Students;

-- Left & Right Join--
SELECT Students.StudentName,
Courses.CourseName
FROM Students
LEFT JOIN
Courses
ON
Students.StudentID = Courses.CourseID;
SELECT * FROM Students;

SELECT Students.StudentName,
Courses.CourseName
FROM Students
RIGHT JOIN Courses
ON Students.StudentID = Courses.CourseID;

-- Union & Union All--
SELECT EmpName, Department FROM CurrentEmployees
UNION
SELECT EmpName, Department FROM PastEmployees;

SELECT EmpName, Department FROM CurrentEmployees
UNION ALL
SELECT EmpName, Department FROM PastEmployees;
