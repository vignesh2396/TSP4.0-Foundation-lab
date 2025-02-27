-- concatenating e_name and job
select e_name, job, concat(e_name, job) from hr.emp;

-- adding a whitespace between e_name and job
select e_name, job, concat(e_name, ' ', job) from hr.emp;

-- adding a slash between e_name and job
select e_name, job, concat(e_name, '/', job) from hr.emp;

-- adding whitespace before and after the slash
select e_name, job, concat(e_name, ' / ', job) from hr.emp;

-- mini assignment solution
SELECT 
    CONCAT(name, '_', country_code) AS country_code,
    CONCAT(name, '_', iso_alpha2, '_', capital) AS country_iso_capital
FROM
    countries.countries;