CREATE DATABASE sql_practice;

USE sql_practice;


CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

SHOW TABLES;

INSERT INTO departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance');

SELECT * FROM departments;


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    salary INT,
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

SHOW TABLES;

INSERT INTO employees VALUES
(1, 'Asha', 101, 60000, '2021-01-10'),
(2, 'Ravi', 102, 45000, '2022-03-15'),
(3, 'Kiran', 101, 70000, '2020-07-20'),
(4, 'Meena', 103, 40000, '2023-02-11'),
(5, 'Arjun', 102, 50000, '2021-09-01'),
(6, 'Neha', 101, 65000, '2022-12-05');

SELECT * FROM employees;


CREATE TABLE projects (
    proj_id INT PRIMARY KEY,
    emp_id INT,
    project_name VARCHAR(50),
    FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

SHOW TABLES;

INSERT INTO projects VALUES
(1, 1, 'Alpha'),
(2, 1, 'Beta'),
(3, 2, 'Gamma'),
(4, 3, 'Alpha'),
(5, 5, 'Delta'),
(6, 6, 'Beta');

SELECT * FROM projects;
