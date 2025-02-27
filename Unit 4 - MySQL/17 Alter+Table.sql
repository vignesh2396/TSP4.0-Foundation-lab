/*
ALTER TABLE schema.table
SOME ACTION;

Examples of actions:
ADD column_name datatype
DROP COLUMN column_name
MODIFY COLUMN column_name datatype
RENAME COLUMN old_column_name TO new_column_name
RENAME TO new_table_name
...
;
*/


-- creating the alter_demo table with 2 records
CREATE TABLE temp_schema.alter_demo (
    col_1 VARCHAR(10),
    col_2 INTEGER
);

insert into temp_schema.alter_demo
values
('John', 12),
('James', 14);


select * from temp_schema.alter_demo;

-- add column
alter table temp_schema.alter_demo
add column col_add integer;


-- adding multiple columns
alter table temp_schema.alter_demo
add column col_add_2 integer,
add column col_add_3 date;


-- dropping columns
alter table temp_schema.alter_demo
drop column col_add,
drop column col_add_2,
drop column col_add_3;


describe temp_schema.alter_demo;

select * from temp_schema.alter_demo;

-- modify column
alter table temp_schema.alter_demo
modify column col_2 varchar(10);

-- modify column will not work if the data type is not compatable with pre-existing values
alter table temp_schema.alter_demo
modify column col_1 integer;

-- rename column
alter table 
temp_schema.alter_demo 
rename column col_1 to col_str;

-- rename table
alter table 
temp_schema.alter_demo 
rename temp_schema.alter_demo_renamed;