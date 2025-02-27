/* 1. Query the COUNTRIES table in the COUNTRIES table schema to return records where the population is over 200 million. Sort the results in descending population order.
*/
SELECT 
    *
FROM
    countries.countries
WHERE
    population > 200000000
ORDER BY population DESC;

/*
Query the EMP table in the HR schema to return records where the employee earns a commision. Sort the results in ascending commision order.
*/
SELECT 
    *
FROM
    hr.emp
WHERE
    comm > 0
ORDER BY comm ASC;

/* 
3. Query the ORDER_ITEMS table in the CUSTOMER_ORDERS schema to return records where the quantity is above 4 and the unit price is above 49.
*/

SELECT 
    *
FROM
    customer_orders.order_items
WHERE
    quantity > 4 and unit_price > 49;