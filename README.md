# SQL_Challenge

## Requirements & Summary
This assignment introduced me to PGAdmin and creating SQL databases. In addition to using PGAdmin, I used VS Code and an ERD Builder (GenMyModel).

In order to get the code to run properly, you need to first run the 'tables_schema.sql' file to create the database. Then you need to import in the .csv files in the order they are listed in the schema. Lastly, you can run the 'data_analysis.sql' to get the proper information for each query listed below.

This challenge went smoothly for me. The only real issue I ran into was getting the primary and foreign keys setup properly. Once I was able to work through that, the queries came very naturally to me. Overall, I really enjoyed this assignment and look forward to working in SQL databases.

## Background
It is a beautiful spring day, and it is two weeks since I have been hired as a new data engineer at Pewlett Hackard. My first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

In this assignment, I designed the tables to hold data in the CSVs, imported the CSVs into a SQL database, and answered questions about the data.

### Data Modeling
Inspect the CSVs and sketch out an ERD of the tables.

### Data Engineering
Use the information included to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

**When importing the CSV files, make sure you import them in the same order as the tables were created.**

### Data Analysis
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.



![png](EmployeeSQL/ERD_diagram.png)
