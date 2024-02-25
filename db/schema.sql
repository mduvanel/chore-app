
DROP TABLE IF EXISTS seasons;
DROP TABLE IF EXISTS members;
DROP TABLE IF EXISTS events;
DROP TABLE IF EXISTS table_chores;
DROP TABLE IF EXISTS buvette_chores;

CREATE TABLE seasons(
    id INTEGER PRIMARY KEY,
    descr TEXT
);

CREATE TABLE members(
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    active INTEGER
);

CREATE TABLE events(
    id INTEGER PRIMARY KEY,
    descr TEXT,
    date TEXT,
    start_time TEXT,
    end_time TEXT
);

CREATE TABLE table_chores(
    id INTEGER PRIMARY KEY,
    descr TEXT,
    member_id INTEGER,
    event_id INTEGER NOT NULL,
    FOREIGN KEY(member_id) REFERENCES members(id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY(event_id) REFERENCES events(id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE buvette_chores(
    id INTEGER PRIMARY KEY,
    descr TEXT,
    member_id INTEGER,
    event_id INTEGER NOT NULL,
    FOREIGN KEY(member_id) REFERENCES members(id) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY(event_id) REFERENCES events(id) ON UPDATE CASCADE ON DELETE CASCADE
);
