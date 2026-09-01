#الدول اللي بتحكي Slovene
SELECT c.name AS country_name, l.language, l.percentage
FROM countries c
JOIN languages l ON c.code = l.country_code
WHERE l.language = 'Slovene'
ORDER BY l.percentage DESC;
#عدد المدن بكل دولة
SELECT c.name AS country_name, COUNT(ci.id) AS total_cities
FROM countries c
JOIN cities ci ON c.code = ci.country_code
GROUP BY c.name
ORDER BY total_cities DESC;
#مدن المكسيك بسكان أكتر من 500,000
SELECT ci.name AS city_name, ci.population
FROM cities ci
JOIN countries c ON ci.country_code = c.code
WHERE c.name = 'Mexico' AND ci.population > 500000
ORDER BY ci.population DESC;
#اللغات اللي نسبتها أكتر من 89%
SELECT c.name AS country_name, l.language, l.percentage
FROM countries c
JOIN languages l ON c.code = l.country_code
WHERE l.percentage > 89
ORDER BY l.percentage DESC;
#دول مساحتها أقل من 501 وسكانها أكتر من 100,000
SELECT *
FROM countries
WHERE surface_area < 501 AND population > 100000;
#دول Constitutional Monarchy، capital أكتر من 200، وlife expectancy أكتر من 75
SELECT *
FROM countries
WHERE government_form = 'Constitutional Monarchy'
  AND capital > 200
  AND life_expectancy > 75;
  #مدن الأرجنتين بمقاطعة Buenos Aires وسكانها أكتر من 500,000
  SELECT c.name AS country_name, ci.name AS city_name,
       ci.district, ci.population
FROM countries c
JOIN cities ci ON c.code = ci.country_code
WHERE c.name = 'Argentina'
  AND ci.district = 'Buenos Aires'
  AND ci.population > 500000;
  #عدد الدول بكل Region
  SELECT region, COUNT(*) AS total_countries
FROM countries
GROUP BY region
ORDER BY total_countries DESC;