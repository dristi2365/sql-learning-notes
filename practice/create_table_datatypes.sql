-- ==========================================
-- CREATE TABLE WITH CONSTRAINTS
-- ==========================================

DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER,
    city TEXT DEFAULT 'Kathmandu',
    score REAL
);

-- This works fine
INSERT INTO students VALUES (1, 'Ram', 20, 'Kathmandu', 85.5);
INSERT INTO students VALUES (2, 'Sita', 22, 'Bhaktapur', 90.0);
INSERT INTO students VALUES (3, 'Hari', 21, 'Pokhara', 78.0);

SELECT * FROM students;

-- PRIMARY KEY violation -- will fail
-- INSERT INTO students VALUES (1, 'Gita', 20, 'Kathmandu', 92.0);

-- NOT NULL violation -- will fail
-- INSERT INTO students VALUES (4, NULL, 19, 'Lalitpur', 65.0);

-- DROP TABLE
DROP TABLE IF EXISTS students;