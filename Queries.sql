---- 1
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.gender,
	salaries.salaries
FROM
	employees
INNER JOIN salaries ON salaries.emp_no=employees.emp_no

--------2
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

-------3
SELECT
	employees.first_name,
	employees.last_name,
	dept_manager.dept_no,
	dept_manager.emp_no,
	departments.dept_name
FROM
	dept_manager
INNER JOIN departments ON departments.dept_no=dept_manager.dept_no
INNER JOIN employees ON employees.emp_no=dept_manager.emp_no


-------4
SELECT
	employees.first_name,
	employees.last_name,
	dept_emp.dept_no,
	dept_emp.emp_no,
	departments.dept_name
FROM
	dept_emp
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no


-------5
SELECT
	first_name,
	last_name,
	gender
	
FROM employees
	
WHERE
	first_name = 'Hercules'
	AND last_name like 'B%';


------6
SELECT
	employees.first_name,
	employees.last_name,
	employees.gender,
	dept_emp.dept_no,
	dept_emp.emp_no
FROM
	dept_emp
	
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no

WHERE dept_emp.dept_no = 'd007' 


------7
SELECT
	employees.first_name,
	employees.last_name,
	dept_emp.dept_no,
	dept_emp.emp_no,
	departments.dept_name
FROM
	dept_emp
	
INNER JOIN employees ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no

WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no = 'd005'


-------8
SELECT last_name,
	Count(last_name)

FROM
employees

GROUP BY
	last_name
	
ORDER BY
	count  DESC;
