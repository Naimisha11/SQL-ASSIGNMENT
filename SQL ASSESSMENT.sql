CREATE DATABASE WORKER;
USE WORKER;
CREATE TABLE WORKER (
WORKER_ID INT,
FIRST_NAME VARCHAR(40),
LAST_NAME VARCHAR(40),
SALARY INT,
JOINING_DATE DATETIME,
DEPARTMENT VARCHAR (40));
DROP TABLE WORKER;

INSERT INTO WORKER (WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
VALUES
(1,'MONIKA','ARORA',100000,'2014-02-20 9:00','HR'),
(2,'NIHARIKA','VERMA',8000,'2014-06-11 9:00','ADMIN'),
(3,'VISHAL','SINGHAL',300000,'2014-02-20 9:00','HR'),
(4,'AMITABH','SINDH',500000,'2014-02-20 9:00','ADMIN'),
(5,'VIVEK','BHATI',500000,'2014-06-11 9:00','ADMIN'),
(6,'VIPUL','DIWAN',200000,'2014-06-11 9:00','ACCOUNT'),
(7,'SATISH','KUMAR',75000,'2014-01-11 9:00','ACCOUNT'),
(8,'GEETIKA','CHAUHAN',90000,'2014-04-11 9:00','ADMIN');

SELECT*FROM WORKER;
-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and department descending.
SELECT*FROM WORKER ORDER BY FIRST_NAME ASC,DEPARTMENT DESC;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the worker table.
SELECT*FROM WORKER WHERE FIRST_NAME IN ('VIPUL','SATISH');

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT* FROM WORKER WHERE FIRST_NAME LIKE '_____H';

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1.
SELECT* FROM WORKER WHERE SALARY BETWEEN 1 AND 100000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table.


-- 6. Write an SQL query to show the top 6 records of a table.
SELECT*FROM WORKER LIMIT 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them.
SELECT DEPARTMENT, COUNT(WORKER_ID) as 'Number of Employee'
FROM WORKER GROUP BY DEPARTMENT HAVING COUNT(WORKER_ID) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there.
SELECT DEPARTMENT,count(WORKER_ID) FROM WORKER GROUP BY DEPARTMENT;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department.
SELECT FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT FROM WORKER WHERE(SALARY,DEPARTMENT)IN (SELECT MAX(SALARY), DEPARTMENT FROM WORKER GROUP BY DEPARTMENT);




create table std_info (
stdid int,
stdname varchar (250) not null ,
sex varchar(50),
percentage decimal (10,2) not null,
class int,
section varchar(11),
stream_s varchar(250),
dob date
);

INSERT INTO STD_INFO (STDID, STDNAME, SEX, PERCENTAGE,CLASS, SECTION, STREAM_S, DOB)
VALUES
(1001, 'John Smith', 'Male', 85, 12, 'A', 'Science', '1998-01-01'),
(1002, 'Jane Doe', 'Female', 90, 12, 'A', 'Science', '1997-07-15'),
(1003, 'Michael Lee', 'Male', 78, 11, 'B', 'Arts', '1999-03-22'),
(1004, 'Emily Jones', 'Female', 82, 11, 'B', 'Arts', '2000-05-10'),
(1005, 'David Miller', 'Male', 92, 10, 'C', 'Commerce', '1996-12-24'),
(1006, 'Sarah Garcia', 'Female', 87, 10, 'C', 'Commerce', '2001-09-08'),
(1007, 'Daniel Wilson', 'Male', 69, 9, 'A', 'Math', '1998-11-17'),
(1008, 'Jessica Hernandez', 'Female', 84, 9, 'A', 'Math', '2000-02-04'),
(1009, 'Christopher Moore', 'Male', 75, 8, 'B', 'Social Studies', '1999-06-01'),
(1010, 'Ashley Young', 'Female', 95, 8, 'B', 'Social Studies', '2001-04-21');

-- 1 To display all the records form STUDENT table.
SELECT*FROM STD_INFO;

-- FULL DATA IS DISPLAYED.
-- DETAILS OF STDID,STDNAME,SEX,PERCENTAGE, CLASS ,SECTION,STREAM_S,DOD IS DISPLAYED.

-- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB from student;
SELECT STDNAME,DOB FROM STD_INFO;

-- STUDENT NAME  AND DATE OF BIRTH DATA IS DISPLAYED.

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM STD_INFO WHERE percentage >= 80;

-- THE STUDENT DETAILS ARE DIPLAYED WHOSES PERCENTAGE IS GREATER OR EQUAL TO 80.
-- THE DETAILS OF STUDENTS ARE DISPLAYED WITH NAME CLASS SECTION.

-- 4. To display student name, stream and percentage where percentage of student is more than 80.
SELECT StdName, Stream_S, Percentage FROM STD_INFO WHERE percentage > 80;

-- THE DETAILS OF STUDENT ARE DISPLAYED WITH STREAM AND PERCENTAGE IS GREATER THAN 80 WITH STDNAME, STREAM AND PERCENTAGE.
-- THE DETAILS STUDENT NAME AND STREAMS AND PERCENTAGE IS DISPLAYED.
 
-- 5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * FROM STD_INFO WHERE STREAM_S= 'Science' AND percentage > 75; 

-- THE DETAILS OF STUDENTS ARE DISPLAYED WHOSE PERCENTAGE IS GREATER THAN 75 WITH STREAM CLASS,SECTION,STDNAME,DOB AND STDDID.
-- THE DETAILS OF STUDENTS ARE DISPLAYED WITH SCIENCE STREAM,CLASS AND DATE OF BIRTH.