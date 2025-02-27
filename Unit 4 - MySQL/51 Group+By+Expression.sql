SELECT 
    emp_no,
    sal,
    comm,
    CASE
        WHEN sal > 2000 THEN 'High'
        WHEN sal > 1000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_band
FROM
    hr.emp;

-- Group By Expression
SELECT 
    CASE
        WHEN sal > 2000 THEN 'High'
        WHEN sal > 1000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_band,
    count(*)
FROM
    hr.emp
GROUP BY
    CASE
        WHEN sal > 2000 THEN 'High'
        WHEN sal > 1000 THEN 'Medium'
        ELSE 'Low'
    END;

-- you can reference the alias column name
-- but this goes against SQL order of execution   
SELECT 
    CASE
        WHEN sal > 2000 THEN 'High'
        WHEN sal > 1000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_band,
    count(*)
FROM
    hr.emp
GROUP BY
    salary_band;