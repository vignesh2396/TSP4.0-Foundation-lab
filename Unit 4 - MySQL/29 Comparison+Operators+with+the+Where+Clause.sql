select * from countries.countries;

-- Case Sensitivity does not matter in MySQL
select * from countries.countries where name = 'Brazil';
select * from countries.countries where name = 'brazil';
select * from countries.countries where name = 'BRAZIL';


select * from hr.emp;

-- filtering on dates
select * from hr.emp where hire_date = '1981-12-03';
select * from hr.emp where sal >= '1982-01-01';

-- date formatting matters
select * from hr.emp where hire_date = '03/12/1981';

-- filtering on numerical values
select * from hr.emp where sal = 3000;
select * from hr.emp where sal > 3000;

-- operators work differently on strings, dates and numbers
select * from hr.emp where e_name >= 'b';

-- Not equal to operator
select * from hr.emp where job <> 'MANAGER';


-- This won't work as expected because order_datetime is a string column
select * from customer_orders.orders where order_datetime > '2022-01-01';