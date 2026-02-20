USE sql_practice;

show tables;

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM projects;

-- JOINS (Employees + Departments + Projects)
-- --------------------------------------------

-- Q1. Show employee name along with their department name.
SELECT e.name, d.dept_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id;

-- Q2. Show employee name and salary along with department name.
SELECT e.name, e.salary, d.dept_name FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id;

-- Q3. Show all employees and their project names. (If an employee has no project, still show the employee.)
SELECT e.name, p.project_name FROM employees AS e LEFT JOIN projects AS p ON e.emp_id = p.emp_id;

-- Q4. Show employees working on project 'Alpha'.
SELECT e.name, p.project_name FROM employees AS e JOIN projects AS p ON e.emp_id = p.emp_id WHERE p.project_name = 'Alpha';

-- Q5. Show department name and number of employees in each department.
SELECT d.dept_name, COUNT(*) AS num_of_emp FROM employees AS e INNER JOIN departments AS d ON e.dept_id = d.dept_id GROUP BY d.dept_name;

-- Q6. Show employee name and number of projects they are working on.
SELECT e.name, COUNT(p.emp_id) AS num_of_projects FROM employees AS e LEFT JOIN projects AS p ON e.emp_id = p.emp_id GROUP BY e.emp_id, e.name;

-- Q7. Show employees who are not assigned to any project.
SELECT e.name, COUNT(p.emp_id) AS num_of_projects FROM employees AS e LEFT JOIN projects AS p ON e.emp_id = p.emp_id GROUP BY e.emp_id, e.name HAVING COUNT(p.emp_id) = 0;

-- Q8. Show department name and total salary paid in each department.
SELECT d.dept_name, SUM(e.salary) AS total_sal FROM departments d JOIN employees e ON d.dept_id=e.dept_id GROUP BY d.dept_id;

-- Q9. Show project name and count of employees working on each project.
SELECT p.project_name, COUNT(e.emp_id) AS emp_count FROM projects p LEFT JOIN employees e ON p.emp_id = e.emp_id GROUP BY p.project_name;
				-- OR 
SELECT p.project_name, COUNT(e.emp_id) AS emp_count FROM employees e RIGHT JOIN projects p ON e.emp_id = p.emp_id GROUP BY p.project_name;

-- Q10. Show employee name, department name, and project name (all three tables joined).
SELECT e.name, d.dept_name, p.project_name FROM employees e LEFT JOIN departments d ON e.dept_id = d.dept_id LEFT JOIN projects p ON e.emp_id = p.emp_id;