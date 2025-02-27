SELECT 
	*
FROM COUNTRIES.COUNTRIES;

SELECT SUB_REGION_ID, SUM(POPULATION) AS SUB_REGION_POPULATION FROM COUNTRIES.COUNTRIES GROUP BY SUB_REGION_ID;


-- self join
SELECT 
    T1.NAME AS COUNTRY,
    T1.SUB_REGION_ID,
    T1.POPULATION AS COUNTRY_POPULATION,
    T2.SUB_REGION_POPULATION
FROM COUNTRIES.COUNTRIES AS T1
JOIN (SELECT SUB_REGION_ID, SUM(POPULATION) AS SUB_REGION_POPULATION FROM COUNTRIES.COUNTRIES GROUP BY SUB_REGION_ID) AS T2
ON T1.SUB_REGION_ID = T2.SUB_REGION_ID;