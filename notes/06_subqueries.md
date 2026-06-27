# 06 — Subqueries

A subquery is a query inside another query.
The inner query runs first and its result is used by the outer query.

## Basic Syntax

```sql
SELECT * FROM table
WHERE column > (SELECT AVG(column) FROM table);
```

## Examples

```sql
-- Students who scored above average
SELECT name, score FROM students
WHERE score > (SELECT AVG(score) FROM students);

-- Student with the highest score
SELECT name, score FROM students
WHERE score = (SELECT MAX(score) FROM students);

-- Students below lowest Kathmandu score
SELECT name, score FROM students
WHERE score < (SELECT MIN(score) FROM students
               WHERE city = 'Kathmandu');
```

## Key Rules
- Inner query runs first
- Inner query must return a single value when used with =, >, 
- Subqueries are wrapped in parentheses
- Can be used with WHERE, FROM, SELECT