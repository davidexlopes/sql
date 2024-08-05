select employees.first_name, titles.title from employees
left join titles 
on titles.emp_no = employees.emp_no
where titles.title not like "";


select count(first_name) as NoOfEmp from employees;

-- get the department where the employees work

select employees.first_name, departments.dept_name from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no
join departments
on departments.dept_no = dept_emp.dept_no;