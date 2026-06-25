# 04 — GROUP BY and Aggregate Functions

Aggregate functions calculate a single value from multiple rows.
GROUP BY groups rows so aggregates apply per group.

## Aggregate Functions

| Function | What it does |
|----------|-------------|
| COUNT() | Counts number of rows |
| SUM() | Adds up values |
| AVG() | Calculates average |
| MAX() | Finds highest value |
| MIN() | Finds lowest value |

## Examples

```sql
-- Total count
SELECT COUNT(*) FROM students;

-- Average score
SELECT AVG(score) FROM students;

-- Highest and lowest score
SELECT MAX(score), MIN(score) FROM students;

-- Sum of all scores
SELECT SUM(score) FROM students;
```

## GROUP BY

Groups rows and applies aggregate per group.

```sql
-- Count students per city
SELECT city, COUNT(*) FROM students GROUP BY city;

-- Average score per city
SELECT city, AVG(score) FROM students GROUP BY city;

-- Highest score per city
SELECT city, MAX(score) FROM students GROUP BY city;
```

## HAVING — filter groups

WHERE filters rows. HAVING filters groups.

```sql
-- Cities with more than 1 student
SELECT city, COUNT(*) FROM students
GROUP BY city
HAVING COUNT(*) > 1;

-- Cities where average score is above 80
SELECT city, AVG(score) FROM students
GROUP BY city
HAVING AVG(score) > 80;
```

## Key Rule
- WHERE comes before GROUP BY
- HAVING comes after GROUP BY
- Use WHERE to filter rows, HAVING to filter groups