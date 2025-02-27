-- create view
CREATE VIEW countries.population AS
SELECT 
	t1.name as country,
	t4.region_name,
	t5.sub_region_name,
	t1.population as country_population,
	t2.region_population,
	t3.sub_region_population
FROM COUNTRIES.COUNTRIES as t1
JOIN (SELECT REGION_ID, SUM(POPULATION) as region_population FROM COUNTRIES.COUNTRIES GROUP BY REGION_ID) as t2
ON t1.sub_region_id = t2.region_id
JOIN (SELECT SUB_REGION_ID, SUM(POPULATION) as sub_region_population FROM COUNTRIES.COUNTRIES GROUP BY SUB_REGION_ID) as t3
ON t1.sub_region_id = t3.sub_region_id
JOIN (SELECT id, name AS region_name  FROM COUNTRIES.REGIONS) as t4
ON t1.region_id = t4.id
JOIN (SELECT id, name AS sub_region_name  FROM COUNTRIES.SUB_REGIONS) as t5
ON t1.sub_region_id = t5.id;

-- query the view
select * from countries.population;


-- information schema
select * from information_schema.views where table_schema = 'COUNTRIES';


-- update view
CREATE OR REPLACE VIEW countries.population AS
SELECT 
	t1.name as country,
	t4.region_name as region,
	t5.sub_region_name as sub_region,
	t1.population as country_population,
	t2.region_population,
	t3.sub_region_population
FROM COUNTRIES.COUNTRIES as t1
JOIN (SELECT REGION_ID, SUM(POPULATION) as region_population FROM COUNTRIES.COUNTRIES GROUP BY REGION_ID) as t2
ON t1.sub_region_id = t2.region_id
JOIN (SELECT SUB_REGION_ID, SUM(POPULATION) as sub_region_population FROM COUNTRIES.COUNTRIES GROUP BY SUB_REGION_ID) as t3
ON t1.sub_region_id = t3.sub_region_id
JOIN (SELECT id, name AS region_name  FROM COUNTRIES.REGIONS) as t4
ON t1.region_id = t4.id
JOIN (SELECT id, name AS sub_region_name  FROM COUNTRIES.SUB_REGIONS) as t5
ON t1.sub_region_id = t5.id;

-- drop view
DROP VIEW countries.population;

