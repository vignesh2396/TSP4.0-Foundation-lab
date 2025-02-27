SELECT 
    region_id, 
    SUM(population) as total_population, 
    SUM(area_km2) as total_area_km2,
    SUM(population) / SUM(area_km2) as population_density
FROM
    countries.countries
GROUP BY region_id
ORDER BY population_density DESC;