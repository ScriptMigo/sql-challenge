--List the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees e
inner join salaries s
on e.emp_no = s.emp_no

--List employees who were hired in 1986.
select *
from employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date desc

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, t.from_date, t.to_date, t.title
from employees e
inner join dept_manager dm
on e.emp_no = dm.emp_no
inner join departments d
on dm.dept_no = d.dept_no
inner join dept_emp de
on de.emp_no = e.emp_no
inner join titles t
on t.emp_no = e.emp_no
where t.title = 'Manager'

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de
on de.emp_no = e.emp_no
inner join departments d
on de.dept_no = d.dept_no

--List all employees whose first name is "Hercules" and last names begin with "B."
select *
from employees e
where first_name = 'Hercules' 
and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de
on de.emp_no = e.emp_no
inner join departments d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
inner join dept_emp de
on de.emp_no = e.emp_no
inner join departments d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales'
or d.dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select e.last_name, count(e.last_name) as Frequency
from employees e
group by e.last_name
order by Frequency desc

--Epilogue
select * from employees
where emp_no = 499942



