-- Calculate total vaccinations per continent, sorting results by continent in descending order
SELECT 
      ld.continent, 
      sum(vd.people_vaccinated) total_vaccination_per_continent
FROM location_data ld
JOIN vaccination_data vd 
ON ld._record_number = vd._record_number
WHERE ld.continent IS NOT NULL
GROUP BY ld.continent
ORDER BY ld.continent DESC;



SELECT  ld.continent,sum(hd.total_deaths) deaths_per_continent
FROM location_data ld
JOIN healthcare_data hd ON ld._record_number = hd._record_number
WHERE total_deaths is NOT NULL AND ld.continent IS NOT NULL
GROUP BY ld.continent
ORDER BY ld.continent DESC;


