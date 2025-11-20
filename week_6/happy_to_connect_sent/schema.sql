CREATE TABLE IF NOT EXISTS users (
    username VARCHAR(20),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    password VARCHAR(128) NOT NULL, -- Assuming password is hashed and can be stored in 128 characters
    PRIMARY KEY (username)
);

CREATE TABLE IF NOT EXISTS schools (
    id INT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    type ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    location VARCHAR(50) NOT NULL,
    foundation_year YEAR,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS companies (
    id INT UNSIGNED AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    industry ENUM('Technology', 'Education', 'Business') NOT NULL,
    location VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS user_to_user (
    user1 VARCHAR(20),
    user2 VARCHAR(20),
    PRIMARY KEY (user1, user2),
    FOREIGN KEY (user1) REFERENCES users (username),
    FOREIGN KEY (user2) REFERENCES users (username),
    CHECK (user1 < user2) -- Ensures the connection is only stored once
);

CREATE TABLE IF NOT EXISTS user_to_school (
    user VARCHAR(20),
    school_id INT UNSIGNED,
    start_date DATE NOT NULL,
    end_date DATE,
    degree VARCHAR(10),
    PRIMARY KEY (user, school_id),
    FOREIGN KEY (user) REFERENCES users (username),
    FOREIGN KEY (school_id) REFERENCES schools (id)
);

CREATE TABLE IF NOT EXISTS user_to_company (
    user VARCHAR(20),
    company_id INT UNSIGNED,
    start_date DATE NOT NULL,
    end_date DATE,
    title VARCHAR(50),
    PRIMARY KEY (user, company_id),
    FOREIGN KEY (user) REFERENCES users (username),
    FOREIGN KEY (company_id) REFERENCES companies (id)
);

INSERT INTO users (username, first_name, last_name, password)
VALUES ('claudine', 'Claudine', 'Gay', 'password');

INSERT INTO users (username, first_name, last_name, password)
VALUES ('reid', 'Reid', 'Hoffman', 'password');

INSERT INTO schools (name, type, location, foundation_year)
VALUES ('Harvard University', 'Higher Education', 'Cambridge, Massachusetts', 1636);

INSERT INTO companies (name, industry, location)
VALUES ('LinkedIn', 'Technology', 'Sunnyvale, California');

INSERT INTO user_to_school (user, school_id, start_date, end_date, degree)
VALUES ('claudine',
        (SELECT id FROM schools WHERE name = 'Harvard University'),
        '1993-01-01',
        '1998-12-31',
        'PhD');

INSERT INTO user_to_company (user, company_id, start_date, end_date, title)
VALUES ('reid',
        (SELECT id FROM companies WHERE name = 'LinkedIn'),
        '2003-01-01',
        '2007-02-01',
        'CEO and Chairman”');
