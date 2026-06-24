# 01 — SELECT Basics

The most fundamental SQL command. Used to retrieve data from a table.

## Basic Syntax

```sql
SELECT column1, column2 FROM table_name;
```

## Select All Columns

```sql
SELECT * FROM students;
```
`*` means "give me everything"

## Select Specific Columns

```sql
SELECT name, age FROM students;
```
Only returns the name and age columns — ignores everything else.

## Example Table — students

| id | name    | age | city       | score |
|----|---------|-----|------------|-------|
| 1  | Ram     | 20  | Kathmandu  | 85    |
| 2  | Sita    | 22  | Bhaktapur  | 90    |
| 3  | Hari    | 21  | Pokhara    | 78    |
| 4  | Gita    | 20  | Kathmandu  | 92    |
| 5  | Bishal  | 23  | Lalitpur   | 65    |

## Practice Queries

```sql
-- Get all students
SELECT * FROM students;

-- Get only names and scores
SELECT name, score FROM students;

-- Get only cities
SELECT city FROM students;
```

## Key Rules
- SQL is NOT case sensitive — `SELECT` and `select` both work
- Always end queries with a semicolon `;`
- Use `*` to select all columns
- Column names are separated by commas