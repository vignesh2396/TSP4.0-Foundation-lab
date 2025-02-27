-- inserting multiple records with individual insert into statements
INSERT INTO TEMP_SCHEMA.TABLE_1 (col_string,col_num,col_date) VALUES ('Insert1',12.3,'2020-01-01');
INSERT INTO TEMP_SCHEMA.TABLE_1 (col_string,col_num,col_date) VALUES ('Insert2',14.3,'2020-01-01');
INSERT INTO TEMP_SCHEMA.TABLE_1 (col_string,col_num,col_date) VALUES ('Insert3',19.3,'2020-01-01');


-- single insert into statement inserting multiple records
INSERT INTO TEMP_SCHEMA.TABLE_1
    (col_string,col_num,col_date)
VALUES
    ('Insert4',12.3,'2020-01-01'),
    ('Insert5',14.3,'2020-01-01'),
    ('Insert6',19.3,'2020-01-01');

-- column specification is optional provided the values are in column order
INSERT INTO TEMP_SCHEMA.TABLE_1
VALUES
    ('Insert7',12.3,'2020-01-01'),
    ('Insert8',14.3,'2020-01-01'),
    ('Insert9',19.3,'2020-01-01');


/*
--The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

--This statement requires that the data types in source and target tables match.

INSERT INTO schema.table
(SELECT Statement)
*/

CREATE TABLE temp_schema.table_2 (
    col_string VARCHAR(255),
    col_num DECIMAL(10 , 2 ),
    col_date DATE
);
CREATE TABLE temp_schema.table_3 (
    col_num DECIMAL(10 , 2 ),
    col_date DATE,
    col_string VARCHAR(255)
);


-- inserting records from table_1 into table_2
INSERT INTO temp_schema.table_2
select * from temp_schema.table_1;


-- inserting records from table_1 into table_3
-- since table_3 has a different column order you are required to specify the column names in the same order as the source table
INSERT INTO temp_schema.table_3 (col_string, col_num, col_date)
select * from temp_schema.table_3;