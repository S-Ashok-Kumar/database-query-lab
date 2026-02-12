USE sql_practice;

show tables;

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM projects;

-- Day 2 — GROUP BY + Aggregates 
-- Use employees table for all unless mentioned.

-- Q1. Find the total number of employees.
SELECT COUNT(*) AS num_of_emp FROM employees;

-- Q2. Find the average salary of all employees.
SELECT AVG(salary) AS avg_sal FROM employees;

-- Q3. Find the maximum salary in the company.
SELECT MAX(salary) AS max_sal FROM employees;

-- Q4. Show the number of employees in each department.
SELECT dept_id, count(*) AS num_of_emp FROM employees GROUP BY dept_id;

-- Q5. Show the total salary paid by each department.
SELECT dept_id, SUM(salary) AS tot_sal FROM employees GROUP BY dept_id;

-- Q6. Show the average salary in each department.
SELECT dept_id, AVG(salary) AS avg_sal_in_each_dept FROM employees GROUP BY dept_id;

-- Q7. Show departments where the total salary is greater than 1,20,000.
SELECT dept_id, SUM(salary) AS tot_dept_sal FROM employees GROUP BY dept_id HAVING tot_dept_sal > 120000;

-- Q8. Show departments having more than 2 employees.
SELECT dept_id, COUNT(dept_id) AS dept_count FROM employees GROUP BY dept_id HAVING dept_count > 2;

-- Q9. Show the highest salary in each department.
SELECT dept_id, MAX(salary) AS highest_sal FROM employees GROUP BY dept_id;

-- Q10. Show department IDs and count of employees, sorted by employee count descending.
SELECT dept_id, COUNT(dept_id) AS dept_count FROM employees GROUP BY dept_id ORDER BY dept_count DESC;