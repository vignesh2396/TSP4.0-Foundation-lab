/*
1. From the COUNTRIES table in the COUNTRIES schema, return a column called density_km2 (which is the population divided by the area_km2) in addition to the name, population and area_km2 columns

2. Add another column to your query calling density_class which returns "High" if the density_km2 value is over 500, if its less than or equal to 500 but higher than 100 and 'Low' if its 100 or less.

3. Filter the resulting table to include only records where the density_class is 'High'.
*/
SELECT 
    name,
    population,
    area_km2,
    population / area_km2 AS density_km2,
    case
		when population / area_km2 > 500 then 'High'
        when population / area_km2 > 100 then 'Medium'
        else 'Low'
	end as density_class
FROM
    countries.countries
WHERE
	case
		when population / area_km2 > 500 then 'High'
        when population / area_km2 > 100 then 'Medium'
        else 'Low'
	end = 'High';