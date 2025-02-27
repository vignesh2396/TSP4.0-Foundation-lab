select * from countries.countries;

-- leftmost 5 characters
select name, left(name,5) from countries.countries;

-- leftmost 10 characters
select name, left(name,10) from countries.countries;

-- leftmost 100 characters
select name, left(name,100) from countries.countries;

-- leftmost 5 and rightmost 5 characters
select name, left(name,5), right(name,5) from countries.countries;