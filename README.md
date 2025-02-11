# covid_impact_analysis

## Project Overview

This project involves creating a comprehensive data warehouse for storing and managing COVID-19-related data. The database is structured to support various facets of COVID-19 data including location information, healthcare metrics, economic indicators, vaccination data, demographic details, and excess mortality statistics. The aim is to provide a robust schema for analysis and reporting on the pandemic's impact across different dimensions.

## Database Schema

The database consists of several interrelated tables:

1. **`location_data`**
2. **`healthcare_data`**
3. **`economic_data`**
4. **`vaccination_data`**
5. **`demographic_data`**
6. **`excess_mortality_data`**

### Tables and Their Fields

#### `location_data`
Stores basic information about the location.

| Column Name        | Data Type    | Description                       |
|--------------------|--------------|-----------------------------------|
| `_record_number`   | `SERIAL`     | Primary key                       |
| `iso_code`         | `varchar(8)` | ISO code for the location         |
| `continent`        | `varchar(13)`| Continent name                    |
| `location`         | `varchar(32)`| Location name                     |
| `date`             | `timestamp`  | Date of the data record           |
| `population_density` | `numeric(9,3)` | Population density              |
| `population`       | `numeric(12,1)`| Population count                  |

#### `healthcare_data`
Contains healthcare metrics related to COVID-19.

| Column Name                         | Data Type    | Description                                    |
|-------------------------------------|--------------|------------------------------------------------|
| `_record_number`                    | `INT`        | Primary key, references `location_data`        |
| `total_cases`                       | `numeric(11,1)`| Total confirmed cases                          |
| `new_cases`                         | `numeric(10,1)`| New cases reported                             |
| `new_cases_smoothed`                | `numeric(11,3)`| New cases smoothed over a period               |
| `total_deaths`                      | `numeric(9,1)` | Total confirmed deaths                         |
| `new_deaths`                        | `numeric(8,1)` | New deaths reported                            |
| `new_deaths_smoothed`               | `numeric(9,3)` | New deaths smoothed over a period              |
| `total_cases_per_million`           | `numeric(10,3)`| Total cases per million people                 |
| `new_cases_per_million`             | `numeric(10,3)`| New cases per million people                   |
| `new_cases_smoothed_per_million`    | `numeric(9,3)` | Smoothed new cases per million people          |
| `total_deaths_per_million`          | `numeric(8,3)` | Total deaths per million people                |
| `new_deaths_per_million`            | `numeric(7,3)` | New deaths per million people                  |
| `new_deaths_smoothed_per_million`   | `numeric(7,3)` | Smoothed new deaths per million people         |
| `reproduction_rate`                 | `numeric(5,2)` | Reproduction rate of the virus                 |
| `icu_patients`                      | `numeric(7,1)` | Number of ICU patients                         |
| `icu_patients_per_million`          | `numeric(7,3)` | ICU patients per million people                |
| `hosp_patients`                     | `numeric(8,1)` | Number of hospitalized patients                |
| `hosp_patients_per_million`         | `numeric(8,3)` | Hospitalized patients per million people       |
| `weekly_icu_admissions`             | `numeric(6,1)` | Weekly ICU admissions                          |
| `weekly_icu_admissions_per_million` | `numeric(7,3)` | Weekly ICU admissions per million people       |
| `weekly_hosp_admissions`            | `numeric(8,1)` | Weekly hospital admissions                     |
| `weekly_hosp_admissions_per_million`| `numeric(7,3)` | Weekly hospital admissions per million people  |
| `total_tests`                       | `numeric(12,1)`| Total tests conducted                          |
| `new_tests`                         | `numeric(10,1)`| New tests conducted                            |
| `total_tests_per_thousand`          | `numeric(9,3)` | Total tests per thousand people                |
| `new_tests_per_thousand`            | `numeric(7,3)` | New tests per thousand people                  |
| `new_tests_smoothed`                | `numeric(10,1)`| Smoothed new tests                             |
| `new_tests_smoothed_per_thousand`   | `numeric(7,3)` | Smoothed new tests per thousand people         |
| `positive_rate`                     | `numeric(6,4)` | Positive rate of tests                         |
| `tests_per_case`                    | `numeric(9,1)` | Tests conducted per confirmed case             |
| `tests_units`                       | `varchar(15)` | Units of measurement for tests                 |
| `stringency_index`                  | `numeric(6,2)` | Government response stringency index           |
| `hospital_beds_per_thousand`        | `numeric(6,3)` | Number of hospital beds per thousand people    |

