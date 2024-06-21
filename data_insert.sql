INSERT INTO location_data (
	 _record_number,
    iso_code,
    continent,
    location,
    date,
    population_density,
    population
)
SELECT
	 _record_number,
    iso_code,
    continent,
    location,
    date,
    population_density,
    population
FROM covid_data;



INSERT INTO economic_data (
    _record_number,
    gdp_per_capita,
    extreme_poverty,
    life_expectancy,
    human_development_index
)
SELECT
	 _record_number,
    gdp_per_capita,
    extreme_poverty,
    life_expectancy,
    human_development_index
FROM covid_data;

INSERT INTO vaccination_data (
	 _record_number,
    total_vaccinations,
    people_vaccinated,
    people_fully_vaccinated,
    total_boosters,
    new_vaccinations,
    new_vaccinations_smoothed,
    total_vaccinations_per_hundred,
    people_vaccinated_per_hundred,
    people_fully_vaccinated_per_hundred,
    total_boosters_per_hundred,
    new_vaccinations_smoothed_per_million,
    new_people_vaccinated_smoothed,
    new_people_vaccinated_smoothed_per_hundred
)
	
SELECT
	 _record_number,
    total_vaccinations,
    people_vaccinated,
    people_fully_vaccinated,
    total_boosters,
    new_vaccinations,
    new_vaccinations_smoothed,
    total_vaccinations_per_hundred,
    people_vaccinated_per_hundred,
    people_fully_vaccinated_per_hundred,
    total_boosters_per_hundred,
    new_vaccinations_smoothed_per_million,
    new_people_vaccinated_smoothed,
    new_people_vaccinated_smoothed_per_hundred
FROM covid_data;

INSERT INTO demographic_data (
	_record_number,
    median_age,
    aged_65_older,
    aged_70_older,
    cardiovasc_death_rate,
    diabetes_prevalence,
    female_smokers,
    male_smokers,
    handwashing_facilities
)
SELECT
	 _record_number,
    median_age,
    aged_65_older,
    aged_70_older,
    cardiovasc_death_rate,
    diabetes_prevalence,
    female_smokers,
    male_smokers,
    handwashing_facilities
FROM covid_data;

INSERT INTO excess_mortality_data (
	 _record_number,
    excess_mortality_cumulative_absolute,
    excess_mortality_cumulative,
    excess_mortality,
    excess_mortality_cumulative_per_million
)
SELECT
	 _record_number,
    excess_mortality_cumulative_absolute,
    excess_mortality_cumulative,
    excess_mortality,
    excess_mortality_cumulative_per_million
FROM covid_data;

INSERT INTO healthcare_data (
    _record_number,
    total_cases,
    new_cases,
    new_cases_smoothed,
    total_deaths,
    new_deaths,
    new_deaths_smoothed,
    total_cases_per_million,
    new_cases_per_million,
    new_cases_smoothed_per_million,
    total_deaths_per_million,
    new_deaths_per_million,
    new_deaths_smoothed_per_million,
    reproduction_rate,
    icu_patients,
    icu_patients_per_million,
    hosp_patients,
    hosp_patients_per_million,
    weekly_icu_admissions,
    weekly_icu_admissions_per_million,
    weekly_hosp_admissions,
    weekly_hosp_admissions_per_million,
    total_tests,
    new_tests,
    total_tests_per_thousand,
    new_tests_per_thousand,
    new_tests_smoothed,
    new_tests_smoothed_per_thousand,
    positive_rate,
    tests_per_case,
    tests_units,
    stringency_index,
    hospital_beds_per_thousand
)
SELECT
    _record_number,
    total_cases,
    new_cases,
    new_cases_smoothed,
    total_deaths,
    new_deaths,
    new_deaths_smoothed,
    total_cases_per_million,
    new_cases_per_million,
    new_cases_smoothed_per_million,
    total_deaths_per_million,
    new_deaths_per_million,
    new_deaths_smoothed_per_million,
    reproduction_rate,
    icu_patients,
    icu_patients_per_million,
    hosp_patients,
    hosp_patients_per_million,
    weekly_icu_admissions,
    weekly_icu_admissions_per_million,
    weekly_hosp_admissions,
    weekly_hosp_admissions_per_million,
    total_tests,
    new_tests,
    total_tests_per_thousand,
    new_tests_per_thousand,
    new_tests_smoothed,
    new_tests_smoothed_per_thousand,
    positive_rate,
    tests_per_case,
    tests_units,
    stringency_index,
    hospital_beds_per_thousand
FROM covid_data;



