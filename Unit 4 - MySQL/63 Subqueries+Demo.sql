SELECT 
    *
FROM
    hr.emp;

-- redudnant subquery
SELECT 
    sq1.*
FROM
    (SELECT * FROM hr.emp) as sq1;

-- the outer query will only recognised aliased column names from the subquery
SELECT 
    sq1.emp_name,
	sq1.salary
FROM
    (SELECT 
		e_name as emp_name,
		sal as salary
	FROM
		hr.emp
	WHERE sal > 2000) as sq1;

-- subquery returning scalar value
SELECT 
    *
FROM
    hr.emp
WHERE sal = (SELECT MAX(SAL) FROM HR.EMP);


-- subquery used with IN operator
SELECT 
    *
FROM
    hr.emp
WHERE dept_no in (select dept_no from hr.emp where job = 'CLERK');


-- subquery with HAVING clause
SELECT 
    JOB, SUM(SAL)
FROM
    hr.emp
GROUP BY JOB
HAVING JOB IN (SELECT JOB FROM HR.EMP WHERE DEPT_NO = 10);


-- subquery in SELECT clause
SELECT 
	e_name,
    sal,
    (SELECT SUM(SAL) FROM HR.EMP) as max_sal
FROM
    hr.emp;


-- using subqueries in expressions
SELECT 
    e_name,
    sal,
    sal / (SELECT SUM(SAL) FROM HR.EMP) * 100 as pct_of_total_sal
FROM
    hr.emp;


-- this subquery is invalid
SELECT 
    *
FROM
    COUNTRIES.COUNTRIES
WHERE POPULATION = (SELECT 
                        POPULATION, NAME
                    FROM
                        COUNTRIES.COUNTRIES);


-- this subquery is valid
SELECT 
    *
FROM
    COUNTRIES.COUNTRIES
WHERE POPULATION = (SELECT 
                        MAX(POPULATION)
                    FROM
                        COUNTRIES.COUNTRIES);

