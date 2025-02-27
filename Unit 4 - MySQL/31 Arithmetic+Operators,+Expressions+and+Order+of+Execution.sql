SELECT
	*
FROM
    customer_orders.order_items;

-- Division
SELECT 
    order_id,
    product_id,
    unit_price / 1.5
FROM
    customer_orders.order_items;


SELECT 
    order_id,
    product_id,
    unit_price / 1.5 as corrected_unit_price
FROM
    customer_orders.order_items;

-- Multiplication
SELECT 
    order_id,
    product_id,
    unit_price * 1.2 as corrected_unit_price
FROM
    customer_orders.order_items;


SELECT 
    order_id,
    product_id,
    unit_price * 1.2 as corrected_unit_price,
	unit_price * 1.2 * quantity as line_item_amount
FROM
    customer_orders.order_items;

-- Order of Execution
-- You should not use aliased column names in the where clause from the same query
SELECT
	order_id,
    product_id,
    unit_price * 1.2 as corrected_unit_price,
    quantity,
    corrected_unit_price * quantity - 5,
    ((unit_price * 1.2 * quantity) - 5) as line_item_amount
FROM
    customer_orders.order_items
where ((unit_price * 1.2 * quantity) - 5) > 100;