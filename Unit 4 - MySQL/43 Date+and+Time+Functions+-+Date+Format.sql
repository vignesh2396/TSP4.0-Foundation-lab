describe hr.emp;

select * from hr.emp;

-- output the 2 digit year
select hire_date, date_format(hire_date, '%y'), date_format(hire_date, '%Y') from hr.emp;


-- output the format below
-- Dec-80
-- '%b-%y'
select hire_date, date_format(hire_date, '%b-%y') from hr.emp;


-- output the format below
-- Wednesday, 12 December 1980
-- '%W, %c %M %Y'
select hire_date, date_format(hire_date, '%W, %c %M %Y') from hr.emp;


select * from customer_orders.orders;

-- Will not work on non-standard date and timestamp formats
select order_datetime, date_format(order_datetime, '%y') from customer_orders.orders;

