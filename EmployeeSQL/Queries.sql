-- A series of queries for SQL_homework_db Database.

-- Joins employees and salaries tables and prints employee number,
-- last name, first name, sex, and salary.

SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees AS e INNER JOIN salaries AS s ON e.emp_no = s.emp_no



-- Uses sub-query to extract year from hire_date column and print first name,
-- last name, and hire date for every employee hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM employees.hire_date) = 1986;



-- Lists highest-paid manager in each department with relevant information:
--    Joins employees, departments, dept_managers, and salaries tables.
--    Uses GROUP BY, ORDER BY, AND DISTINCT ON to select manager with highest salary per department.
--    Prints each manager's dept_no, dept_name, emp_no, last_name, first_name, and salary.

SELECT DISTINCT ON (dm.dept_no) dm.dept_no, d.dept_name, dm.emp_no, last_name, first_name, salary
FROM employees AS e INNER JOIN dept_managers AS dm ON e.emp_no = dm.emp_no
INNER JOIN departments AS d ON d.dept_no = dm.dept_no
INNER JOIN salaries AS s ON e.emp_no = s.emp_no
ORDER BY dm.dept_no, s.salary DESC



-- For all employees, lists their employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept_name
FROM employees AS e INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no



-- For all employees whose first name is Hercules and whose last name starts with B,
-- lists last name, first name, and sex.

SELECT last_name, first_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'



-- For all employees in the Sales department, lists their employee number,
-- last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept_name
FROM employees AS e INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales'



-- For all employees in either the Sales or Development departments,
-- lists their employee number, last name, first name, and department name.

SELECT e.emp_no, last_name, first_name, dept_name
FROM employees AS e INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'



-- Lists how many employees have each last name in descending order by count.
-- Foolsday is the last name printed...

SELECT last_name, COUNT(last_name) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC