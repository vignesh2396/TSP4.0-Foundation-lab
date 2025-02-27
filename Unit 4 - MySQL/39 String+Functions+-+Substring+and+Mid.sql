select * from countries.countries;

-- start position 1 and len of 3
select name, substring(name,1,3) from countries.countries;

-- start position -5 and len of 5
select name, substring(name,-5,5) from countries.countries;

-- start position 5 and len of 3
select name, substring(name, 5 , 3) from countries.countries;

-- mid is a synonym for substring
select name, mid(name, 5 , 3) from countries.countries;

-- if you omit the third argument the remaining characters are returned
select name, mid(name, 5) from countries.countries;