-- 1.sql
SELECT title 
FROM episodes 
WHERE season = 1;

-- 2.sql
SELECT season, title 
FROM episodes 
WHERE episode_in_season = 1;

-- 3.sql
SELECT production_code 
FROM episodes 
WHERE title = "Hackerized!";

-- 4.sql
SELECT title 
FROM episodes 
WHERE topic IS NULL;

-- 5.sql
SELECT title 
FROM episodes 
WHERE air_date = '2004-12-31';

-- 6.sql
SELECT title 
FROM episodes 
WHERE season = 6 
AND air_date LIKE '2007%';

-- 7.sql
SELECT title, topic 
FROM episodes 
WHERE topic LIKE '%fractions%';

-- 8.sql
SELECT COUNT(title) 
FROM episodes 
WHERE air_date BETWEEN '2018-01-01' AND '2023-12-31';

-- 9.sql
SELECT COUNT(title) 
FROM episodes 
WHERE air_date BETWEEN '2002-01-01' AND '2007-12-31';

-- 10.sql
SELECT id, title, production_code 
FROM episodes 
ORDER BY production_code ASC;

-- 11.sql
SELECT title 
FROM episodes 
WHERE season = 5 
ORDER BY title DESC;

-- 12.sql
SELECT COUNT(DISTINCT title) 
FROM episodes;

-- 13.sql 
SELECT title, season 
FROM episodes 
WHERE title LIKE '%chance%' 
OR title LIKE 'star%';
