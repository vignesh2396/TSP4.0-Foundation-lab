/*  
1. From the ORDER_ITEMS table in the CUSTOMER_ORDERS schema return a column called line_item_amount that is the unit_price multiplied by the quantity for each record. (Return all other columns as well)

2. Round the line_item_amount column to 1 decimal point.
*/

select * from customer_orders.order_items;

-- requirement 1
SELECT 
    order_id,
    product_id,
    unit_price,
    quantity,
    unit_price * quantity AS line_item_amount
FROM
    customer_orders.order_items;

-- requirement 2
SELECT 
    order_id,
    product_id,
    unit_price,
    quantity,
    ROUND(unit_price * quantity, 1) AS line_item_amount
FROM
    customer_orders.order_items;