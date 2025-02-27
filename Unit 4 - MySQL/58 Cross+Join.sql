/*
A CROSS JOIN is a join operation that produces the Cartesian product of two tables.
Essentially, it pairs each row of the first table with every row of the second table. 
If the first table has M rows and the second table has N rows, the result will have M x N rows. 
This type of join does not require any condition to join the two tables.

Syntax:
SELECT column(s) FROM left_table
CROSS JOIN right_table;
*/


select count(*) from hr.emp;
select count(*) from hr.dept;


-- Cross Join
select * from hr.emp
cross join hr.dept;
