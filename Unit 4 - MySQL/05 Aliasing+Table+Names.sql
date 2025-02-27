-- Qualifying the column references
SELECT 
    countries.countries.country_id, countries.countries.name
FROM
    countries.countries;

-- Aliasing the table as t1
-- Qualifying the tables with the alias
SELECT 
    t1.country_id, t1.name
FROM
    countries.countries AS t1;

-- You can alias the table without the schema qualification if you are on the current schema context
use countries;
SELECT 
    t1.country_id, t1.name
FROM
    countries t1;

-- You must consider the order of execution
-- The SQL engine executes the FROM clause before the SELECT clause so the "countries" reference is no longer recognized
use countries;
SELECT 
    countries.country_id, countries.name
FROM
    countries t1;