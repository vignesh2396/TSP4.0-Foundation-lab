/* 
1. Query the CUSTOMERS table in the CUSTOMER_ORDERS schema and return the full_name column along with another column that returns the first_name only from the full_name column, alias this as first_name.

2. In your query add another column that returns the middle and last names only, alias this as last_name.

3. Add another column that formatted_name that returns the full name in the format: last_name, first_name

eg: "R Goffredo, Scotty".
*/

SELECT 
    full_name,
	LEFT(full_name, LOCATE(' ', full_name) - 1) AS first_name,
    SUBSTRING(full_name, LOCATE(' ', full_name)+1) AS last_name,
	CONCAT(SUBSTRING(full_name, LOCATE(' ', full_name)+1), ', ', LEFT(full_name, LOCATE(' ', full_name) - 1)) as formatted_name
FROM
    customer_orders.customers;