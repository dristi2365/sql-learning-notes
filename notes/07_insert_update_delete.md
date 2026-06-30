# 07 — INSERT, UPDATE, DELETE

These commands modify data in a table — unlike SELECT which only reads.

## INSERT — add a new row

```sql
INSERT INTO students VALUES (6, 'Maya', 19, 'Kathmandu', 88);
```

Values must be in the same order as the table's columns.

## UPDATE — change existing data

```sql
UPDATE students SET score = 95 WHERE name = 'Hari';
```

**Important:** Always use WHERE with UPDATE.
Without WHERE, it updates EVERY row in the table.

## DELETE — remove a row

```sql
DELETE FROM students WHERE name = 'Bishal';
```

**Important:** Always use WHERE with DELETE too.
Without WHERE, it deletes EVERY row in the table.

## Key Rules
- INSERT adds new data
- UPDATE changes existing data — needs WHERE to target specific rows
- DELETE removes data — needs WHERE to avoid deleting everything
- These commands don't return a result table — always SELECT after to verify the change
- Forgetting WHERE in UPDATE/DELETE is one of the most common and costly SQL mistakes