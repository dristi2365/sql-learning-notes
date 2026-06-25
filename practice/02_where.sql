-- ==========================================
-- WHERE FILTERING
-- ==========================================

-- Students from Kathmandu
SELECT * FROM students WHERE city = 'Kathmandu';

-- Students with score above 80
SELECT * FROM students WHERE score > 80;

-- Students aged 20
SELECT * FROM students WHERE age = 20;

-- Students from Kathmandu AND score above 80
SELECT * FROM students WHERE city = 'Kathmandu' AND score > 80;

-- Students from Kathmandu OR Bhaktapur
SELECT * FROM students WHERE city = 'Kathmandu' OR city = 'Bhaktapur';

-- Students NOT from Kathmandu
SELECT * FROM students WHERE city != 'Kathmandu';