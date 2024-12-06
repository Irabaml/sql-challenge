The challenge has three parts data modeling, engineering, and analysis.
I had six CVS files departments, dept_emp, dept_manager, employees, salaries, and titles.
 
With data modeling, I used the QuickDBD tool, to create an Entity Relationship diagram of the tale.
I also managed to create a table schema for each of the six CSV files and specified data types, primary keys, foreign keys, and other constraints, including composite keys.
The titles table has a relationship with the employees table and the employees table has a relationship with the salaires table. Many employees can have one title and one employee can have many salaries.
The employee's table has a relationship with the dept_manager and dept_emp tables. One employee can be a manager in two different departments as well an employee can be in different departments.
The department's table has a relationship with the dept_manager and dept_emp tables. The department can have more managers and also more employees. 

- for the departments table, the primary key is dept_no and is varchar since the data provided was not an integer, the table contains also dept_name as an attribute.
- for the employee's table, the primary key isemp_no and it is an integer, the table also contains the foreign key which is emp_title_id from the title table.
- for the salaries table, the foreign key is emp_no
- for the title table the primary key is title_id and it is varchar
- for dept_emp table contains the composite key from emp_no and dept_no which are - foreign keys in this table, and since they are primary keys in their tables somewhere, they must be not null.
- for dept_emp table contains the composite key from emp_no and dept_no which are - foreign keys in this table, and since they are primary keys in their tables somewhere, they must be not null.

 

I managed to provide a data analysis for the following items _ please find the query details in the data analysis SQL file:

- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for the employees who were hired in 1986.
- List the manager of each department along with their department number, department name, employee number, last name, and first name.
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- List the first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- List each employee in the Sales department, including their employee number, last name, and first name.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
  
    