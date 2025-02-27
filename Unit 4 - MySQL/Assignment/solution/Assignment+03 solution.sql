/*
1. Copy the EMP and DEPT tables from the HR schema to the assignment_schema using the CTAS statement
*/
create table assignment_schema.emp as select * from hr.emp;

select * from assignment_schema.emp;

create table assignment_schema.dept as select * from hr.dept;

select * from assignment_schema.dept;


/*
2. On each of these these tables please add a Primary and Foreign Key constraint. 
*/

alter table assignment_schema.dept
add primary key (dept_id);

alter table assignment_schema.emp
add foreign key (dept_no) references assignment_schema.dept(dept_id);


/*
3. As a test, try to insert a value in the foreign key column that does not exist in the primary key column.
*/

insert into assignment_schema.emp values
(1234, 'Test','Test', 1234, '1980-01-01',1000,0,100);


drop schema assignment_schema;


