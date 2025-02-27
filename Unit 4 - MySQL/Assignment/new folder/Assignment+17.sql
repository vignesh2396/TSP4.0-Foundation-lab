SELECT
	t2.name as region_name,
	sum(t1.population) as region_population
FROM countries.countries as t1
LEFT JOIN countries.regions as t2
ON t1.region_id = t2.id
GROUP BY t2.name
ORDER BY region_population DESC;