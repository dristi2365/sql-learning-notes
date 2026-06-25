-- ==========================================
-- ORDER BY AND LIMIT
-- ==========================================

-- Sort by score highest to lowest
SELECT * FROM students ORDER BY score DESC;

-- Sort by score lowest to highest
SELECT * FROM students ORDER BY score ASC;

-- Sort alphabetically by name
SELECT * FROM students ORDER BY name;

-- Top 3 students by score
SELECT * FROM students ORDER BY score DESC LIMIT 3;

-- Single highest scoring student
SELECT * FROM students ORDER BY score DESC LIMIT 1;

-- 2 youngest students
SELECT * FROM students ORDER BY age ASC LIMIT 2;