# 05 — JOINS

JOINs combine data from multiple tables based on a related column.

## Why JOINs exist
In real databases data is split across tables to avoid repetition.
JOINs let you bring that data back together for analysis.

## Example Tables

**customers:**
| id | name | city |
|----|------|------|
| 1 | Ram | Kathmandu |
| 2 | Sita | Bhaktapur |
| 3 | Hari | Pokhara |
| 4 | Gita | Kathmandu |

**orders:**
| order_id | customer_id | product | amount |
|----------|-------------|---------|--------|
| 1 | 1 | Laptop | 80000 |
| 2 | 1 | Mouse | 1500 |
| 3 | 2 | Keyboard | 3000 |
| 4 | 3 | Monitor | 25000 |
| 5 | 1 | Headphones | 5000 |

Notice: Gita (id=4) has no orders.

## INNER JOIN

Returns only rows where there is a match in BOTH tables.
Gita disappears because she has no orders.

```sql
SELECT customers.name, orders.product, orders.amount
FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;
```

## LEFT JOIN

Returns ALL rows from the left table, plus matches from the right.
If no match exists, NULL is returned for right table columns.
Gita appears but with NULL values.

```sql
SELECT customers.name, orders.product, orders.amount
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;
```

## Key Difference

| | INNER JOIN | LEFT JOIN |
|--|------------|-----------|
| No match | Row disappears | Row appears with NULL |
| Use when | You only want matched data | You want everything from left table |

## ON keyword
Tells SQL which columns to match between the two tables.
```sql
ON customers.id = orders.customer_id
```
Left table column = Right table column

## Real world examples
- Customers and their orders
- Students and their grades
- Employees and their departments
- Products and their sales