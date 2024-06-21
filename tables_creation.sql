CREATE TABLE location_data (
    _record_number SERIAL PRIMARY KEY,
    iso_code varchar(8),
    continent varchar(13),
    location varchar(32),
    date timestamp,
    population_density numeric(9,3),
    population numeric(12,1)
);

CREATE TABLE healthcare_data (
    _record_number INT,
    total_cases numeric(11,1),
    new_cases numeric(10,1),
    new_cases_smoothed numeric(11,3),
    total_deaths numeric(9,1),
    new_deaths numeric(8,1),
    new_deaths_smoothed numeric(9,3),
    total_cases_per_million numeric(10,3),
    new_cases_per_million numeric(10,3),
    new_cases_smoothed_per_million numeric(9,3),
    total_deaths_per_million numeric(8,3),
    new_deaths_per_million numeric(7,3),
    new_deaths_smoothed_per_million numeric(7,3),
    reproduction_rate numeric(5,2),
    icu_patients numeric(7,1),
    icu_patients_per_million numeric(7,3),
    hosp_patients numeric(8,1),
    hosp_patients_per_million numeric(8,3),
    weekly_icu_admissions numeric(6,1),
    weekly_icu_admissions_per_million numeric(7,3),
    weekly_hosp_admissions numeric(8,1),
    weekly_hosp_admissions_per_million numeric(7,3),
    total_tests numeric(12,1),
    new_tests numeric(10,1),
    total_tests_per_thousand numeric(9,3),
    new_tests_per_thousand numeric(7,3),
    new_tests_smoothed numeric(10,1),
    new_tests_smoothed_per_thousand numeric(7,3),
    positive_rate numeric(6,4),
    tests_per_case numeric(9,1),
    tests_units varchar(15),
    stringency_index numeric(6,2),
    hospital_beds_per_thousand numeric(6,3),
    PRIMARY KEY (_record_number),
    FOREIGN KEY (_record_number) REFERENCES location_data(_record_number)
);


CREATE TABLE economic_data (
    _record_number INT,
    gdp_per_capita numeric(10,3),
    extreme_poverty numeric(4,1),
    life_expectancy numeric(5,2),
    human_development_index numeric(5,3),
    PRIMARY KEY (_record_number),
    FOREIGN KEY (_record_number) REFERENCES location_data(_record_number)
);



CREATE TABLE vaccination_data (
    _record_number INT,
    total_vaccinations numeric(13,1),
    people_vaccinated numeric(12,1),
    people_fully_vaccinated numeric(12,1),
    total_boosters numeric(12,1),
    new_vaccinations numeric(10,1),
    new_vaccinations_smoothed numeric(10,1),
    total_vaccinations_per_hundred numeric(6,2),
    people_vaccinated_per_hundred numeric(6,2),
    people_fully_vaccinated_per_hundred numeric(6,2),
    total_boosters_per_hundred numeric(6,2),
    new_vaccinations_smoothed_per_million numeric(8,1),
    new_people_vaccinated_smoothed numeric(10,1),
    new_people_vaccinated_smoothed_per_hundred numeric(6,3),
    PRIMARY KEY (_record_number),
    FOREIGN KEY (_record_number) REFERENCES location_data(_record_number)
);


CREATE TABLE demographic_data (
    _record_number INT,
    median_age numeric(4,1),
    aged_65_older numeric(6,3),
    aged_70_older numeric(6,3),
    cardiovasc_death_rate numeric(7,3),
    diabetes_prevalence numeric(5,2),
    female_smokers numeric(6,3),
    male_smokers numeric(6,3),
    handwashing_facilities numeric(7,3),
    PRIMARY KEY (_record_number),
    FOREIGN KEY (_record_number) REFERENCES location_data(_record_number)
);


CREATE TABLE excess_mortality_data (
    _record_number INT,
    excess_mortality_cumulative_absolute numeric(16,8),
    excess_mortality_cumulative numeric(6,2),
    excess_mortality numeric(6,2),
    excess_mortality_cumulative_per_million numeric(14,8),
    PRIMARY KEY (_record_number),
    FOREIGN KEY (_record_number) REFERENCES location_data(_record_number)
);



