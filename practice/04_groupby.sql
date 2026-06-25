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
-- AGGREGATE FUNCTIONS
-- ==========================================

-- How many students are there?
SELECT COUNT(*) FROM students;

-- What is the average score?
SELECT AVG(score) FROM students;

-- What is the highest score?
SELECT MAX(score) FROM students;

-- What is the lowest score?
SELECT MIN(score) FROM students;

-- What is the total of all scores?
SELECT SUM(score) FROM students;

-- ==========================================
-- GROUP BY
-- ==========================================

-- How many students are from each city?
SELECT city, COUNT(*) FROM students GROUP BY city;

-- Average score per city
SELECT city, AVG(score) FROM students GROUP BY city;

-- Highest score per city
SELECT city, MAX(score) FROM students GROUP BY city;

-- Count students per age group
SELECT age, COUNT(*) FROM students GROUP BY age;

-- ==========================================
-- HAVING
-- ==========================================

-- Cities with more than 1 student
SELECT city, COUNT(*) FROM students
GROUP BY city
HAVING COUNT(*) > 1;

-- Cities where average score is above 80
SELECT city, AVG(score) FROM students
GROUP BY city
HAVING AVG(score) > 80;

-- WHERE filters rows first, then groups
SELECT city, COUNT(*) FROM students
WHERE score > 70
GROUP BY city;