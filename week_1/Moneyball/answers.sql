-- 1.sql
SELECT year, ROUND(AVG(salary), 2)
FROM salaries
GROUP BY year
ORDER BY year DESC;

-- 2.sql
SELECT year, salary
FROM salaries
WHERE player_id = (
    SELECT id
    FROM players
    WHERE first_name = "Cal"
    AND last_name LIKE "Ripken%"
)
ORDER BY year DESC;

-- 3.sql
SELECT year, HR
FROM performances
WHERE player_id = (
    SELECT id
    FROM players
    WHERE first_name = "Ken"
    AND last_name = "Griffey"
    AND birth_year = 1969
)
ORDER BY year DESC;

-- 4.sql
SELECT first_name, last_name, salary
FROM players
JOIN salaries ON players.id = salaries.player_id
WHERE year = 2001
ORDER BY salary, first_name, last_name, player_id
LIMIT 50;

-- 5.sql
SELECT DISTINCT name
FROM teams
JOIN performances ON teams.id = performances.team_id
JOIN players ON performances.player_id = players.id
WHERE first_name = "Satchel"
AND last_name = "Paige";

-- 6.sql
SELECT name, SUM(H) AS "total hits"
FROM teams
JOIN performances ON teams.id = performances.team_id
WHERE performances.year = 2001
GROUP BY name
ORDER BY "total hits" DESC
LIMIT 5;

-- 7.sql
SELECT first_name, last_name
FROM players
JOIN salaries ON players.id = salaries.player_id
ORDER BY salary DESC
LIMIT 1;

-- 8.sql
SELECT salary
FROM salaries
JOIN performances ON salaries.player_id = performances.player_id
WHERE salaries.year = 2001
AND performances.year = 2001
ORDER BY HR DESC
LIMIT 1;

-- 9.sql
SELECT name, ROUND(AVG(salary), 2) AS "average salary"
FROM teams
JOIN salaries ON teams.id = salaries.team_id
WHERE salaries.year = 2001
GROUP BY name
ORDER BY "average salary"
LIMIT 5;

-- 10.sql
SELECT first_name, last_name, salary, salaries.year, performances.year, HR
FROM players
JOIN salaries ON players.id = salaries.player_id
JOIN performances ON players.id = performances.player_id
WHERE performances.year = salaries.year
ORDER BY players.id, salaries.year DESC, HR DESC, salary DESC;

-- 11.sql
SELECT first_name, last_name, salary / H AS "dollars per hit"
FROM players
JOIN performances ON performances.player_id = players.id
JOIN salaries ON salaries.player_id = players.id
WHERE performances.year = salaries.year
AND performances.year = 2001
AND H > 0
ORDER BY "dollars per hit", first_name, last_name
LIMIT 10;

-- 12.sql
SELECT first_name,last_name
FROM players
WHERE id IN
        (SELECT performances.player_id
        FROM performances
        JOIN salaries ON salaries.player_id = performances.player_id
        WHERE performances.year = 2001
        AND salaries.year = 2001
        AND H != 0
        ORDER BY salary / H
        LIMIT 10)

INTERSECT

SELECT first_name, last_name
FROM players
WHERE id IN
        (SELECT performances.player_id
        FROM performances
        JOIN salaries ON salaries.player_id = performances.player_id
        WHERE performances.year = 2001
        AND salaries.year = 2001
        AND H != 0
        ORDER BY salary / RBI
        LIMIT 10)

ORDER BY last_name;

