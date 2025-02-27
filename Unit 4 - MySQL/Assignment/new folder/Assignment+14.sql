SELECT 
    order_id, 
    SUM(unit_price * quantity) as total_order_amount
FROM
    customer_orders.order_items
GROUP BY order_id
ORDER BY total_order_amount DESC
LIMIT 10
;