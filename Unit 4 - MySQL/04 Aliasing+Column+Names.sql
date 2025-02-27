-- Aliasing name as country_name
SELECT NAME AS COUNTRY_NAME FROM COUNTRIES.COUNTRIES;

-- Mixing aliased columns with non-aliased columns
SELECT 
    COUNTRY_ID,
    NAME AS COUNTRY_NAME,
    CAPITAL AS CAPITAL_CITY,
    POPULATION
FROM
    COUNTRIES.COUNTRIES;

-- The "AS" keyword is optional but encouraged for readability
SELECT 
    COUNTRY_ID,
    NAME COUNTRY_NAME,
    CAPITAL CAPITAL_CITY,
    POPULATION
FROM
    COUNTRIES.COUNTRIES;

-- Aliased column refereces with whitespaces
SELECT 
    COUNTRY_ID,
    NAME AS 'Country Name',
    CAPITAL AS 'Capital City',
    POPULATION
FROM
    COUNTRIES.COUNTRIES;