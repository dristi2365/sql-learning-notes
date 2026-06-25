# 03 — ORDER BY and LIMIT

ORDER BY sorts results. LIMIT restricts how many rows are returned.

## ORDER BY Syntax

```sql
SELECT * FROM table_name ORDER BY column_name;
```

## ASC and DESC

- **ASC** — ascending order (lowest to highest, A to Z) — default
- **DESC** — descending order (highest to lowest, Z to A)

```sql
-- Highest score first
SELECT * FROM students ORDER BY score DESC;

-- Lowest score first
SELECT * FROM students ORDER BY score ASC;

-- Alphabetical by name
SELECT * FROM students ORDER BY name;
```

## LIMIT Syntax

```sql
SELECT * FROM table_name ORDER BY column_name DESC LIMIT n;
```

Limits the number of rows returned to n.

```sql
-- Top 3 students by score
SELECT * FROM students ORDER BY score DESC LIMIT 3;

-- Single highest scoring student
SELECT * FROM students ORDER BY score DESC LIMIT 1;

-- 2 youngest students
SELECT * FROM students ORDER BY age ASC LIMIT 2;
```

## Key Rules
- ASC is the default — you don't have to write it explicitly
- DESC must always be written explicitly
- LIMIT always goes at the end of the query
- Combining ORDER BY and LIMIT is very common in real world queries