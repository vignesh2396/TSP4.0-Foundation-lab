SELECT
	t2.full_name,
	t1.total_orders
FROM
(SELECT 
    customer_id,
    count(*) as total_orders
FROM customer_orders.orders
WHERE order_status = 'COMPLETE'
GROUP BY customer_id) as t1
LEFT JOIN customer_orders.customers as t2
ON t1.customer_id = t2.customer_id
ORDER BY total_orders DESC
LIMIT 10;