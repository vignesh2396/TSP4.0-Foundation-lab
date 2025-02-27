-- step 1: data exploration
select * from customer_orders.order_items;
select * from customer_orders.orders;
select * from customer_orders.stores;




-- step 2: join order_items, orders and stores tables 
SELECT 
  t3.store_name,
  date_format(str_to_date(t1.order_datetime,'%m/%d/%Y %H:%i'), '%Y-%m') as month_year,
	t1.order_status,
	t2.quantity * t2.unit_price as line_item_amount
FROM customer_orders.orders as t1
LEFT JOIN customer_orders.order_items as t2
ON t1.order_id = t2.order_id
LEFT JOIN customer_orders.stores as t3
ON t1.store_id = t3.store_id;





-- step 3: group and aggregate subquery
SELECT
	sq1.store_name,
    sq1.month_year,
    sq1.order_status,
    sum(sq1.line_item_amount) as sales_amount
FROM
(SELECT 
    t3.store_name,
    date_format(str_to_date(t1.order_datetime,'%m/%d/%Y %H:%i'), '%Y-%m') as month_year,
	t1.order_status,
	t2.quantity * t2.unit_price as line_item_amount
FROM customer_orders.orders as t1
LEFT JOIN customer_orders.order_items as t2
ON t1.order_id = t2.order_id
LEFT JOIN customer_orders.stores as t3
ON t1.store_id = t3.store_id) sq1
GROUP BY sq1.store_name, sq1.month_year, sq1.order_status;





-- step 4: create the view
CREATE VIEW customer_orders.vw_store_sales AS
SELECT
	sq1.store_name,
    sq1.month_year,
    sq1.order_status,
    sum(sq1.line_item_amount) as sales_amount
FROM
(SELECT 
    t3.store_name,
    date_format(str_to_date(t1.order_datetime,'%m/%d/%Y %H:%i'), '%Y-%m') as month_year,
	t1.order_status,
	t2.quantity * t2.unit_price as line_item_amount
FROM customer_orders.orders as t1
LEFT JOIN customer_orders.order_items as t2
ON t1.order_id = t2.order_id
LEFT JOIN customer_orders.stores as t3
ON t1.store_id = t3.store_id) sq1
GROUP BY sq1.store_name, sq1.month_year, sq1.order_status;





select * from customer_orders.vw_store_sales;