
-- part 1
SELECT 
    *
FROM countries.countries
WHERE population > (SELECT AVG(population) FROM countries.countries);

-- part 2
CREATE VIEW countries.vw_above_avg_population AS
SELECT 
    *
FROM countries.countries
WHERE population > (SELECT AVG(population) FROM countries.countries);

SELECT * FROM countries.vw_above_avg_population;

 -- part 3
 DROP VIEW countries.vw_above_avg_population;