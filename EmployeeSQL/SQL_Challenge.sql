-- Create departments table
CREATE TABLE departments(
    dept_no VARCHAR(30) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(50) NOT NULL
);

SELECT * FROM departments;

-- Create dept_employees table
CREATE TABLE dept_employees(
    emp_no INT NOT NULL,
    dept_no VARCHAR(30)
);

SELECT * FROM dept_employees;

-- Create dept_managers table
CREATE TABLE dept_managers(
    dept_no VARCHAR(30),
    emp_no INT
);

SELECT * FROM dept_managers;

-- Create employeess table
CREATE TABLE employees(
    emp_no INT NOT NULL,
    emp_title_id VARCHAR(10),
    birth_date VARCHAR(20),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50),
    sex VARCHAR(10),
    hire_date VARCHAR(30)
);

SELECT * FROM employees;

-- Create salaries table
CREATE TABLE salaries(
    emp_no INT NOT NULL,
    salary INT
);

SELECT * FROM salaries;

-- Create titles table
CREATE TABLE titles(
    title_id VARCHAR(10),
    title VARCHAR(30),
    PRIMARY KEY (title_id)
);

SELECT * FROM titles;