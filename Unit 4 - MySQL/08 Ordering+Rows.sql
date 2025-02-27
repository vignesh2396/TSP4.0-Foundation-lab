/*
SELECT column(s)
FROM table
ORDER BY column(s) ASC|DESC
*/

SELECT 
    *
FROM
    countries.countries
ORDER BY region_id;

SELECT 
    *
FROM
    countries.countries
ORDER BY region_id DESC;

SELECT 
    region_id, country_id
FROM
    countries.countries
ORDER BY region_id , country_id;

SELECT 
    region_id, country_id
FROM
    countries.countries
ORDER BY region_id DESC , country_id ASC;

SELECT 
    *
FROM
    countries.countries
ORDER BY country_code DESC; 