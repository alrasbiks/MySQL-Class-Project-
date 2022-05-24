USE [SimpleDB]
GO

-- creating table start here:-

CREATE TABLE Emplpoyees
(Employee_ID int primary key not null,
Frist_Name varchar (10) not null,
Last_Name varchar(10),
Job_Name varchar(25),
Email varchar,
phone int, 
DOB Datetime not null,
Department_ID varchar not null,
job_ID int not null,);

CREATE TABLE Departments
(Department_ID int primary key not null,
Department_Name varchar(30) not null,
Location_ID int not null,);

CREATE TABLE Locations 
(Location_ID int primary key not null,
Location_Name varchar not null,);

CREATE TABLE Job 
(JobID int primary key not null,
Job_Title varchar (30) not null,
Min_Salary Decimal(10,2) not null,
Max_Salary Decimal(10,2) not null);

-- insert to table start from here, there is 4 table in this project

INSERT INTO Emplpoyees
(Employee_ID,Frist_Name,Last_Name,DOB,Department_ID,job_ID)
VALUES (101, 'Mike', 'Nagata',1990-04-17,1000,2034);

INSERT INTO Emplpoyees
(Employee_ID,Frist_Name,Last_Name,DOB,Department_ID,job_ID)
VALUES (107, 'Alejandro', 'Zambrano',1995-12-26,1000,2034);

INSERT INTO Emplpoyees
(Employee_ID,Frist_Name,Last_Name,DOB,Department_ID,job_ID)
VALUES (1071, 'Mike', 'Nagata',1990-04-17,1000,2034);

INSERT INTO Departments 
(Department_ID,Department_Name,Location_ID)
VALUES (1000,'Managment',01);

INSERT INTO Departments 
(Department_ID,Department_Name,Location_ID)
VALUES (1001,'Markting',01);

/*to drop table
DROP TABLE Emplpoyees,Departments; */

UPDATE Emplpoyees
SET [Employee_ID] = 101
WHERE Last_Name = 'Nagata' AND Frist_Name = 'Mike' 
GO

SELECT *  
FROM Emplpoyees; 

SELECT DISTINCT *
FROM Emplpoyees; 

-- to delete the duplication --
--firstly to determine the doubcation
SELECT Frist_Name, Last_Name, COUNT (*)
FROM [dbo].[Emplpoyees]
GROUP BY Frist_Name,Last_Name
HAVING COUNT(*) >1

--here is to delete them 
DELETE FROM [dbo].[Emplpoyees]
WHERE Employee_ID not IN
(SELECT MAX(Employee_ID)
FROM [dbo].[Emplpoyees]
GROUP BY Frist_Name,Last_Name)