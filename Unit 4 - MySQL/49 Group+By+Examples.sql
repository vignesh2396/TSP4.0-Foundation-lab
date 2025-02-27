select * from hr.emp;

-- the two queries are equivalent because value in e_name is unique
select e_name, sum(sal) from hr.emp group by e_name;
select e_name, sal from hr.emp;

-- grouping by multiple columns
-- multiple aggregations in a single query
SELECT 
    job, 
    dept_no,
    COUNT(*) as number_of_employees, 
    SUM(sal) as sum_of_salary
FROM
    hr.emp
GROUP BY job, dept_no;



