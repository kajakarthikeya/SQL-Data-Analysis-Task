
SELECT * 
FROM orders
WHERE amount > 400
ORDER BY amount DESC;

SELECT customer_id, SUM(amount) AS total_spent
FROM orders
GROUP BY customer_id;

SELECT c.name, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT c.name, o.amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    WHERE amount > 500
);

SELECT AVG(total) AS avg_revenue_per_user
FROM (
    SELECT customer_id, SUM(amount) AS total
    FROM orders
    GROUP BY customer_id
) AS user_totals;

CREATE VIEW customer_spending AS
SELECT c.name, SUM(o.amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

SELECT name, COALESCE(city, 'Unknown') AS city
FROM customers;

CREATE INDEX idx_customer_id ON orders(customer_id);