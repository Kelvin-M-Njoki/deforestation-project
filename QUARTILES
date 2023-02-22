QUARTILES
--quantiles
SELECT CASE WHEN per_forest<=25 THEN 'Q1'
 WHEN per_forest<=50 THEN 'Q2'
 WHEN per_forest<=75 THEN 'Q3'
 WHEN per_forest>75 THEN 'Q4'
 END AS forestation_quantile, COUNT(country_name)
FROM forestation
WHERE year=2016 AND country_name != 'World' AND per_forest IS NOT NULL
GROUP BY forestation_quantile;
--countries in the top quantile
SELECT CASE WHEN per_forest<=25 THEN 'Q1'
 WHEN per_forest<=50 THEN 'Q2'
 WHEN per_forest<=75 THEN 'Q3'
 WHEN per_forest>75 THEN 'Q4'
 END AS forestation_quantile,
 country_name,
 region,
 ROUND((per_forest::decimal),2) 
FROM forestation
WHERE year=2016 AND per_forest>75
ORDER BY per_forest
