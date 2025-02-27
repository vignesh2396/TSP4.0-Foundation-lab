SELECT 
    customer_id,
    count(*) as total_orders
FROM
    customer_orders.orders
GROUP BY customer_id
ORDER BY total_orders DESC;