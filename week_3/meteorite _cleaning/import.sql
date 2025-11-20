.import --csv meteorites.csv temp

-- setting all decimal values to 2 decimal points
UPDATE temp
SET mass = ROUND(mass, 2),
lat = ROUND(lat, 2),
long = ROUND(long, 2);

-- filling all empty values with NULL
UPDATE temp
SET mass = NULL
WHERE mass = 0.0;

UPDATE temp
SET lat = NULL
WHERE lat = 0.0;

UPDATE temp
SET long = NULL
WHERE long = 0.0;

UPDATE temp
SET "year" = NULL
WHERE "year" = "";

-- removing meteorites with Relict nametype
DELETE FROM temp
WHERE nametype = "Relict";

-- creating a final table
CREATE TABLE IF NOT EXISTS meteorites (
    id INTEGER,
    name TEXT NOT NULL,
    class TEXT NOT NULL,
    mass REAL,
    discovery TEXT NOT NULL CHECK (discovery IN ("Fell", "Found")),
    year NUMERIC,
    lat REAL,
    long REAL,
    PRIMARY KEY(id)
);

-- copying data from temp table into final meteorites table
-- and sorting meteorites by year DESC and name ACS
INSERT INTO meteorites (name, class, mass, discovery, year, lat, long)
SELECT name, class, mass, discovery, year, lat, long
FROM temp
ORDER BY "year" ASC, "name" ASC;
