# 08 — CREATE TABLE and Data Types

CREATE TABLE defines the structure of a new table —
what columns it has, what type of data each stores,
and what rules (constraints) apply.

## Basic Syntax

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype
);
```

## Common Data Types

| Data Type | What it stores | Example |
|-----------|---------------|---------|
| INTEGER | Whole numbers | 21, 100, -5 |
| REAL | Decimal numbers | 3.14, 99.9 |
| TEXT | Text/strings | 'Kathmandu', 'Ram' |
| BLOB | Binary data | images, files |
| NULL | No value | empty cell |

## Constraints

Rules that enforce data quality.

```sql
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    city TEXT DEFAULT 'Kathmandu',
    score REAL
);
```

**PRIMARY KEY** — unique identifier, no duplicates allowed
**NOT NULL** — column cannot be empty
**DEFAULT** — uses this value if nothing provided
**UNIQUE** — all values must be different

## What happens when constraints are violated

```sql
-- FAILS — id 1 already exists
INSERT INTO students VALUES (1, 'Sita', 22, 'Bhaktapur', 90.0);

-- FAILS — name cannot be NULL
INSERT INTO students VALUES (2, NULL, 21, 'Pokhara', 78.0);
```

## DROP TABLE — delete a table

```sql
DROP TABLE students;

-- Safe version — no error if table doesn't exist
DROP TABLE IF EXISTS students;
```

## Key Rules
- Always define data types when creating a table
- Use PRIMARY KEY for unique identifiers
- Use NOT NULL for required fields
- Use DEFAULT for sensible fallback values
- Use DROP TABLE IF EXISTS before recreating a table