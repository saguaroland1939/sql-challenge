SELECT *
FROM employees AS e INNER JOIN salaries AS s ON e.emp_no = s.emp_no

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e INNER JOIN salaries AS s ON e.emp_no = s.emp_no

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'

SELECT emp_no, last_name, first_name, dept_no, dept_name
FROM employees JOIN dept_manager JOIN departments

SELECT emp_no, last_name, first_name, dept_name
FROM employees JOIN dept_emp JOIN departments

SELECT last_name, first_name, sex
FROM employees
WHERE first_name = "Hercules" AND last_name LIKE "B%"

SELECT emp_no, last_name, first_name, dept_name
FROM employees JOIN dept_emp JOIN departments
WHERE dept_name = "Sales"

SELECT emp_no, last_name, first_name, dept_name
FROM employees JOIN dept_emp JOIN departments
WHERE dept_name = "Sales" OR dept_name = "Development"

SELECT COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name DESC
