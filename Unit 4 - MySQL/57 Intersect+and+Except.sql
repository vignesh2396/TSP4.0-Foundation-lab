/*
The EXCEPT operator in MySQL is used to return the rows from the first
SELECT query that are not present in the results of the second SELECT query.

Syntax:
SELECT column(s) FROM table1
INTERSECT | EXCEPT
SELECT column(s) FROM table2
*/

select * from hr.emp
intersect
select * from hr.emp;


select * from hr.emp
except
select * from hr.emp;


select * from hr.emp where dept_no=10
intersect
select * from hr.emp where dept_no=20;


select * from hr.emp where dept_no=10
except
select * from hr.emp where dept_no=20;