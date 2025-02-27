SELECT 
    t1.e_name as emp_name,
    t1.sal as salary,
	  t2.d_name as department,
    t2.loc as location
FROM hr.emp t1
JOIN hr.dept t2
ON t1.dept_no = t2.dept_id
WHERE t1.sal > 2000
ORDER BY salary DESC;