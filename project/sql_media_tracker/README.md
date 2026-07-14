# SQL Media Tracker

A small SQLite project to practice SQL with real-ish data — tracks YouTube stream sessions and a movie/show watchlist.

## Tables
- `streams` — date, game, duration, peak viewers, notes
- `watchlist` — title, type (movie/show), status, genre, rating

## Queries covered
- Aggregations (SUM, AVG, COUNT)
- GROUP BY
- Window functions (running totals)
- UNION across tables
- Filtering + sorting

## Run it
python cli.py

Creates `media_tracker.db` on first run and seeds it with sample data. Pick a query number from the menu to run it.

## Files
- `schema.sql` — table definitions
- `seed.sql` — sample data
- `queries.sql` — full list of practice queries (some not wired into the CLI yet)
- `cli.py` — menu to run queries interactively