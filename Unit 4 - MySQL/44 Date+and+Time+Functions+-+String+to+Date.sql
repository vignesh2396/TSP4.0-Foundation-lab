select * from customer_orders.orders;

describe customer_orders.orders;

-- converting order_datetime to datetime data type and standard MySQL format
select order_datetime, str_to_date(order_datetime, '%m/%d/%Y %H:%i') from customer_orders.orders;