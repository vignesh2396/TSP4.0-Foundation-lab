/*
SELECT column(s)
FROM table
ORDER BY column(s) ASC|DESC
LIMIT o,n
*/

select * from countries.countries;
select * from countries.countries limit 10;
select * from countries.countries limit 10,10;
select * from countries.countries limit 20,5;