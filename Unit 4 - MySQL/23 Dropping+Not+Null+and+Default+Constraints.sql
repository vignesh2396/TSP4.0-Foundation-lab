-- Creating the constraints_demo table with the Not Null and Default constraints
create table temp_schema.constraints_demo 
(col_1 integer not null, col_2 integer default 10);

-- Dropping the UNIQUE constraint
alter table temp_schema.constraints_demo
drop constraint col_1;

-- Removing Not Null
alter table temp_schema.constraints_demo 
modify column col_1 integer;

-- Removing Default
alter table temp_schema.constraints_demo 
modify column col_2 integer;

drop table temp_schema.constraints_demo;