CREATE TABLE streams (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    stream_date DATE NOT NULL,
    game TEXT NOT NULL,
    duration_minutes INTEGER,
    peak_viewers INTEGER,
    platform TEXT DEFAULT 'YouTube',
    notes TEXT
);

CREATE TABLE watchlist (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    media_type TEXT CHECK(media_type IN ('movie','show')) NOT NULL,
    status TEXT CHECK(status IN ('watching','completed','plan_to_watch')) NOT NULL,
    genre TEXT,
    rating REAL,
    date_finished DATE
);