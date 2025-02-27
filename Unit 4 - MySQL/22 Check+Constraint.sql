/*
CREATE TABLE table_name (
column1 data_type CHECK (expression),
column2 data_type CHECK (expression),
...
);

ALTER TABLE schema.table
MODIFY COLUMN column data_type CHECK (expression);
*/

drop table temp_schema.constraints_demo;
-- Creating the constraints_demo table with the check constraint on col_1
create table 
temp_schema.constraints_demo 
(col_1 integer check (col_1>10), 
col_2 varchar(255));

-- Violates the check constraint
insert into 
temp_schema.constraints_demo 
values (5, 'Test1');


insert into 
temp_schema.constraints_demo 
values (12, 'Test1');


drop table temp_schema.constraints_demo;