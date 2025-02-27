/*
SELECT DISTINCT column(s) FROM table
*/

select region_id from countries.countries;

SELECT DISTINCT
    region_id
FROM
    countries.countries;

SELECT DISTINCT
    region_id, name
FROM
    countries.countries;

SELECT DISTINCT
    region_id, sub_region_id
FROM
    countries.countries;

select distinct * from countries.countries;