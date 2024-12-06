
--///////////////////////////////////////////////////////////////////////////////////////////
--                                  Data analysis
--///////////////////////////////////////////////////////////////////////////////////////////
--1 List the employee number, last name, first name, sex, and salary of each employee

Select 
	employees.first_name, 
	employees.last_name,
	employees.sex, 
	salaries.salary 
from 
	employees 
inner join 
	salaries 
on 
	employees.emp_no = salaries.emp_no
ORDER BY 
	employees.emp_no;
--2 List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3 List the manager of each department along with their department number, department name, employee number, last name, and first name

select 
	dept_manager.dept_no, 
	dept_manager.emp_no,
	employees.first_name, 
	employees.last_name, 
	departments.dept_name
from 
	dept_manager 
inner join 
	departments 
on 
	dept_manager.dept_no = departments.dept_no 
inner join 
	employees 
on 
	dept_manager.emp_no = employees.emp_no
ORDER BY 
	employees.emp_no;

--4 List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select
	dept_emp.dept_no,
	dept_emp.emp_no,
	employees.first_name, 
	employees.last_name, 
	departments.dept_name  
from 
	dept_emp 
inner join 
	employees 
on 
	dept_emp.emp_no = employees.emp_no
inner join 
	departments 
on 
	departments.dept_no = dept_emp.dept_no
ORDER BY 
	employees.emp_no;

-- 5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

Select 
	first_name, 
	last_name,
	sex
from 
	employees 
where 
	first_name = 'Hercules' 
and 
	last_name 
like 'B%';


--6 List each employee in the Sales department, including their employee number, last name, and first name
select
	departments.dept_name,
	dept_emp.emp_no,
	employees.first_name, 
	employees.last_name 
from 
	employees 
inner join 
	dept_emp 
on 
	dept_emp.emp_no = employees.emp_no
inner join 
	departments 
on 
	departments.dept_no = dept_emp.dept_no 
and 
	departments.dept_name = 'Sales'
ORDER BY 
	employees.emp_no;

--7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name

select
	departments.dept_name,
	dept_emp.emp_no,
	employees.first_name, 
	employees.last_name 
from 
	employees 
inner join 
	dept_emp 
on 
	dept_emp.emp_no = employees.emp_no
inner join 
	departments 
on 
	departments.dept_no = dept_emp.dept_no 
and 
	departments.dept_name = 'Sales' 
or 
   departments.dept_name = 'Development'
ORDER BY 
	employees.emp_no;

-- 8 List the frequency counts, in descending order, of all the employee last names
SELECT 
	last_name, 
	COUNT(last_name)
FROM 
	employees
GROUP BY 
	last_name 
ORDER BY COUNT(last_name) DESC; 
