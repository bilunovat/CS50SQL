-- 1.sql
SELECT name, city
FROM schools
WHERE type = "Public School";

-- 2.sql
SELECT name
FROM districts
WHERE name LIKE "%(non-op)";

-- 3.sql
SELECT AVG(per_pupil_expenditure) AS "Average District Per-Pupil Expenditure"
FROM expenditures;

-- 4.sql
SELECT city, COUNT(id) AS "number_of_schools"
FROM schools
WHERE type = "Public School"
GROUP BY city
ORDER BY number_of_schools DESC, city
LIMIT 10;

-- 5.sql
SELECT city, COUNT(id) AS "number_of_schools"
FROM schools
WHERE type = "Public School"
GROUP BY city HAVING number_of_schools <= 3
ORDER BY number_of_schools DESC, city;

-- 6.sql
SELECT name
FROM schools
JOIN graduation_rates ON schools.id = graduation_rates.school_id
WHERE graduated = 100.00;

-- 7.sql
SELECT name
FROM schools
WHERE district_id = (
    SELECT id
    FROM districts
    WHERE name = "Cambridge"
);

-- 8.sql
SELECT name, pupils
FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
ORDER BY pupils DESC;

-- 9.sql
SELECT name
FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
ORDER BY pupils
LIMIT 1;

-- 10.sql
SELECT name, per_pupil_expenditure
FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
WHERE district_id IN (
    SELECT district_id
    FROM schools
    WHERE type = "Public School"
)
ORDER BY per_pupil_expenditure DESC
LIMIT 10;

-- 11.sql
SELECT schools.name, expenditures.per_pupil_expenditure, graduation_rates.graduated
FROM schools
JOIN graduation_rates ON schools.id = graduation_rates.school_id
JOIN expenditures ON schools.district_id = expenditures.district_id
GROUP BY schools.name
ORDER BY expenditures.per_pupil_expenditure DESC, schools.name;

-- 12.sql
SELECT name, per_pupil_expenditure, exemplary
FROM districts
JOIN expenditures ON districts.id = expenditures.district_id
JOIN staff_evaluations ON districts.id = staff_evaluations.district_id
WHERE per_pupil_expenditure > (
    SELECT AVG(per_pupil_expenditure)
    FROM expenditures)
AND exemplary > (
    SELECT AVG(exemplary)
    FROM staff_evaluations)
AND type = "Public School District"
ORDER BY exemplary DESC, per_pupil_expenditure DESC;

-- 13.sql 
SELECT name, graduated
FROM schools
JOIN graduation_rates ON schools.id = graduation_rates.school_id
WHERE type = "Charter School"
AND graduated > 70
ORDER BY graduated DESC, name;
