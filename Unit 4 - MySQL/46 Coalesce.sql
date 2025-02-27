select * from hr.emp;

select sal, comm, sal+comm from hr.emp;

-- default value of 0
select sal, comm, coalesce(comm, 0) from hr.emp;

-- using coalesce to replace nulls in arithmetic expression
select sal, comm, sal+coalesce(comm,0) from hr.emp;