select * from countries.countries;


-- null values are not the same as 0 or empty strings
select * from countries.countries where sub_region_id = 0;
select * from countries.countries where sub_region_id = '';

-- to filter null values you need to specify is null in the where clause
select * from countries.countries where sub_region_id is null;