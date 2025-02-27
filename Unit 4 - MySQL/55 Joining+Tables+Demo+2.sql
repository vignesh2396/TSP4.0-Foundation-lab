select * from countries.countries;
select * from countries.regions;
select * from countries.sub_regions;

-- left join countries and regions
-- will return an error due to ambiguous column reference
select
	name,
	population,
	area_km2,
	region_id,
	sub_region_id,
	id,
	name
from countries.countries
left join countries.regions
on countries.countries.region_id = countries.regions.id;

-- aliasing tables
select
	t1.name,
	t1.population,
	t1.area_km2,
	t1.region_id,
	t1.sub_region_id,
	t2.id,
	t2.name
from countries.countries as t1
left join countries.regions as t2
on t1.region_id = t2.regions.id;

-- adding another left join with the sub_regions table
select
	t1.name,
	t1.population,
	t1.area_km2,
	t1.region_id,
	t1.sub_region_id,
	t2.id,
	t2.name,
	t3.id,
	t3.name
from countries.countries as t1
left join countries.regions as t2
on t1.region_id = t2.id
left join countries.sub_regions as t3
on t1.sub_region_id = t3.id;

-- removing id columns
select
	t1.name as country,
	t1.population,
	t1.area_km2,
	t2.name as region,
	t3.name as sub_region
from countries.countries as t1
left join countries.regions as t2
on t1.region_id = t2.id
left join countries.sub_regions as t3
on t1.sub_region_id = t3.id;

-- aliasing columns
select
	t1.name as country,
    t1.population,
    t1.area_km2,
    t2.name as region,
    t3.name as sub_region
from countries.countries as t1
left join countries.regions as t2
on t1.region_id = t2.id
left join countries.sub_regions as t3
on t1.sub_region_id = t3.id
where t1.population > 100000000;