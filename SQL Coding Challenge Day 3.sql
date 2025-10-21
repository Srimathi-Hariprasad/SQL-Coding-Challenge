create database university;
use universit

Create table Students (
StudentID int primary key,
StudentName  varchar(100),
Department Varchar(10),
GPA decimal(3,2),
Email varchar(50)
);

insert into Students (StudentID, StudentName, Department, GPA, Email) values
(1, 'Diya', 'Chemistry', 7.3, 'diya@gmail.com'),
(2, 'Hari', 'Physics', 8.6, 'hari@gamail.com'),
(3, 'Jaya', 'Chemitry', 6.3, 'NULL'),
(4, 'Sneha', 'Maths', 9.2, 'shena@gmail.com'),
(5, 'Barath', 'English', 5.2, 'Null');

select distinct department from students;

select * from Students where GPA > 8.0;

select * from Students where Email is Null

select * from Students where Email is not Null;

select * from Students where department in ('Chemistry', 'Physics');

select * from Students where GPA between 5.6 and 8.5;

select * from Students where GPA not between 8.2 and 9.0;





