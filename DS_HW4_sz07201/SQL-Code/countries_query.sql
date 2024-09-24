CREATE TABLE countries(
fact_id INT,
country_code VARCHAR(3),
country_name VARCHAR(50),
country_region VARCHAR(50),
country_sub_region VARCHAR(50),
country_area BIGINT,
country_area_land BIGINT,
country_area_water BIGINT,
country_population BIGINT,
country_population_growth FLOAT,
country_birth_rate FLOAT,
country_death_rate FLOAT,
country_migration_rate FLOAT);

-- COPY countries FROM '/path/to/your/file.csv' DELIMITER ',' CSV HEADER;
