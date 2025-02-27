SELECT 
    region_id, 
    round(AVG(population),2) as avg_population
FROM
    countries.countries
GROUP BY region_id;