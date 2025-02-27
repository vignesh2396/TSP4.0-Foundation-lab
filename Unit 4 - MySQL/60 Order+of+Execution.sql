SELECT 
    *
FROM hr.emp
JOIN hr.dept 
ON hr.emp.dept_no = hr.dept.dept_id
WHERE hr.emp.sal > 2000
ORDER BY sal DESC;