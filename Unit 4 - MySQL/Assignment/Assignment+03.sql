/*
1. Copy the EMP and DEPT tables from the HR schema to the assignment_schema 
using the CTAS statement
*/
create table assignment_schema.dept AS
select * from hr.dept;

create table assignment_schema.emp AS
select * from hr.emp;

alter table assignment.dept
add constraint pk_dept 

/*
2. On each of these these tables please add a Primary and Foreign Key constraint. 
*/



/*
3. As a test, try to insert a value in the foreign key 
column that does not exist in the primary key column.
*/

