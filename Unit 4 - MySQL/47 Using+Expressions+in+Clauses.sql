select * from hr.emp;

-- using expressions in the where clause
SELECT 
    emp_no, sal + COALESCE(comm, 0) AS total_pay
FROM
    hr.emp
WHERE
    sal + COALESCE(comm, 0) > 2000;