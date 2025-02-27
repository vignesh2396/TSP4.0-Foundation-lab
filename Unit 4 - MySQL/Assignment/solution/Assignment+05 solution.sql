/* 
In the COUNTRIES table of the COUNTRIES schema filter records to return those where BOTH of the following conditions are met:

Condition 1: The population is between 100 and 200 million (inclusive) or the area of the country is over 5 million km

Condition 2: The country name is a single word (contains no whitespaces)
*/
SELECT 
    *
FROM
    countries.countries
WHERE
    (population BETWEEN 100000000 AND 200000000
        OR area_km2 > 5000000)
	and
    (name not like '% %');