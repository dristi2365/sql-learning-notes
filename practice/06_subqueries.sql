-- ==========================================
-- TABLE SETUP
-- ==========================================

CREATE TABLE students (
    id INTEGER,
    name TEXT,
    age INTEGER,
    city TEXT,
    score INTEGER
);

INSERT INTO students VALUES (1, 'Ram', 20, 'Kathmandu', 85);
INSERT INTO students VALUES (2, 'Sita', 22, 'Bhaktapur', 90);
INSERT INTO students VALUES (3, 'Hari', 21, 'Pokhara', 78);
INSERT INTO students VALUES (4, 'Gita', 20, 'Kathmandu', 92);
INSERT INTO students VALUES (5, 'Bishal', 23, 'Lalitpur', 65);

-- ==========================================
-- SUBQUERIES
-- ==========================================

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