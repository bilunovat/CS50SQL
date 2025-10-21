-- 1.sql
SELECT japanese_title, english_title 
FROM views;

-- 2.sql
SELECT average_color 
FROM views
WHERE artist = 'Hokusai' 
AND english_title LIKE '%river%';

-- 3.sql
SELECT COUNT(english_title) 
FROM views 
WHERE artist = 'Hokusai' 
AND english_title LIKE '%Fuji%';

-- 4.sql
SELECT COUNT(english_title) 
FROM views 
WHERE artist = 'Hiroshige' 
AND english_title LIKE '%Eastern Capital%';

-- 5.sql
SELECT MAX(contrast) AS maximum_contrast 
FROM views 
WHERE artist = 'Hokusai';

-- 6.sql
SELECT ROUND(AVG(entropy),2) AS Hiroshige_average_entropy 
FROM views 
WHERE artist = 'Hiroshige';

-- 7.sql
SELECT english_title 
FROM views 
WHERE artist = 'Hiroshige' 
ORDER BY brightness DESC LIMIT 5;

-- 8.sql
SELECT english_title 
FROM views 
WHERE artist = 'Hokusai' 
ORDER BY contrast LIMIT 5;

-- 9.sql
SELECT english_title, artist 
FROM views 
ORDER BY brightness DESC LIMIT 1;

-- 10.sql
SELECT japanese_title AS original_title, english_title AS translated_title 
FROM views 
WHERE english_title LIKE '%hill%' 
OR english_title LIKE '%beach%' 
ORDER BY english_title;
