-- 1. Total streaming hours per game
SELECT game, SUM(duration_minutes)/60.0 AS total_hours
FROM streams GROUP BY game ORDER BY total_hours DESC;

-- 2. Average peak viewers by month
SELECT strftime('%Y-%m', stream_date) AS month, AVG(peak_viewers) AS avg_viewers
FROM streams GROUP BY month;

-- 3. Highest rated completed titles
SELECT title, rating FROM watchlist
WHERE status = 'completed' ORDER BY rating DESC LIMIT 5;

-- 4. Genre breakdown of your watchlist
SELECT genre, COUNT(*) AS count, AVG(rating) AS avg_rating
FROM watchlist WHERE rating IS NOT NULL GROUP BY genre;

-- 5. JOIN-style exercise: streams and watchlist activity on the same day (union comparison)
SELECT stream_date AS activity_date, 'stream' AS type FROM streams
UNION
SELECT date_finished, 'watch' FROM watchlist WHERE date_finished IS NOT NULL
ORDER BY activity_date;

-- 6. Window function practice: running total of stream hours
SELECT stream_date, duration_minutes,
       SUM(duration_minutes) OVER (ORDER BY stream_date) AS running_minutes
FROM streams;