-- 1.sql
SELECT "0m" 
FROM normals WHERE latitude = 42.5 
AND longitude = -69.5;

-- 2.sql
SELECT "225m" 
FROM normals WHERE latitude = 42.5 
AND longitude = -69.5;

-- 3.sql
SELECT "0m", "100m", "200m" 
FROM normals WHERE latitude = 42.5 
AND longitude = -69.5;

-- 4.sql
SELECT MIN("0M") 
FROM normals;

-- 5.sql
SELECT MAX("0M") 
FROM normals;

-- 6.sql
SELECT "50m", latitude, longitude 
FROM normals 
WHERE (latitude BETWEEN 0 AND 20) 
AND (longitude BETWEEN 55 AND 75);

-- 7.sql
SELECT ROUND(AVG("0m"), 2) AS "Average Equator Ocean Surface Temperature" 
FROM normals 
WHERE latitude BETWEEN -0.5 AND 0.5;

-- 8.sql
SELECT "0m", latitude, longitude 
FROM normals 
ORDER BY "0m" ASC , "latitude" ASC LIMIT 10;

-- 9.sql
SELECT "0m", latitude, longitude 
FROM normals ORDER BY "0m" DESC, "latitude" ASC LIMIT 10;

-- 10.sql
SELECT COUNT(DISTINCT latitude) 
FROM normals 
WHERE latitude IS NOT NULL;
