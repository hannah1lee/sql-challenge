--List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary From employees
Join salaries On employees.emp_no = salaries.emp_no;


--List first name, last name, and hire date for employees who were hired in 1986.
Select first_name, last_name, hire_date From employees
Where hire_date Between '1986-01-01' And '1987-01-01';


--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name From departments 
Join dept_manager On dept_manager.dept_no = departments.dept_no
Join employees On employees.emp_no = dept_manager.emp_no;


--List the department of each employee with the following information: employee number, last name, first name, and department name.
Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name From dept_emp
Join departments On departments.dept_no = dept_emp.dept_no
Join employees On employees.emp_no = dept_emp.emp_no;


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select first_name, last_name, sex From employees
Where first_name = 'Hercules' And last_name Like 'B%';


--List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name From dept_emp
Join departments On departments.dept_no = dept_emp.dept_no
Join employees On employees.emp_no = dept_emp.emp_no
Where departments.dept_name = 'Sales';


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name From dept_emp
Join departments On departments.dept_no = dept_emp.dept_no
Join employees On employees.emp_no = dept_emp.emp_no
Where departments.dept_name = 'Sales' Or departments.dept_name = 'Development';


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select last_name, Count(last_name) As "frequency"
From employees
Group by last_name
Order by Count(last_name) Desc;

