1. Get all customers and their addresses.
SELECT * FROM addresses JOIN customers ON
customers.id = addresses.customer_id;

2. Get all orders and their line items.
SELECT * FROM orders JOIN line_items ON
line_items.id = orders.id;

3. Which warehouses have cheetos?
SELECT * FROM warehouse_product JOIN products ON
products.id = warehouse_product.product_id
JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'cheetos'; 

4. Which warehouses have diet pepsi?
SELECT * FROM warehouse_product JOIN products ON
products.id = warehouse_product.product_id
JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE products.description = 'diet pepsi';

5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT customers.first_name, count(addresses.customer_id) FROM customers JOIN addresses
ON customers.id = addresses.customer_id
JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.first_name;

6. How many customers do we have?
SELECT count(customers.id) FROM customers;

7. How many products do we carry?
SELECT count(products.id) FROM products;

8. What is the total available on-hand quantity of diet pepsi?

