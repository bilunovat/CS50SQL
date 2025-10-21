CREATE TABLE passengers (
    id INTEGER,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER CHECK (age > -1),
    PRIMARY KEY (id)
);

CREATE TABLE check_ins (
    id INTEGER,
    passenger_id INTEGER,
    flight_no TEXT,
    check_in_time NUMERIC DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(id),
    FOREIGN KEY (flight_no) REFERENCES flights(flight_no)
);

CREATE TABLE airlines (
    name TEXT,
    concourse TEXT CHECK (concourse IN ("A", "B", "C", "D", "E", "F", "T")),
    PRIMARY KEY (name)
);

CREATE TABLE flights (
    flight_no TEXT,
    airline_name TEXT NOT NULL,
    depart_code TEXT NOT NULL,
    dest_code TEXT,
    depart_time NUMERIC NOT NULL,
    eta NUMERIC,
    PRIMARY KEY (flight_no, dest_code),
    FOREIGN KEY (airline_name) REFERENCES airlines (name)
);
