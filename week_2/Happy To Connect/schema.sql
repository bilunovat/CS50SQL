CREATE TABLE IF NOT EXISTS users (
    username TEXT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    password TEXT NOT NULL,
    PRIMARY KEY (username)
);

CREATE TABLE IF NOT EXISTS schools (
    id INTEGER,
    name TEXT NOT NULL,
    type TEXT NOT NULL,
    location TEXT NOT NULL,
    foundation_year INTEGER,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS companies (
    id INTEGER,
    name TEXT NOT NULL,
    industry TEXT NOT NULL,
    location TEXT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS user_to_user (
    user1 TEXT,
    user2 TEXT,
    PRIMARY KEY (user1, user2),
    FOREIGN KEY (user1) REFERENCES users (username),
    FOREIGN KEY (user2) REFERENCES users (username),
    CHECK (user1 < user2) -- Ensures the connection is only stored once
);

CREATE TABLE IF NOT EXISTS user_to_school (
    user TEXT,
    school_id INTEGER,
    start_date DATE NOT NULL,
    end_date DATE,
    degree TEXT,
    PRIMARY KEY (user, school_id),
    FOREIGN KEY (user) REFERENCES users (username),
    FOREIGN KEY (school_id) REFERENCES schools (id)
);

CREATE TABLE IF NOT EXISTS user_to_company (
    user TEXT,
    company_id INTEGER,
    start_date DATE NOT NULL,
    end_date DATE,
    title TEXT,
    PRIMARY KEY (user, company_id),
    FOREIGN KEY (user) REFERENCES users (username),
    FOREIGN KEY (company_id) REFERENCES companies (id)
);

