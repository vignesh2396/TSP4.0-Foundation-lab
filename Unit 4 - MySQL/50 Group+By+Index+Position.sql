-- grouping by index position
select 
job, 
dept_no,
count(emp_no) as total_employees, 
sum(sal) as sum_of_salary
from hr.emp group by 1, 2;

-- moved dept_no to position 4
select 
job, 
count(emp_no) as total_employees, 
sum(sal) as sum_of_salary,
dept_no
from hr.emp group by 1, 4;