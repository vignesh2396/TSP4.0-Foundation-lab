select * from countries.countries;

-- length of values in country_code column
select counrty_code, length(country_code) from countries.countries;

-- length of values in name column
select name, length(name) from countries.countries;

-- length of a string literal
select name, length('Hello') from countries.countries;