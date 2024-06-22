-- Calculate total vaccinations per continent, sorting results by continent in descending order
SELECT  ld.continent, sum(vd.people_vaccinated) total_vaccination_per_continent
FROM location_data ld
JOIN vaccination_data vd 
ON ld._record_number = vd._record_number
WHERE ld.continent IS NOT NULL
GROUP BY ld.continent
ORDER BY ld.continent DESC;


-- Calculate total deaths per continent, sorting results by continent in descending order
SELECT ld.continent,SUM(hd.total_deaths) AS deaths_per_continent
FROM location_data ld
JOIN healthcare_data hd ON ld._record_number = hd._record_number
WHERE hd.total_deaths IS NOT NULL AND ld.continent IS NOT NULL
GROUP BY ld.continent
ORDER BY d.continent DESC;





-- Retrieve top 10 African locations with the highest life expectancy, sorted in descending order
SELECT ld.location,ed.life_expectancy
FROM economic_data ed
JOIN location_data ld ON ed._record_number = ld._record_number
WHERE ed.life_expectancy IS NOT NULL AND ld.continent = 'Africa'
GROUP BY ed.life_expectancy, ld.location
ORDER BY ed.life_expectancy DESC
LIMIT 10;

