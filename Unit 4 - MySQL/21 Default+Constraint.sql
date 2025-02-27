/*
CREATE TABLE table_name (
column1 data_type DEFAULT default_value,
column2 data_type DEFAULT default_value,
...
);

ALTER TABLE schema.table
MODIFY COLUMN column data_type 
DEFAULT default_value;
*/

-- Creating the constraints_demo table with the default constraints
create table temp_schema.constraints_demo 
(col_1 integer default 1, col_2 varchar(255) default 'd value');

-- Default value will be inserted in col_1
insert into temp_schema.constraints_demo (col_2) values ('Test');

select * from temp_schema.constraints_demo;

-- Default value will be inserted in col_2
insert into temp_schema.constraints_demo (col_1) values (1000);

drop table temp_schema.constraints_demo;




