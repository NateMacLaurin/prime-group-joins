-- 1. Get all customers and their addresses.
SELECT * FROM "customers"
JOIN "addresses" ON "customers".id = "addresses".id;

-- 2. Get all orders and their line items (orders, quantity and product).
SELECT "orders".id, "line_items".quantity, "products".description FROM "orders" 
LEFT JOIN "line_items" ON "line_items".order_id = "orders".id 
LEFT JOIN "products" ON "line_items".product_id = "products".id;

-- 3. Which warehouses have cheetos?
SELECT "warehouse".warehouse FROM "products"
JOIN "warehouse_product" ON "warehouse_product".product_id = "products".id
JOIN "warehouse" ON "warehouse".id = "warehouse_product".warehouse_id
WHERE "products".description LIKE 'cheetos';

-- 4. Which warehouses have diet pepsi?
SELECT "warehouse".warehouse FROM "products"
JOIN "warehouse_product" ON "warehouse_product".product_id = "products".id
JOIN "warehouse" ON "warehouse".id = "warehouse_product".warehouse_id
WHERE "products".description LIKE 'diet pepsi';

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


-- 6. How many customers do we have?
SELECT COUNT(*) FROM "customers";

-- 7. How many products do we carry?
SELECT COUNT(*) FROM "products";

-- 8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM("warehouse_product".on_hand) FROM "products"
JOIN "warehouse_product" ON "warehouse_product".product_id = "products".id
WHERE "products".description LIKE 'diet pepsi';

-- 9. How much was the total cost for each order?

-- 10. How much has each customer spent in total?

-- 11. How much has each customer spent in total? 

-- 11. (cont.) Customers who have spent $0 should still show up in the table. 

-- 11. (cont.) It should say 0, not NULL (research coalesce).