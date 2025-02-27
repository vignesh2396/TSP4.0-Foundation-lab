/*
The Create Table As Statement, or CTAS as its abbreviated, allows you to create a 
new table by copying the structure and data from an existing table or the result 
of a SELECT query.


CREATE TABLE schema.table AS 
(SELECT Statement);

*/

create table temp_schema.ctas_demo_1 as
select * from temp_schema.table_1;

create table temp_schema.ctas_demo_2 as
select col_num from temp_schema.table_1;