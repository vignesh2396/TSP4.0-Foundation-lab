/* 
1. From the ORDERS table in the CUSTOMER_ORDERS schema return all of the columns AND return 3 additional columns extracting the below information from the order_datetime column:
* The day of the week (eg. wednesday) alised as day_of_week
* The month name (eg. "January") alised as month_name
* The 4 digit year (eg. 2023) alised as year

2. Filter the results to include only the orders that occurred on Saturday.
*/
SELECT 
    order_id,
    order_datetime,
    customer_id,
    order_status,
    store_id,
    DATE_FORMAT(STR_TO_DATE(order_datetime, '%m/%d/%Y %H:%i'),
            '%W') AS day_of_week,
    DATE_FORMAT(STR_TO_DATE(order_datetime, '%m/%d/%Y %H:%i'),
            '%M') AS month_name,
    DATE_FORMAT(STR_TO_DATE(order_datetime, '%m/%d/%Y %H:%i'),
            '%Y') AS year
FROM
    customer_orders.orders
WHERE
    DATE_FORMAT(STR_TO_DATE(order_datetime, '%m/%d/%Y %H:%i'),
            '%W') = 'Saturday';