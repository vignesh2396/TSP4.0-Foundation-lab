select * from hr.emp where sal >= 1000;


select * from hr.emp where sal <= 2500;

-- AND
select * from hr.emp where sal >= 1000 and sal <= 2500;

select * from hr.emp where (sal >= 1000) and (sal <= 2500) and (job = 'MANAGER');

-- OR
select * from hr.emp where (sal >= 1000) or (sal <= 2500);
select * from hr.emp where job = 'CLERK' or job = 'SALESMAN';


-- BETWEEN
select * from hr.emp where sal >= 1000 and sal <= 2500;
select * from hr.emp where sal between 1000 and 2500;
select * from hr.emp where hire_date between '1981-02-20' and '1981-02-22';


-- IN
select * from hr.emp where job = 'CLERK' or job = 'SALESMAN';
select * from hr.emp where job in ('CLERK', 'SALESMAN');
select * from hr.emp where sal in (800, 1250, 1600);


-- Use parenthesis to override operator precedence
SELECT 
    *
FROM
    hr.emp
WHERE
	sal between 1000 and 3000
    or job in ('SALESMAN', 'CLERK')
    and comm = 1400;

SELECT 
    *
FROM
    hr.emp
WHERE
	(sal between 1000 and 3000
    or job in ('SALESMAN', 'CLERK'))
    and comm = 1400;