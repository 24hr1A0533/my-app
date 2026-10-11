CREATE DATABASE college;
USE college;
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary DECIMAL(10,2)
);
INSERT INTO employee VALUES
(1, 'John', 'CSE', 30000),
(2, 'Alice', 'ECE', 35000),
(3, 'Bob', 'CSE', 40000),
(4, 'David', 'ME', 32000);
SELECT * FROM employee;
UPDATE employee
SET salary = 45000
WHERE emp_id = 3;
SELECT * FROM employee;
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    marks INT
);
DESC student;
SHOW TABLES;
INSERT INTO student VALUES
(101, 'Alice', 'CSE', 85),
(102, 'Bob', 'ECE', 78),
(103, 'Charlie', 'CSE', 92),
(104, 'David', 'ME', 70);
SELECT * FROM student;
UPDATE employee
SET department = 'IT'
WHERE emp_id = 2;
DELETE FROM employee
WHERE emp_id = 4;
SELECT * FROM employee;


CREATE DATABASE company;
USE company;

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

INSERT INTO employee VALUES
(1, 'John', 'CSE', 30000),
(2, 'Alice', 'ECE', 40000),
(3, 'Bob', 'CSE', 50000),
(4, 'David', 'ME', 35000),
(5, 'Ravi', 'ECE', 45000);
SELECT emp_name, salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);
SELECT emp_name, salary
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);
SELECT emp_name
FROM employee
WHERE department = (
    SELECT department
    FROM employee
    WHERE emp_name = 'John'
);
SELECT emp_name, salary
FROM employee
WHERE salary > (
    SELECT salary
    FROM employee
    WHERE emp_name = 'John'
);

SELECT emp_name, department
FROM employee
WHERE department IN (
    SELECT department
    FROM employee
    WHERE salary > 40000
);



CREATE DATABASE college1;

USE college1;

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    marks INT
);

INSERT INTO student VALUES
(101, 'Alice', 'CSE', 85),
(102, 'Bob', 'ECE', 78),
(103, 'Charlie', 'CSE', 92);

SELECT * FROM student;
Step 2: Save the script
Save the file as:
college.sql
Step 3: Execute
Click the Execute button ⚡ in MySQL Workbench.
Complete script


CREATE DATABASE college;

USE college;

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    marks INT
);

INSERT INTO student VALUES
(101, 'Alice', 'CSE', 85),
(102, 'Bob', 'ECE', 78),
(103, 'Charlie', 'CSE', 92);

SELECT * FROM student;
