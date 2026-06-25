# 02 — WHERE Clause (Filtering)

WHERE filters rows based on a condition.
Only rows that match the condition are returned.

## Basic Syntax

```sql
SELECT * FROM table_name WHERE condition;
```

## Comparison Operators

| Operator | Meaning |
|----------|---------|
| = | Equal to |
| != | Not equal to |
| > | Greater than |
| < | Less than |
| >= | Greater than or equal to |
| <= | Less than or equal to |

## Examples

```sql
-- Filter by text value (use single quotes)
SELECT * FROM students WHERE city = 'Kathmandu';

-- Filter by number (no quotes needed)
SELECT * FROM students WHERE score > 80;

-- Not equal
SELECT * FROM students WHERE city != 'Kathmandu';
```

## AND — both conditions must be true

```sql
SELECT * FROM students 
WHERE city = 'Kathmandu' AND score > 80;
```

## OR — at least one condition must be true

```sql
SELECT * FROM students 
WHERE city = 'Kathmandu' OR city = 'Bhaktapur';
```

## Key Rules
- Text values go in single quotes: `'Kathmandu'`
- Numbers don't need quotes: `score > 80`
- AND is stricter — both must match
- OR is looser — either can match