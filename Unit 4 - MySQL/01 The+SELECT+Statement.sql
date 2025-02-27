-- Selecting the id and name column from the regions table
-- Using dot notation to qualify the table name with the schema
SELECT ID, NAME FROM COUNTRIES.REGIONS;

-- Case sensitivity does not matter when querying records
select id from countries.regions;


-- You can select the columns in any order and repeat the same column multiple times
select name, id, id from countries.regions;

-- Use of whitespace characters does not influence the query execution
-- You can format the query in different ways
SELECT 
    name, id, id
FROM
    countries.regions;