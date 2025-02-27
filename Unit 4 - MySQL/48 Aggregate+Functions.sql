select * from hr.emp;


select count(emp_no) from hr.emp;


select count(*) from hr.emp;

-- this will not count null values
select count(comm) from hr.emp;

-- using coalesce to replace nulls
select count(coalesce(comm,1)) from hr.emp;

-- using distinct with count
select count(distinct job) from hr.emp;

-- multiple aggregations
select count(*), sum(sal), avg(sal), min(sal), max(sal) from hr.emp;

-- some aggregations work on various data value types
select min(e_name), max(e_name) from hr.emp;

-- this requires a group by clause, otherwise the grouping context is not clear
select e_name, sum(sal) from hr.emp;