-- Create employees table
CREATE TABLE employees(
    emp_no INT PRIMARY KEY NOT NULL,
    title_id VARCHAR(10) NOT NULL,
    birth_date VARCHAR(20) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    hire_date VARCHAR(30) NOT NULL
    );
SELECT * FROM employees;

-- Create departments table
CREATE TABLE departments(
    dept_no VARCHAR(30) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(50) NOT NULL
);
SELECT * FROM departments;

-- Create dept_employees table
CREATE TABLE dept_employees(
    emp_no INT NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_employees;

-- Create dept_managers table
CREATE TABLE dept_managers(
    dept_no VARCHAR(30),
    emp_no INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
SELECT * FROM dept_managers;

-- Create salaries table
CREATE TABLE salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM salaries;

-- Create titles table
CREATE TABLE titles(
    title_id VARCHAR(10) NOT NULL,
    title VARCHAR(30) NOT NULL,
    FOREIGN KEY (title_id) REFERENCES employees(title_id)
);
SELECT * FROM titles;

DROP TABLE departments;
DROP TABLE dept_employees;
DROP TABLE dept_managers;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;