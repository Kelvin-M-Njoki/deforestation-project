/*2. REGIONAL OUTLOOK*/


--table showing forest percentage across regions for year 1990 and 2016
CREATE VIEW table1
AS 
SELECT region,
 year,
 SUM(total_area_sq_mi*2.59) land,
 SUM(forest_area_sqkm) forest,
 ((SUM(forest_area_sqkm)/SUM(total_area_sq_mi*2.59))*100) per_forest
FROM forestation 
WHERE year IN(1990,2016) 
GROUP BY 1, 2
ORDER BY 2;


--forest percentage of the world for the year 2016 and 1990
SELECT *
FROM table1
WHERE region ='World'
--forest percentage of the world for the year 2016 and 1990
SELECT region,
 year,
 ROUND((per_forest::decimal),2) percentage
FROM table1
WHERE region ='World';


--forest percentage across regions for the year 2016
SELECT region,
 year,
 ROUND((per_forest::decimal),2) percentage
FROM table1
WHERE year =2016 AND region != 'World'
ORDER BY per_forest DESC;
--forest percentage across regions for the year 1990
SELECT region,
 year,
 ROUND((per_forest::decimal),2) percentage
FROM table1
WHERE year =1990 AND region != 'World'
ORDER BY per_forest DESC
