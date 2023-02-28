CREATE VIEW forestation
AS
SELECT f.country_code,
 f.country_name,
 r.region,
 r.income_group,
 f.year,
 f.forest_area_sqkm,
 l.total_area_sq_mi,
 ((f.forest_area_sqkm)/(l.total_area_sq_mi*2.59))*100 AS per_forest
FROM forest_area f
JOIN land_area l
ON f.country_code = l.country_code AND f.year=l.year
JOIN regions r
ON f.country_code = r.country_code
