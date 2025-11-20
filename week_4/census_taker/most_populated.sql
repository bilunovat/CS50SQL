CREATE VIEW "most_populated" AS
SELECT *
FROM by_district
GROUP BY district
ORDER BY population DESC;
