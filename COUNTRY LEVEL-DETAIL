--forest difference across countries between 2016 and 1990


WITH t1 AS(SELECT *
 FROM forestation
 WHERE year=2016 AND country_name != 'World'),
 t2 AS(SELECT *
 FROM forestation
 WHERE year=1990 AND country_name != 'World')
 SELECT t1.country_name,
 t1.forest_area_sqkm forest_2016,
 t2.forest_area_sqkm forest_1990,
 t1.forest_area_sqkm - t2.forest_area_sqkm forest_difference
 FROM t1
 JOIN t2
 ON t1.country_code = t2.country_code
 WHERE t1.forest_area_sqkm - t2.forest_area_sqkm IS NOT NULL
ORDER BY forest_difference DESC;



--countries with largest percentage increase in forest area from 1990 to 2016
WITH t2 AS(SELECT *
 FROM forestation
 WHERE year=2016 AND country_name != 'World'),
 t3 AS(SELECT *
 FROM forestation
 WHERE year=1990 AND country_name != 'World')
SELECT t2.year,
 t2.country_name,
 t2.forest_area_sqkm forest_2016,
 t3.forest_area_sqkm forest_1990,
 t2.forest_area_sqkm - t3.forest_area_sqkm difference,
 ((t2.forest_area_sqkm - t3.forest_area_sqkm)/(t3.forest_area_sqkm))*100 
per_difference
FROM t2
JOIN t3
ON t2.country_code = t3.country_code
WHERE t2.forest_area_sqkm - t3.forest_area_sqkm IS NOT NULL
ORDER BY per_difference DESC;




--forest difference across countries between 2016 and 1990
WITH t1 AS(SELECT *
 FROM forestation
 WHERE year=2016 AND country_name != 'World'),
 t2 AS(SELECT *
 FROM forestation
 WHERE year=1990 AND country_name != 'World')
 SELECT t1.country_name,
 t1.region,
 t1.forest_area_sqkm forest_2016,
 t2.forest_area_sqkm forest_1990,
 t1.forest_area_sqkm - t2.forest_area_sqkm forest_difference
 FROM t1
 JOIN t2
 ON t1.country_code = t2.country_code
 WHERE t1.forest_area_sqkm - t2.forest_area_sqkm IS NOT NULL
ORDER BY forest_difference ;





--countries with largest percentage decrease in forest area from 1990 to 2016
WITH t2 AS(SELECT *
 FROM forestation
 WHERE year=2016 AND country_name != 'World'),
 t3 AS(SELECT *
 FROM forestation
 WHERE year=1990 AND country_name != 'World')
SELECT t2.country_name,
 t2.region,
 t2.forest_area_sqkm forest_2016,
 t3.forest_area_sqkm forest_1990,
 t2.forest_area_sqkm - t3.forest_area_sqkm difference,
 ((t2.forest_area_sqkm - t3.forest_area_sqkm)/(t3.forest_area_sqkm))*100 
per_difference
FROM t2
JOIN t3
ON t2.country_code = t3.country_code
WHERE t2.forest_area_sqkm - t3.forest_area_sqkm IS NOT NULL 
ORDER BY per_difference
LIMIT 5
