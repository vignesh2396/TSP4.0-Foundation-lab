SELECT 
    *
FROM
    hr.emp;

-- simple where clause
SELECT 
    e_name,
    sal
FROM
    hr.emp
WHERE sal > 2000;


-- using pre-aliased column reference in WHERE clause
SELECT 
    e_name,
    sal as salary
FROM
    hr.emp
WHERE sal > 2000;

-- using aliased column reference in WHERE clause is NOT allowed
SELECT 
    e_name,
    sal as salary
FROM
    hr.emp
WHERE salary > 2000;


-- using aliased column reference in ORDER BY clause
SELECT 
    e_name,
    sal as salary
FROM
    hr.emp
WHERE sal > 2000
ORDER BY salary DESC;


-- using pre-aliased column reference in ORDER BY clause IS also allowed
SELECT 
    e_name,
    sal as salary
FROM
    hr.emp
WHERE sal > 2000
ORDER BY sal DESC;


-- using pre-aliased column reference in GROUP BY clause
SELECT 
    e_name as emp_name,
    sum(sal) as salary
FROM
    hr.emp
GROUP BY e_name;


-- using aliased column reference in GROUP BY clause IS allowed
SELECT 
    e_name as emp_name,
    sum(sal) as salary
FROM
    hr.emp
GROUP BY emp_name;


-- My advice is to follow the SQL order of Execution
-- use pre-aliased reference for all clauses executed before the SELECT clause
-- use aliased reference for all clauses executed after the SELECT clause
SELECT 
    e_name as emp_name,
    sum(sal) as salary
FROM
    hr.emp
GROUP BY e_name
ORDER BY emp_name;





