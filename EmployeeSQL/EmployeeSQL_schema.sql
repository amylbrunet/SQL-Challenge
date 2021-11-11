-- create departments table 
DROP TABLE departments
CREATE TABLE departments (
	dept_no VARCHAR(20),
	dept_name VARCHAR(50) NOT NULL,
	PRIMARY KEY (dept_no)
);

select * from departments;

-- create employees table 
DROP TABLE employees

CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date VARCHAR(20) NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(20) NOT NULL,
	hire_date VARCHAR(20) NOT NULL,
	PRIMARY KEY (emp_no)
	);
	
select * from employees;

-- create department employee table
DROP table dept_emp
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp

-- create department managers table
DROP TABLE dept_manager
CREATE TABLE dept_manager(
	dept_no VARCHAR(20) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_manager

-- create salaries table
DROP TABLE salaries
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries

-- create titles table
DROP TABLE titles
CREATE TABLE titles(
	title_id VARCHAR(20),
	title VARCHAR(100),
	PRIMARY KEY (title_id)
);

select * from titles







