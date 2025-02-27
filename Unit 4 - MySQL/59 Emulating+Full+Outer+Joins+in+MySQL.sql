-- creating dept_2 table
create table hr.dept_2 as 
select * from hr.dept where dept_id <> 10;

-- selecing records from dept_2 and emp
select * from hr.dept_2;
select * from hr.emp;

-- full outer join using left join, right join and union
select * from hr.emp as t1
left join hr.dept_2 as t2
on t1.dept_no = t2.dept_id
union
select * from hr.emp as t1
right join hr.dept_2 as t2
on t1.dept_no = t2.dept_id;

-- dropping dept_2 table
drop table hr.dept_2;