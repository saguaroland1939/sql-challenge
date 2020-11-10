CREATE TABLE employees 
(
	emp_no VARCHAR(10),
	PRIMARY KEY (emp_no),
	emp_title_id VARCHAR (10),
	birth_date DATE,
	first_name VARCHAR (30),
	last_name VARCHAR (30),
 	sex VARCHAR (5),
	hire_date DATE
);

CREATE TABLE titles 
(
	title_id VARCHAR (10),
	PRIMARY KEY (title_id),
	title VARCHAR (30)
);

ALTER TABLE employees
ADD FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);

CREATE TABLE salaries
(
	emp_no VARCHAR (10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary MONEY
);

CREATE TABLE dept_managers
(
	dept_no VARCHAR (7),
	emp_no VARCHAR (10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

CREATE TABLE departments
(
	dept_no VARCHAR (7),
	PRIMARY KEY (dept_no),
	dept_name VARCHAR (30)
);

ALTER TABLE dept_managers
ADD FOREIGN KEY (dept_no) REFERENCES departments (dept_no);

CREATE TABLE dept_emp
(
	emp_no VARCHAR (10),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	dept_no VARCHAR (7),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY(emp_no, dept_no)
);
