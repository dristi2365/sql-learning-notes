-- ==========================================
-- TABLE SETUP
-- ==========================================

DROP TABLE IF EXISTS grades;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    city TEXT
);

CREATE TABLE subjects (
    id INTEGER PRIMARY KEY,
    subject_name TEXT NOT NULL,
    teacher TEXT NOT NULL
);

CREATE TABLE grades (
    id INTEGER PRIMARY KEY,
    student_id INTEGER,
    subject_id INTEGER,
    score REAL
);

INSERT INTO students VALUES (1, 'Ram', 20, 'Kathmandu');
INSERT INTO students VALUES (2, 'Sita', 22, 'Bhaktapur');
INSERT INTO students VALUES (3, 'Hari', 21, 'Pokhara');
INSERT INTO students VALUES (4, 'Gita', 20, 'Kathmandu');
INSERT INTO students VALUES (5, 'Bishal', 23, 'Lalitpur');

INSERT INTO subjects VALUES (1, 'Mathematics', 'Mr. Sharma');
INSERT INTO subjects VALUES (2, 'Science', 'Ms. Thapa');
INSERT INTO subjects VALUES (3, 'English', 'Mr. Karki');

INSERT INTO grades VALUES (1, 1, 1, 85);
INSERT INTO grades VALUES (2, 1, 2, 90);
INSERT INTO grades VALUES (3, 1, 3, 78);
INSERT INTO grades VALUES (4, 2, 1, 92);
INSERT INTO grades VALUES (5, 2, 2, 88);
INSERT INTO grades VALUES (6, 2, 3, 95);
INSERT INTO grades VALUES (7, 3, 1, 65);
INSERT INTO grades VALUES (8, 3, 2, 70);
INSERT INTO grades VALUES (9, 3, 3, 72);
INSERT INTO grades VALUES (10, 4, 1, 98);
INSERT INTO grades VALUES (11, 4, 2, 85);
INSERT INTO grades VALUES (12, 4, 3, 91);
INSERT INTO grades VALUES (13, 5, 1, 55);
INSERT INTO grades VALUES (14, 5, 2, 60);
INSERT INTO grades VALUES (15, 5, 3, 58);

-- ==========================================
-- ANALYSIS QUERIES
-- ==========================================

-- 1. Each student's average score
SELECT students.name, ROUND(AVG(grades.score), 2) AS average_score
FROM students
INNER JOIN grades ON students.id = grades.student_id
GROUP BY students.name
ORDER BY average_score DESC;

-- 2. Average score per subject
SELECT subjects.subject_name, subjects.teacher,
       ROUND(AVG(grades.score), 2) AS average_score
FROM subjects
INNER JOIN grades ON subjects.id = grades.subject_id
GROUP BY subjects.subject_name
ORDER BY average_score DESC;

-- 3. Top scoring student overall
SELECT students.name, grades.score, subjects.subject_name
FROM students
INNER JOIN grades ON students.id = grades.student_id
INNER JOIN subjects ON grades.subject_id = subjects.id
WHERE grades.score = (SELECT MAX(score) FROM grades);

-- 4. Students below average in Mathematics
SELECT students.name, grades.score
FROM students
INNER JOIN grades ON students.id = grades.student_id
INNER JOIN subjects ON grades.subject_id = subjects.id
WHERE subjects.subject_name = 'Mathematics'
AND grades.score < (SELECT AVG(score) FROM grades
                    WHERE subject_id = 1)
ORDER BY grades.score;

-- 5. Students from Kathmandu and their average score
SELECT students.name, students.city,
       ROUND(AVG(grades.score), 2) AS average_score
FROM students
INNER JOIN grades ON students.id = grades.student_id
WHERE students.city = 'Kathmandu'
GROUP BY students.name;