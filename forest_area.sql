SELECT forest_area_sqkm
FROM forestation
WHERE country_name ='World' AND year IN(1990,2016);
--difference in forest area between 1990 and 2016
SELECT ABS(forest_area_sqkm -
 (SELECT forest_area_sqkm
 FROM forestation
 WHERE country_name ='World' AND year = 1990
 )) difference
FROM forestation
WHERE country_name ='World' AND year = 2016
