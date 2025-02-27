/*
UNION: The UNION operator is used to combine the result-set of two or 
more SELECT queries.

UNION ALL: The UNION operator selects distinct values by default. 
UNION ALL allows duplicate values.

Syntax:
SELECT column(s) FROM table1
UNION
SELECT column(s) FROM table2
*/

-- union
select * from hr.emp
union
select * from hr.emp;

-- union all
select * from hr.emp
union all
select * from hr.emp;

-- union where both queries have no duplicate records
select * from hr.emp where dept_no=20
union
select * from hr.emp where dept_no=10;

-- union all where both queries have no duplicate records
select * from hr.emp where dept_no=20
union all
select * from hr.emp where dept_no=10;

-- union where both queries have some duplicate records for dept_no 20
select * from hr.emp where dept_no=20
union
select * from hr.emp where dept_no in (10,20);

-- union all where both queries have some duplicate records for dept_no 20
select * from hr.emp where dept_no=20
union all
select * from hr.emp where dept_no in (10,20);

-- both queries should return the same number of columns
select emp_no, sal from hr.emp where dept_no=20
union
select emp_no from hr.emp where dept_no in (10,20);
