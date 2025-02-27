-- Filtering the aggregated column using the HAVING clause
SELECT 
    job, AVG(sal)
FROM
    hr.emp    
WHERE job <> 'CLERK'
GROUP BY job
HAVING avg(sal) > 2000 ;

-- The HAVING clause can also filter the non-aggregated columns
SELECT 
    job, AVG(sal)
FROM
    hr.emp    
GROUP BY job
HAVING avg(sal) > 2000 and job <> 'CLERK';