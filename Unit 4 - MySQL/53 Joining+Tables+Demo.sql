select * from hr.emp;
select * from hr.dept;

-- default join
select
	*
from hr.emp
join hr.dept
on hr.emp.dept_no = hr.dept.dept_id;

-- inner join (default)
select
	*
from hr.emp
inner join hr.dept
on hr.emp.dept_no = hr.dept.dept_id;

-- left join
select
	*
from hr.emp
left join hr.dept
on hr.emp.dept_no = hr.dept.dept_id;

-- right join
select
	*
from hr.emp
right join hr.dept
on hr.emp.dept_no = hr.dept.dept_id;

-- prefixing table reference with column selections
select
	hr.emp.*,
	hr.dept.*
from hr.emp
right join hr.dept
on hr.emp.dept_no = hr.dept.dept_id;

-- aliasing column names
select
	hr.emp.e_name as emp_name,
    hr.emp.sal as salary,
    hr.dept.d_name as department,
    hr.dept.loc as location
from hr.emp
right join hr.dept
on hr.emp.dept_no = hr.dept.dept_id;

-- aliasing table names
select
	t1.e_name as emp_name,
    t1.sal as salary,
    t2.d_name as department,
    t2.loc as location
from hr.emp as t1
right join hr.dept as t2
on t1.dept_no = t2.dept_id;