-- ==========================================
-- TABLE SETUP
-- ==========================================

DROP TABLE IF EXISTS students;

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
-- INSERT
-- ==========================================

INSERT INTO students VALUES (6, 'Maya', 19, 'Kathmandu', 88);
SELECT * FROM students;

-- ==========================================
-- UPDATE
-- ==========================================

UPDATE students SET score = 95 WHERE name = 'Hari';
SELECT * FROM students;

-- ==========================================
-- DELETE
-- ==========================================

DELETE FROM students WHERE name = 'Bishal';
SELECT * FROM students;