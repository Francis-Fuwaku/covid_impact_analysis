SELECT 
      ld.continent, 
      sum(vd.people_vaccinated) total_vaccination_per_continent
FROM location_data  ld
JOIN vaccination_data vd 
ON ld._record_number = vd._record_number
WHERE ld.continent IS NOT NULL
GROUP BY ld.continent
ORDER BY ld.continent DESC;


