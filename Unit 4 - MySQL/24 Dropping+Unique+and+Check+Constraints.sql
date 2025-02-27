/*
alter table schema.table
drop constraint [constraint_name];
*/

-- Creating the constraints_demo table with the UNIQUE and CHECK constraints
create table temp_schema.constraints_demo 
(col_1 integer unique, col_2 integer check (col_2 >10));


-- Dropping the UNIQUE constraint
alter table temp_schema.constraints_demo
drop constraint col_1;

-- Using show create table to identify the check constraint name
show create table temp_schema.constraints_demo;

-- Dropping the CHECK constraint
alter table temp_schema.constraints_demo
drop constraint constraints_demo_chk_1;

drop table temp_schema.constraints_demo;