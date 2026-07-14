import sqlite3
import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DB_PATH = os.path.join(BASE_DIR, "media_tracker.db")
db_exists = os.path.exists(DB_PATH)

conn = sqlite3.connect(DB_PATH)

if not db_exists:
    conn.executescript(open(os.path.join(BASE_DIR, "schema.sql")).read())
    conn.executescript(open(os.path.join(BASE_DIR, "seed.sql")).read())

queries = {
    "1": ("Total hours per game", "SELECT game, SUM(duration_minutes)/60.0 FROM streams GROUP BY game;"),
    "2": ("Top rated watchlist", "SELECT title, rating FROM watchlist WHERE status='completed' ORDER BY rating DESC;"),
    "3": ("Genre breakdown", "SELECT genre, COUNT(*), AVG(rating) FROM watchlist GROUP BY genre;"),
}

while True:
    print("\n".join(f"{k}: {v[0]}" for k, v in queries.items()))
    choice = input("Pick a query (or 'q'): ")
    if choice == "q":
        break
    if choice in queries:
        for row in conn.execute(queries[choice][1]):
            print(row)