-- Create employees table with primary key emp_no. Wait on emp_title_id foreign key.
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

-- Create titles table with primary key title_id.
CREATE TABLE titles 
(
	title_id VARCHAR (10),
	PRIMARY KEY (title_id),
	title VARCHAR (30)
);

-- Add emp_title_id foreign key to employees table, references titles table.
ALTER TABLE employees
ADD FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);

-- Create salaries table with emp_no foreign key, references employees table.
CREATE TABLE salaries
(
	emp_no VARCHAR (10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary MONEY
);

-- Create dept_managers junction table with emp_no foreign key, references employees table.
-- Wait on dept_no foreign key.
CREATE TABLE dept_managers
(
	dept_no VARCHAR (7),
	emp_no VARCHAR (10),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

-- Create departments table with dept_no primary key.
CREATE TABLE departments
(
	dept_no VARCHAR (7),
	PRIMARY KEY (dept_no),
	dept_name VARCHAR (30)
);

-- Add dept_no foreign key, references departments table.
ALTER TABLE dept_managers
ADD FOREIGN KEY (dept_no) REFERENCES departments (dept_no);

-- Create dept_emp junction table with foreign keys to employees and departments tables.
CREATE TABLE dept_emp
(
	emp_no VARCHAR (10),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	dept_no VARCHAR (7),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY(emp_no, dept_no)
);
