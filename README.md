# sql-challenge

## Imports data from a set of csv files, organizes it into a relational database, and performs the following queries:

* Joins employees and salaries tables and prints employee number, last name, first name, sex, and salary.

* Uses sub-query to extract year from hire_date column and print first name, last name, and hire date for every employee hired in 1986.

* Lists highest-paid manager in each department with relevant information:
    Joins employees, departments, dept_managers, and salaries tables.
    Uses GROUP BY, ORDER BY, AND DISTINCT ON to select manager with highest salary per department.
    Prints each manager's dept_no, dept_name, emp_no, last_name, first_name, and salary.

* For all employees, lists their employee number, last name, first name, and department name.

* For all employees whose first name is Hercules and whose last name starts with B, lists last name, first name, and sex.

* For all employees in the Sales department, lists their employee number, last name, first name, and department name.

* For all employees in either the Sales or Development departments, lists their employee number, last name, first name, and department name.

* Lists how many employees have each last name in descending order by count. Foolsday is the last name printed...

