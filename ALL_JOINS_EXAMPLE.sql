USE Example
Go

--CREAT 2 TABLES FOR THIS PROJECT 
CREATE TABLE Student
(ROLL_NO int Primary key not null,
ENAME varchar(10) not null ,
ADRESS varchar(40),
PHONE int,
AGE int not null,
)

CREATE TABLE StudentCourse
(COURSE_ID int not null,
Roll_No int, 
)

--INSERT DATA TO STUDENT COURSE;-
INSERT INTO Student
(ROLL_NO,ENAME,ADRESS,PHONE,AGE)
VALUES (1, 'HARSH', 'DELHI', 4444554, 18);
INSERT INTO Student
(ROLL_NO ,ENAME,ADRESS,PHONE,AGE)
VALUES (2, 'PRATIK', 'BIHAR', 4764213, 19);
INSERT INTO Student
(ROLL_NO ,ENAME,ADRESS,PHONE,AGE)
VALUES (3, 'RIYANKA', 'SILGURI', 2345766, 20);
INSERT INTO Student
(ROLL_NO ,ENAME,ADRESS,PHONE,AGE)
VALUES (4, 'DEEP', 'RAMNGAR', 1111453, 18);
INSERT INTO Student
(ROLL_NO ,ENAME,ADRESS,PHONE,AGE)
VALUES (5, 'SAPTARHI', 'KOLKATA', 5555213, 19);
INSERT INTO Student
(ROLL_NO ,ENAME,ADRESS,PHONE,AGE)
VALUES (6, 'DHANRAJ', 'BARABAJAR', 67548009, 20);
INSERT INTO Student
(ROLL_NO ,ENAME,ADRESS,PHONE,AGE)
VALUES (7, 'ROHIT', 'BALURGHAT', 6555101, 18);
INSERT INTO Student
(ROLL_NO ,ENAME,ADRESS,PHONE,AGE)
VALUES (8, 'NIRAJ', 'ALIPUR', 7685122, 19);

--INSERT DATA TO STUDENT TABLE 
INSERT INTO StudentCourse
(COURSE_ID,ROLL_NO)
VALUES (1,1);
INSERT INTO StudentCourse
(COURSE_ID,ROLL_NO)
VALUES (2,2);
INSERT INTO StudentCourse
(COURSE_ID,ROLL_NO)
VALUES (2,3);
INSERT INTO StudentCourse
(COURSE_ID,ROLL_NO)
VALUES (3,4);
INSERT INTO StudentCourse
(COURSE_ID,ROLL_NO)
VALUES (1,5);
INSERT INTO StudentCourse
(COURSE_ID,ROLL_NO)
VALUES (4,9);
INSERT INTO StudentCourse
(COURSE_ID,ROLL_NO)
VALUES (5,10);
INSERT INTO StudentCourse
(COURSE_ID,ROLL_NO)
VALUES (4,11);

--pratice for join statement 
--inner join
SELECT StudentCourse.COURSE_ID, Student.ENAME, Student.AGE
FROM Student
INNER JOIN StudentCourse
ON Student.ROLL_NO = StudentCourse.Roll_No;
--left join
SELECT Student.ENAME,StudentCourse.COURSE_ID
FROM Student
LEFT JOIN StudentCourse
ON Student.ROLL_NO = StudentCourse.Roll_No;
--right join 
SELECT Student.ENAME,StudentCourse.COURSE_ID
FROM Student
RIGHT JOIN StudentCourse
ON Student.ROLL_NO = StudentCourse.Roll_No;
--full join
SELECT Student.ENAME, StudentCourse.COURSE_ID
FROM Student
FULL JOIN StudentCourse
ON Student.ROLL_NO = StudentCourse.Roll_No;
