Drop Table If Exists departments;
Create Table departments (
	dept_no varchar(50) Not Null,
	dept_name varchar(50) Not Null,
	Constraint "pk_departments" Primary Key ("dept_no")
);

Copy departments From '/Users/hannahlee/Desktop/Bootcamp/sql-challenge/EmployeeSQL/Resources/departments.csv' WITH (FORMAT csv, Header true);
Select * from departments

-----------------
Drop Table If Exists dept_emp;
Create Table dept_emp (
	emp_no integer Not Null,
	dept_no varchar(50) Not Null,
	Constraint "fk_dept_emp_emp_no" Foreign Key("emp_no") References "employees" ("emp_no"),
	Constraint "fk_dept_emp_dept_no" Foreign Key("dept_no") References "departments" ("dept_no")
);

Copy dept_emp From '/Users/hannahlee/Desktop/Bootcamp/sql-challenge/EmployeeSQL/Resources/dept_emp.csv' WITH (FORMAT csv, Header true);
Select * from dept_emp


-----------------
Drop Table If Exists dept_manager;
Create Table dept_manager (
	dept_no varchar(50) Not Null,
	emp_no integer Not Null,
	Constraint "fk_dept_manager_dept_no" Foreign Key("dept_no") References "departments" ("dept_no"),
	Constraint "fk_dept_manager_emp_no" Foreign Key("emp_no") References "employees" ("emp_no")
);
Copy dept_manager From '/Users/hannahlee/Desktop/Bootcamp/sql-challenge/EmployeeSQL/Resources/dept_manager.csv' WITH (FORMAT csv, Header true);
Select * from dept_manager


-----------------
Drop Table If Exists employees;
Create Table employees (
	emp_no integer Not Null,
	emp_title_id varchar(50) Not Null,
	birth_date date Not Null,
	first_name varchar(50) Not Null,
	last_name varchar(50) Not Null,
	sex varchar(5) Not Null,
	hire_date date Not Null,
	Constraint "pk_employees" Primary Key ("emp_no")
);
Copy employees From '/Users/hannahlee/Desktop/Bootcamp/sql-challenge/EmployeeSQL/Resources/employees.csv' WITH (FORMAT csv, Header true);
Select * from employees


-----------------
Drop Table If Exists salaries;
Create Table salaries(
	emp_no integer Not Null,
	salary integer Not Null,
	Constraint "fk_salaries_emp_no" Foreign Key("emp_no") References "employees" ("emp_no")
);
Copy salaries From '/Users/hannahlee/Desktop/Bootcamp/sql-challenge/EmployeeSQL/Resources/salaries.csv' WITH (FORMAT csv, Header true);
Select * from salaries


-----------------
Drop Table If Exists titles;
Create Table titles (
	title_id varchar(50),
	title varchar(50)
);
Copy titles From '/Users/hannahlee/Desktop/Bootcamp/sql-challenge/EmployeeSQL/Resources/titles.csv' WITH (FORMAT csv, Header true);
Select * from titles
