-- Point 1
-- SELECT COUNT(*) AS total_records 
-- FROM cities;

-- SELECT COUNT(*) AS total_records 
-- FROM countries;

-- Point 2
-- SELECT c.country_name, COUNT(ct.city_id) AS city_count
-- FROM countries c
-- JOIN cities ct ON c.fact_id = ct.fact_id
-- GROUP BY c.country_name
-- ORDER BY city_count DESC;

-- Point 3 (extra)
-- SELECT 
--     countries.country_name, 
--     cities.city_name, 
--     cities.city_population
-- FROM 
--     cities
-- JOIN 
--     countries 
-- ON 
--     cities.fact_id = countries.fact_id
-- WHERE 
--     cities.capital = 1
-- ORDER BY 
--     cities.city_population DESC
-- LIMIT 10;

-- Point 3 Original which I believe to be a mistake
-- SELECT 
--     country_region, 
--     country_sub_region, 
--     COUNT(*) AS country_count
-- FROM 
--     countries
-- GROUP BY 
--     country_region, 
--     country_sub_region
-- ORDER BY 
--     country_count ASC;

-- Point 4
-- SELECT 
--     country_name, 
--     COUNT(DISTINCT country_region) AS region_count, 
--     COUNT(DISTINCT country_sub_region) AS sub_region_count
-- FROM 
--     countries
-- GROUP BY 
--     country_name
-- ORDER BY 
--     country_name ASC;

-- Point 5
-- SELECT 
--     capital, 
--     AVG(city_population) AS average_population
-- FROM 
--     cities
-- GROUP BY 
--     capital;

-- Point 6
SELECT
    country_region,
    country_sub_region,
    AVG(country_birth_rate) AS average_birth_rate
FROM
    countries
GROUP BY
    country_region,
    country_sub_region
ORDER BY
    country_region,
    country_sub_region;

