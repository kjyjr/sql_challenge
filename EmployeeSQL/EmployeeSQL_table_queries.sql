--Data Analysis

-- 1. List the employee number, last name, first name, sex, and salary of each 
	--employee.

SELECT employees.emp_no, employees.last_name, employees.first_name,
employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;


-- 2. List the first name, last name, and hire date for the employees who were hired
	--in 1986.

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE hire_date BETWEEN '1985-12-31' AND '1987-01-01';
-- Note: Use of "BETWEEN" operator advised by instructor, and code for it completed
	-- with reference to this site:
	-- https://www.w3schools.com/sql/sql_between.asp

-- 3. List the manager of each department along with their department number, 
		-- department name, employee number, last name, and first name.

SELECT dm.emp_no, dm.dept_no, d.dept_name, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS d
ON dm.dept_no = d.dept_no
JOIN employees AS e
ON dm.emp_no = e.emp_no;

-- 4. List the department number for each employee along with that employee’s 
		-- employee number, last name, first name, and department name.

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name 
FROM dept_emp AS de
JOIN employees AS e
ON de.emp_no = e.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is 
		-- Hercules and whose last name begins with the letter B.

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, 
		-- last name, and first name.

SELECT departments.dept_name, employees.emp_no, employees.last_name, 
employees.first_name
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales';

-- 7. List each employee in the Sales and Development departments, including their 
		-- employee number, last name, first name, and department name.

SELECT departments.dept_name, employees.emp_no, employees.last_name, 
employees.first_name
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8. List the frequency counts, in descending order, of all the employee last 
		-- names (that is, how many employees share each last name).

SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;
