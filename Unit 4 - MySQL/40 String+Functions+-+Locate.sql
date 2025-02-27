select * from countries.countries;

-- locate the start position of '('
select name, locate('(', name) from countries.countries;

-- locate the start position of '(' and '('
select name, locate('(', name), locate(')', name) from countries.countries;

-- substring with locate to extract text within parenthesis
SELECT 
    name,
    SUBSTRING(name,
        LOCATE('(', name) + 1,
        LOCATE(')', name) - LOCATE('(', name) - 1)
FROM
    countries.countries;

-- locate with a start position
select name, locate(' ', name, 9) from countries.countries;

-- searching for the second occurence of the whitespace character only
SELECT 
    name, LOCATE(' ', name, LOCATE(' ', name))
FROM
    countries.countries;