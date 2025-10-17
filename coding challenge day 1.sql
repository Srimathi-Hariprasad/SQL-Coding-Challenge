create database hospital;
use hospital;

-- Write a SQL command to create a table named Patients with fields (PatientID, PatientName, Age, Gender, AdmissionDate).--
create table Patients ( 
PatientID int primary key, 
PatientName varchar(50), 
Age int,
Gender enum ("M","F"),
AdmissionDate date);
select* from patients;

-- Write a SQL command to add a new column DoctorAssigned VARCHAR(50) to the Patients table --
alter table patients
add column DoctorAssigned varchar(50);
select * from patients;

-- Write a SQL command to modify the column PatientName from VARCHAR(50) to VARCHAR(100)--
alter table Patients
modify column PatientName varchar(100);
select * from Patients;

-- Write a SQL command to rename the table.the hospital wants to rename Patients to Patient_Info--
alter table Patients
rename to Patient_Info;

-- At year-end, they want to delete all patient records but keep the table. Later, they want to remove it permanently--
truncate table Patient_Info;
drop table Patient_Info;


 


 
