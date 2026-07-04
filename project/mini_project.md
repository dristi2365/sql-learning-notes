# 09 — Mini Project: Student Performance Analysis

A real-world style analysis combining all SQL concepts learned —
CREATE TABLE, INSERT, SELECT, WHERE, ORDER BY, GROUP BY, 
JOINS and subqueries.

## Scenario
A school wants to analyze student performance across 
different subjects and teachers.

## Tables Used
- students — student details
- subjects — subject name and teacher
- grades — scores linking students to subjects

## Analysis Queries

### 1. Each student's average score
```sql
SELECT students.name, ROUND(AVG(grades.score), 2) AS average_score
FROM students
INNER JOIN grades ON students.id = grades.student_id
GROUP BY students.name
ORDER BY average_score DESC;
```

### 2. Average score per subject
```sql
SELECT subjects.subject_name, subjects.teacher,
       ROUND(AVG(grades.score), 2) AS average_score
FROM subjects
INNER JOIN grades ON subjects.id = grades.subject_id
GROUP BY subjects.subject_name
ORDER BY average_score DESC;
```

### 3. Top scoring student overall
```sql
SELECT students.name, grades.score, subjects.subject_name
FROM students
INNER JOIN grades ON students.id = grades.student_id
INNER JOIN subjects ON grades.subject_id = subjects.id
WHERE grades.score = (SELECT MAX(score) FROM grades);
```

### 4. Students below average in Mathematics
```sql
SELECT students.name, grades.score
FROM students
INNER JOIN grades ON students.id = grades.student_id
INNER JOIN subjects ON grades.subject_id = subjects.id
WHERE subjects.subject_name = 'Mathematics'
AND grades.score < (SELECT AVG(score) FROM grades
                    WHERE subject_id = 1)
ORDER BY grades.score;
```

### 5. Students from Kathmandu and their average score
```sql
SELECT students.name, students.city,
       ROUND(AVG(grades.score), 2) AS average_score
FROM students
INNER JOIN grades ON students.id = grades.student_id
WHERE students.city = 'Kathmandu'
GROUP BY students.name;
```

## Concepts Used
- CREATE TABLE with PRIMARY KEY and NOT NULL ✅
- INSERT into multiple related tables ✅
- INNER JOIN across 3 tables ✅
- GROUP BY with AVG and ROUND ✅
- ORDER BY DESC ✅
- WHERE with subquery ✅
- Combining WHERE and JOIN ✅