#### `economic_data`
Captures economic indicators related to COVID-19.

| Column Name             | Data Type    | Description                                |
|-------------------------|--------------|--------------------------------------------|
| `_record_number`        | `INT`        | Primary key, references `location_data`    |
| `gdp_per_capita`        | `numeric(10,3)`| GDP per capita                             |
| `extreme_poverty`       | `numeric(4,1)` | Percentage of people in extreme poverty    |
| `life_expectancy`       | `numeric(5,2)` | Average life expectancy                    |
| `human_development_index`| `numeric(5,3)`| Human development index                    |

#### `vaccination_data`
Contains data on COVID-19 vaccinations.

| Column Name                            | Data Type    | Description                                |
|----------------------------------------|--------------|--------------------------------------------|
| `_record_number`                       | `INT`        | Primary key, references `location_data`    |
| `total_vaccinations`                   | `numeric(13,1)`| Total vaccinations administered            |
| `people_vaccinated`                    | `numeric(12,1)`| People who received at least one dose      |
| `people_fully_vaccinated`              | `numeric(12,1)`| People fully vaccinated                    |
| `total_boosters`                       | `numeric(12,1)`| Total booster doses administered           |
| `new_vaccinations`                     | `numeric(10,1)`| New vaccinations administered              |
| `new_vaccinations_smoothed`            | `numeric(10,1)`| Smoothed new vaccinations                  |
| `total_vaccinations_per_hundred`       | `numeric(6,2)` | Total vaccinations per hundred people      |
| `people_vaccinated_per_hundred`        | `numeric(6,2)` | People vaccinated per hundred people       |
| `people_fully_vaccinated_per_hundred`  | `numeric(6,2)` | Fully vaccinated people per hundred people |
| `total_boosters_per_hundred`           | `numeric(6,2)` | Booster doses per hundred people           |
| `new_vaccinations_smoothed_per_million`| `numeric(8,1)` | Smoothed new vaccinations per million people|
| `new_people_vaccinated_smoothed`       | `numeric(10,1)`| Smoothed new people vaccinated             |
| `new_people_vaccinated_smoothed_per_hundred` | `numeric(6,3)`| Smoothed new people vaccinated per hundred people|

#### `demographic_data`
Stores demographic and health-related metrics.

| Column Name               | Data Type    | Description                                    |
|---------------------------|--------------|------------------------------------------------|
| `_record_number`          | `INT`        | Primary key, references `location_data`        |
| `median_age`              | `numeric(4,1)` | Median age of the population                   |
| `aged_65_older`           | `numeric(6,3)` | Percentage of population aged 65 or older      |
| `aged_70_older`           | `numeric(6,3)` | Percentage of population aged 70 or older      |
| `cardiovasc_death_rate`   | `numeric(7,3)` | Cardiovascular death rate                      |
| `diabetes_prevalence`     | `numeric(5,2)` | Prevalence of diabetes                         |
| `female_smokers`          | `numeric(6,3)` | Percentage of female smokers                   |
| `male_smokers`            | `numeric(6,3)` | Percentage of male smokers                     |
| `handwashing_facilities`  | `numeric(7,3)` | Availability of handwashing facilities         |

#### `excess_mortality_data`
Contains statistics on excess mortality.

| Column Name                        | Data Type    | Description                                    |
|------------------------------------|--------------|------------------------------------------------|
| `_record_number`                   | `INT`        | Primary key, references `location_data`        |
| `excess_mortality_cumulative_absolute` | `numeric(16,8)`| Absolute number of

## Visualizing Total Vaccinations and Deaths per Continent

### Total Vaccinations per Continent

The bar chart below shows the total number of vaccinations administered per continent:

