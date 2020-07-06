--QUERIES

--------------------------------------------------------------------------------------------------------------------------------------------
--1. List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.Salary
FROM Employees as E
INNER JOIN Salaries as S 
ON E.emp_no=S.emp_no

--------------------------------------------------------------------------------------------------------------------------------------------
--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT Employees.emp_no, Employees.last_name, Employees.hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--------------------------------------------------------------------------------------------------------------------------------------------
--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT Dept_Manager.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employees.last_name, Employees.first_name
FROM Dept_Manager
INNER JOIN Employees ON
Dept_Manager.emp_no=Employees.emp_no
INNER JOIN Departments ON
Dept_Manager.dept_no=Departments.dept_no

--------------------------------------------------------------------------------------------------------------------------------------------
--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT  Dept_Manager.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Dept_Manager
INNER JOIN Employees ON
Dept_Manager.emp_no=Employees.emp_no
INNER JOIN Departments ON
Dept_Manager.dept_no=Departments.dept_no

--------------------------------------------------------------------------------------------------------------------------------------------
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT Employees.first_name, Employees.last_name, Employees.sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--------------------------------------------------------------------------------------------------------------------------------------------
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT Employees.emp_no, Employees.first_name, Employees.last_name, Departments.dept_name 
FROM Dept_empl
INNER JOIN Employees ON
Employees.emp_no=Dept_empl.emp_no
INNER JOIN Departments ON
Dept_empl.dept_no=Departments.dept_no
WHERE dept_name = 'Sales';

--------------------------------------------------------------------------------------------------------------------------------------------
-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name 
FROM Dept_empl
INNER JOIN Employees ON
Employees.emp_no=Dept_empl.emp_no
INNER JOIN Departments ON
Dept_empl.dept_no=Departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--------------------------------------------------------------------------------------------------------------------------------------------
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, count(last_name)
FROM Employees
GROUP BY last_name
ORDER BY last_name;