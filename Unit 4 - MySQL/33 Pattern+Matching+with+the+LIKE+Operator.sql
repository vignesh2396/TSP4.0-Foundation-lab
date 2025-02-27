/*
% - 0 or more characters
_ - any single character
*/

select * from countries.countries;

-- This is equivalent to using the equality (=) operator
select * from countries.countries where name like 'Australia';

-- Searches for records where the name contains 'British'
select * from countries.countries where name like '%British%';

-- Searches for records where the name contains a comma
select * from countries.countries where name like '%,%';

-- Searching for 6 character (including whitespace) names
select * from countries.countries where name like '______';