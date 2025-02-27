
-- Creating constraints_demo with not null constraint
CREATE TABLE temp_schema.constraints_demo (
    col_1 INTEGER NOT NULL,
    col_2 VARCHAR(255)
);

insert into temp_schema.constraints_demo 
values (1, 'Row1');

select * from temp_schema.constraints_demo;

-- Null values are allowed in col_2
insert into 
temp_schema.constraints_demo 
values (2, NULL);

-- Null values are NOT allowed in col_1
insert into 
temp_schema.constraints_demo 
values (0, 'Row2');


-- altering the table to add not null constraint to col_2
-- will only work if col_2 does not currently violate the constraint
alter table 
temp_schema.constraints_demo
modify column col_2 varchar(255) not null;

-- Deleting records violating not null constraint in col_2
delete from temp_schema.constraints_demo 
where col_1 = 2;


drop table temp_schema.constraints_demo;