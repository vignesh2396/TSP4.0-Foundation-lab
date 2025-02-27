/*
CREATE TABLE [IF NOT EXISTS] schema.table(
    column1 datatype [constraints],
    column2 datatype [constraints],
    column3 datatype [constraints],
    ....
    columnN datatype [constraints]
	)
  [options]
	;
*/

/*
DROP TABLE [IF EXISTS] schema.table;
*/

-- Creating the test table in the countries schema
create table countries.test(col1 varchar(2), col2 integer);

-- Adding "IF NOT EXISTS"
CREATE TABLE IF NOT EXISTS countries.test (
    col1 VARCHAR(2),
    col2 INTEGER
);

-- Dropping the table
DROP TABLE IF EXISTS countries.test;