SELECT 
    LEFT(full_name, LOCATE(' ', full_name) - 1) AS first_name,
    count(*) as number_of_occurences
FROM
    customer_orders.customers
GROUP BY LEFT(full_name, LOCATE(' ', full_name) - 1)
ORDER BY number_of_occurences DESC;