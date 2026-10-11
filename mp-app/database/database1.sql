CREATE DATABASE IF NOT EXISTS college;

USE college;

CREATE TABLE IF NOT EXISTS student (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(30),
    marks INT
);

INSERT INTO student (name, department, marks)
VALUES
('Alice', 'CSE', 85),
('Bob', 'ECE', 78),
('Charlie', 'CSE', 92);