![Figure 1: Total Vaccinations per Continent](asset/total_vacination.png)

### Total Deaths per Continent

The bar chart below illustrates the total number of deaths per continent:

![Figure 2: Total Deaths per Continent](asset/deaths_per_continent.png)


##  Top 10 Locations in Africa by Life Expectancy
The bar chart below illustrates  Top 10 Locations in Africa by Life Expectancy:

![Figure 3: Top 10 Locations in Africa by Life Expectancy](asset/life_expectancy.png)


## Python Code for Plotting Total Vaccinations per Continent

Here is the Python code to plot the total vaccinations per continent using a bar chart:

```python
import pandas as pd
import matplotlib.pyplot as plt
from io import StringIO

# CSV data as a string
csv_data = """
continent,total_vaccination_per_continent
South America,183505526502.0
Oceania,7807667239.0
North America,239029400285.0
Europe,298113668484.0
Asia,1449217093883.0
Africa,30000661774.0
"""

# Read the CSV data into a pandas DataFrame
df = pd.read_csv(StringIO(csv_data))

# Plotting the data
plt.figure(figsize=(10, 6))
plt.bar(df['continent'], df['total_vaccination_per_continent'], color='green')
plt.xlabel('Continent')
plt.ylabel('Total Vaccinations')
plt.title('Total Vaccinations per Continent')
plt.xticks(rotation=45)
plt.yscale('log')  # Optional: Log scale to better visualize large differences
plt.tight_layout()

# Annotate values
for index, value in enumerate(df['total_vaccination_per_continent']):
    plt.text(index, value, f'{value:,.0f}', ha='center', va='bottom', fontsize=8, rotation=90)

plt.show()




![Figure 1: Total Deaths per Continent](asset/deaths_per_continent.png)

## Visualizing Total Deaths per Continent

This Python code uses `pandas` and `matplotlib` to visualize the total deaths per continent as a bar chart.

```python
import pandas as pd
import matplotlib.pyplot as plt
from io import StringIO

# CSV data as a string
csv_data = """
continent,deaths_per_continent
South America,1552175246.0
Oceania,21639456.0
North America,1764051993.0
Europe,2213997413.0
Asia,1675803264.0
Africa,288818204.0
"""

# Read the CSV data into a pandas DataFrame
df = pd.read_csv(StringIO(csv_data))

# Plotting the data
plt.figure(figsize=(10, 6))
plt.bar(df['continent'], df['deaths_per_continent'], color='red')
plt.xlabel('Continent')
plt.ylabel('Total Deaths')
plt.title('Total Deaths per Continent')
plt.xticks(rotation=45)
plt.yscale('log')  # Optional: Log scale to better visualize large differences
plt.tight_layout()

# Annotate values
for index, value in enumerate(df['deaths_per_continent']):
    plt.text(index, value, f'{value:,.0f}', ha='center', va='bottom', fontsize=8, rotation=90)

plt.show()

## Visualization: Top 10 Locations in Africa by Life Expectancy

The following Python code visualizes the top 10 locations in Africa by life expectancy using a horizontal bar chart.

```python
import pandas as pd
import matplotlib.pyplot as plt

data = {
    'location': ['Mauritius', 'Seychelles', 'Tunisia', 'Algeria', 'Libya', 
                 'Morocco', 'Cape Verde', 'Egypt', 'Namibia', 'Botswana'],
    'life_expectancy': [75.9, 74.9, 74.6, 73.2, 72.7, 72.6, 72.3, 71.2, 69.6, 69.1]
}

# Create DataFrame
df = pd.DataFrame(data)

# Plotting the data
plt.figure(figsize=(12, 8))
plt.barh(df['location'], df['life_expectancy'], color='skyblue')
plt.xlabel('Life Expectancy')
plt.title('Top 10 Locations in Africa by Life Expectancy')
plt.gca().invert_yaxis()  # Highest value at the top
plt.tight_layout()

# Annotate values
for index, value in enumerate(df['life_expectancy']):
    plt.text(value, index, f'{value:.1f}', ha='left', va='center', fontsize=10)

plt.show()
