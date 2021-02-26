-- Create titles table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);
SELECT * FROM titles;

-- Create employees table
CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    title_no VARCHAR(10) NOT NULL,
    birth_date VARCHAR(20) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    hire_date VARCHAR(30),
    FOREIGN KEY (title_no) REFERENCES titles(title_id)
);
SELECT * FROM employees;

-- Create departments table
CREATE TABLE departments(
    dept_id VARCHAR(30) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);
SELECT * FROM departments;

-- Create dept_employees table
CREATE TABLE dept_employees(
    emp_no INT NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_id),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_id)
);
SELECT * FROM dept_employees;

-- Create dept_managers table
CREATE TABLE dept_managers(
    dept_no VARCHAR(30),
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_id),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_id)
);
SELECT * FROM dept_managers;

-- Create salaries table
CREATE TABLE salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_id)
);
SELECT * FROM salaries;