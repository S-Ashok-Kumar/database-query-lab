USE sql_practice;

-- Q1 Show all employees who earn more than 50,000.
SELECT * FROM employees WHERE salary > 50000;

-- Q2 Show employees who belong to department 101.
SELECT * FROM employees WHERE dept_id = 101;

-- Q3 Show employees whose name starts with 'A'.
SELECT * FROM employees WHERE name LIKE "A%";

-- Q4 Show employees hired after 2021.
SELECT * FROM employees WHERE hire_date > '2021-12-31';

-- Q5 Show employees whose salary is between 45,000 and 65,000.
SELECT * FROM employees WHERE salary BETWEEN 45000 AND 65000;

-- Q6 Show employees whose name contains letter 'e'.
SELECT * FROM employees WHERE name LIKE "%e%";

-- Q7 Show employees sorted by salary in descending order.
SELECT * FROM employees ORDER BY salary DESC;

-- Q8 Show top 3 highest paid employees.
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

-- Q9 Show distinct department IDs from employees table.
SELECT DISTINCT dept_id FROM employees;

-- Q10 Show employees who are not in department 102.
SELECT * FROM employees WHERE dept_id NOT IN (102);