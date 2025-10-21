-- 1.sql
SELECT birth_city, birth_state, birth_country 
FROM players 
WHERE first_name = "Jackie" 
AND last_name = "Robinson";

-- 2.sql
SELECT bats 
FROM players 
WHERE first_name = "Babe" 
AND last_name = "Ruth";

-- 3.sql
SELECT id 
FROM players 
WHERE debut IS NULL;

-- 4.sql
SELECT first_name, last_name 
FROM players 
WHERE birth_country IS NOT "USA" 
ORDER BY first_name, last_name;

-- 5.sql
SELECT first_name, last_name 
FROM players 
WHERE bats = "R" 
ORDER BY first_name, last_name;

-- 6.sql
SELECT first_name, last_name, debut 
FROM players 
WHERE birth_city = "Pittsburgh" 
AND birth_state = "PA" 
ORDER BY debut DESC, first_name, last_name;

-- 7.sql
SELECT COUNT(first_name) 
FROM players 
WHERE (bats = "R" AND throws = "L") 
OR (bats = "L" AND throws = "R");

-- 8.sql
SELECT ROUND(AVG(height), 2) AS "Average Height", ROUND(AVG(weight), 2) AS "Average Weight" 
FROM players 
WHERE debut >= "2000-01-01";

-- 9.sql
SELECT first_name, last_name 
FROM players 
WHERE final_game LIKE '2022%' 
ORDER BY first_name, last_name;

-- 10.sql
SELECT first_name, last_name, ROUND((height * 2.54), 2) AS "handsome_cuties" 
FROM players 
WHERE height > 70.8 
ORDER BY first_name, last_name;
