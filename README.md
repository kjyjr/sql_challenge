# sql_challenge

Background

This assignment served as a fictional research project on people who were employed by the company "Pewlett Hackard" during the 1980s and 1990s. Data on the employees, including their managers, was contained in six CSV files. The data consisted of employee titles and title ids; employee names and sexes, dates of birth and hire dates; company department names and numbers; and salaries.

The project involved the design of six tables to hold data from the CSV files on titles, employees, departments, department managers, department employees, and salaries, respectively. After creating the table schema first in a SQL database, the CSV files for their corresponding tables were then imported. Once loaded, SQL queries were run to analyze the data. 

In brief, the areas of data modeling, data engineering, and data analysis were covered in this exercise.

Data Modeling

Based on the table schema, an Entity Relationship Diagram was sketched using the QuickDBD tool available at https://www.quickdatabasediagrams.com.

Data Engineering

The table schema constructed for the six tables included specifications of data types, primary keys, foreign keys, and other constraints.

Data Analysis

Data analysis satisfied the following areas of inquiry:
    1 - employee number, last name, first name, sex, and salary of each employee
    2 - first name, last name, and hire date for the employees who were hired in 1986
    3 - the manager of each department along with that manager's corresponding department 
        number, department name, employee number, last name, and first name
    4 - the department number for each employee along with that employee’s employee number, last 
        name, first name, and department name
    5 - first name, last name, and sex of each employee whose first name is Hercules and whose last 
        name begins with the letter B
    6 - each employee in the Sales department, including that employee's employee number, last name, 
        and first name
    7 - each employee in the Sales and Development departments, including that employee's employee 
        number, last name, first name, and department name
    8 - frequency counts, in descending order, of all the employee last names (i.e., how many 
        employees share each last name)
