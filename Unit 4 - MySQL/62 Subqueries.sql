SELECT 
    *
FROM
    COUNTRIES.COUNTRIES
WHERE POPULATION = (SELECT 
						MAX(POPULATION)
					FROM
						COUNTRIES.COUNTRIES);