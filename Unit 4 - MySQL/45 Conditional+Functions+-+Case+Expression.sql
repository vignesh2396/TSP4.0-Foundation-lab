select * from hr.emp;

SELECT 
    e_name,
    sal,
    CASE
        WHEN sal > 2000 THEN 'High'
        WHEN sal > 1000 THEN 'Medium'
        ELSE 'Low'
    END as sal_class
FROM
    hr.emp;

-- ordering of the conditions matters, so ensure you are explicit
SELECT 
    e_name,
    sal,
    CASE
        WHEN sal > 1000 and sal <= 2000 THEN 'Medium'
        WHEN sal > 2000 THEN 'High'
        ELSE 'Low'
    END as sal_class
FROM
    hr.emp;
    

select * from customer_orders.stores;

-- referencing a column as a return value
select 
	store_name, 
    physical_address,
    case
		when store_name = 'Online' then 'Online'
        else physical_address
	end as address
from customer_orders.stores;
