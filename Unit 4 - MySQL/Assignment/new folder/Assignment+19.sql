-- step 1: data exploration
select * from customer_orders.order_items;
select * from customer_orders.orders;
select * from customer_orders.products;




-- step 2: join order_items, orders and products tables 
SELECT 
    t1.order_id,
    t1.quantity,
    t2.order_status,
    t2.order_datetime,
    t3.product_name
FROM customer_orders.order_items as t1
LEFT JOIN customer_orders.orders as t2
ON t1.order_id = t2.order_id
LEFT JOIN customer_orders.products as t3
ON t1.product_id = t3.product_id;





-- step 3: extract the year from order_datetime
SELECT 
    t1.order_id,
    t1.quantity,
    t2.order_status,
    date_format(str_to_date(t2.order_datetime,'%m/%d/%Y %H:%i'), '%Y') as order_year,
    t3.product_name
FROM customer_orders.order_items as t1
LEFT JOIN customer_orders.orders as t2
ON t1.order_id = t2.order_id
LEFT JOIN customer_orders.products as t3
ON t1.product_id = t3.product_id;





-- step 4: filtering to return records for COMPLETE orders only
SELECT 
    t1.order_id,
    t1.quantity,
    t2.order_status,
    date_format(str_to_date(t2.order_datetime,'%m/%d/%Y %H:%i'), '%Y') as order_year,
    t3.product_name
FROM customer_orders.order_items as t1
LEFT JOIN customer_orders.orders as t2
ON t1.order_id = t2.order_id
LEFT JOIN customer_orders.products as t3
ON t1.product_id = t3.product_id
WHERE t2.order_status = 'COMPLETE';





-- step 5: group and aggregate subquery
SELECT
sq1.product_name,
sq1.order_year,
sum(sq1.quantity) as units_sold
FROM
(SELECT 
    t1.order_id,
    t1.quantity,
    t2.order_status,
    date_format(str_to_date(t2.order_datetime,'%m/%d/%Y %H:%i'), '%Y') as order_year,
    t3.product_name
FROM customer_orders.order_items as t1
LEFT JOIN customer_orders.orders as t2
ON t1.order_id = t2.order_id
LEFT JOIN customer_orders.products as t3
ON t1.product_id = t3.product_id
WHERE t2.order_status = 'COMPLETE') as sq1
GROUP BY
sq1.product_name, sq1.order_year;





-- step 6: create the view
CREATE VIEW customer_orders.vw_product_sales AS
SELECT
sq1.product_name,
sq1.order_year,
sum(sq1.quantity) as units_sold
FROM
(SELECT 
    t1.order_id,
    t1.quantity,
    t2.order_status,
    date_format(str_to_date(t2.order_datetime,'%m/%d/%Y %H:%i'), '%Y') as order_year,
    t3.product_name
FROM customer_orders.order_items as t1
LEFT JOIN customer_orders.orders as t2
ON t1.order_id = t2.order_id
LEFT JOIN customer_orders.products as t3
ON t1.product_id = t3.product_id
WHERE t2.order_status = 'COMPLETE') as sq1
GROUP BY
sq1.product_name, sq1.order_year;





select * from customer_orders.vw_product_sales;