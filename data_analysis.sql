
-- 1. List all orders greater than $200, sorted by total descending
SELECT * FROM Orders
WHERE total > 200
ORDER BY total DESC;

-- 2. Show customer names with their order totals
SELECT c.name AS customer_name, o.total AS order_total
FROM Orders o
INNER JOIN Customers c ON o.customer_id = c.customer_id;

-- 3. List product names that were ordered more than once
SELECT product_name
FROM Products
WHERE product_id IN (
  SELECT product_id
  FROM OrderDetails
  GROUP BY product_id
  HAVING COUNT(*) > 1
);

-- 4. Get the average total value of all orders
SELECT AVG(total) AS average_order_value
FROM Orders;

-- 5. Create a view showing high-value orders over $500
CREATE VIEW HighValueOrders AS
SELECT * FROM Orders
WHERE total > 500;

-- View contents of HighValueOrders
SELECT * FROM HighValueOrders;

-- 6. Create an index on Orders for customer_id to improve JOIN performance
CREATE INDEX idx_customer_id ON Orders(customer_id);
