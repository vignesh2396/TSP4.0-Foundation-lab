-- Creatint constraints_demo table with unique constraint
create table 
temp_schema.constraints_demo 
(col_1 integer unique, col_2 varchar(255));

insert into temp_schema.constraints_demo values (1, 'Row1');

select * from temp_schema.constraints_demo;

-- This insertion violates unique constraint
insert into temp_schema.constraints_demo values (1, 'Row1');

-- Unique constraint does not prevent NULL values
insert into temp_schema.constraints_demo values (NULL, 'Row1');

drop table temp_schema.constraints_demo;

-- To prevent null values combine unique with the not null constraint
create table temp_schema.constraints_demo (col_1 integer unique not null, col_2 varchar(255));

drop table temp_schema.constraints_demo;