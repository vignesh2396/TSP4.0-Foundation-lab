/*
FROM
SELECT
ORDER BY
LIMIT
*/

-- You should use the aliased column name in the order by clause as the select clause is executed before the order by clause
-- So the aliasing has already taken effect
SELECT 
    country_id, name AS country_name
FROM
    countries.countries
ORDER BY country_name;

SELECT 
    country_id, name AS country_name
FROM
    countries.countries
ORDER BY name;