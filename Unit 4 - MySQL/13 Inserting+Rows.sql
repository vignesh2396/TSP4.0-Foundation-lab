/*
INSERT INTO SCHEMA.TABLE(column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
*/


create schema temp_schema;

CREATE TABLE temp_schema.table_1 (
    col_string VARCHAR(255),
    col_num NUMERIC(10 , 2 ),
    col_date DATE
);

select * from temp_schema.table_1;

insert into temp_schema.table_1(col_string, col_num, col_date)
values ('Hello', 123.53, '2020-12-31');

-- dates and string values must be enclosed in single or double quotes
insert into temp_schema.table_1(col_string, col_num, col_date)
values (Hello, 123.53, '2020-12-31');

insert into temp_schema.table_1(col_string, col_num, col_date)
values ('Hello', 123.53, 2020-12-31);

desc temp_schema.table_1;
-- numbers do not need to be enclosed in quotes
-- numerical values inserted into string columns will be converted into strings
insert into temp_schema.table_1(col_string, col_num, col_date)
values (1234, '123.53', '2020-12-31');


-- date entries must be in MySQL standard date format
-- the date entry in the below statement is invalid
insert into temp_schema.table_1(col_string, col_num, col_date)
values ('1234', '123.53', '2020-31-10');

/*
INSERT INTO SCHEMA.TABLE
VALUES (value1, value2, value3, ...);
*/

-- omitting the column names will insert the values in column order as per the table definition
insert into temp_schema.table_1 values ('Hello2', 900.53, '2023-12-31');

select * from temp_schema.table_1;

-- you can specify columns in a different order
insert into temp_schema.table_1(col_date, col_string, col_num)
values ('2020-12-31','Hello3', 1000.53);

-- NULL signifies the absense of a value, it's not the same as an empty string
insert into temp_schema.table_1(col_date, col_string, col_num)
values ('2020-12-31','', NULL);