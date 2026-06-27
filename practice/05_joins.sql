-- ==========================================
-- TABLE SETUP
-- ==========================================

CREATE TABLE customers (
    id INTEGER,
    name TEXT,
    city TEXT
);

CREATE TABLE orders (
    order_id INTEGER,
    customer_id INTEGER,
    product TEXT,
    amount INTEGER
);

INSERT INTO customers VALUES (1, 'Ram', 'Kathmandu');
INSERT INTO customers VALUES (2, 'Sita', 'Bhaktapur');
INSERT INTO customers VALUES (3, 'Hari', 'Pokhara');
INSERT INTO customers VALUES (4, 'Gita', 'Kathmandu');

INSERT INTO orders VALUES (1, 1, 'Laptop', 80000);
INSERT INTO orders VALUES (2, 1, 'Mouse', 1500);
INSERT INTO orders VALUES (3, 2, 'Keyboard', 3000);
INSERT INTO orders VALUES (4, 3, 'Monitor', 25000);
INSERT INTO orders VALUES (5, 1, 'Headphones', 5000);

-- ==========================================
-- INNER JOIN
-- ==========================================

-- Only customers who have orders
SELECT customers.name, orders.product, orders.amount
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;

-- ==========================================
-- LEFT JOIN
-- ==========================================

-- All customers even if no orders
SELECT customers.name, orders.product, orders.amount
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;

-- ==========================================
-- COMBINING WITH OTHER CONCEPTS
-- ==========================================

-- Total amount spent per customer
SELECT customers.name, SUM(orders.amount) AS total_spent
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.name;

-- Customers who spent more than 10000
SELECT customers.name, SUM(orders.amount) AS total_spent
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
GROUP BY customers.name
HAVING SUM(orders.amount) > 10000;

-- Orders from Kathmandu customers only
SELECT customers.name, customers.city, orders.product
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id
WHERE customers.city = 'Kathmandu';