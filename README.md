# CarDekho Database Analysis

This document outlines the SQL queries used to analyze the `car_dekho` dataset, which contains data on cars, including details such as manufacturing year, fuel type, and other attributes. The analysis focuses on understanding the distribution of cars by year, fuel type, and other criteria.

## Table of Contents

1. [Introduction](#introduction)
2. [Setup](#setup)
3. [Queries](#queries)
   - [Total Records](#total-records)
   - [Cars Available by Year](#cars-available-by-year)
   - [Fuel Type Distribution](#fuel-type-distribution)
   - [Car Availability by Year Range](#car-availability-by-year-range)
4. [Dependencies](#dependencies)
5. [Usage](#usage)
6. [Conclusion](#conclusion)

## Introduction

The `car_dekho` dataset provides information on various cars, including their manufacturing year and fuel type. This analysis aims to extract insights such as the total number of cars, the distribution of cars by year, the count of cars by fuel type, and the number of cars available in specific year ranges.

## Setup

To begin analyzing the data, the following setup steps were taken:
1. **Database Creation**: A schema named `cars` was created.
2. **Table Selection**: The `car_dekho` table was selected for analysis.

```sql
-- Create the schema
CREATE SCHEMA cars;

-- Use the schema
USE cars;

-- Select all data from the car_dekho table
SELECT * FROM car_dekho;
```

## Queries

### Total Records

To determine the total number of records in the `car_dekho` table:
```sql
SELECT COUNT(*) FROM car_dekho;
```

### Cars Available by Year

1. **Total Cars in 2023**:
   ```sql
   SELECT COUNT(*) FROM car_dekho WHERE year = 2023;
   ```

2. **Total Cars in 2020, 2021, 2022**:
   ```sql
   SELECT COUNT(*) FROM car_dekho WHERE year IN (2020, 2021, 2022) GROUP BY year;
   ```

3. **Total Cars by Year**:
   ```sql
   SELECT year, COUNT(*) FROM car_dekho GROUP BY year;
   ```

### Fuel Type Distribution

1. **Diesel Cars in 2020**:
   ```sql
   SELECT COUNT(*) FROM car_dekho WHERE year = 2020 AND fuel = 'Diesel';
   ```

2. **Petrol Cars in 2020**:
   ```sql
   SELECT COUNT(*) FROM car_dekho WHERE year = 2020 AND fuel = 'Petrol';
   ```

3. **Fuel Type by Year**:
   - **Petrol Cars**:
     ```sql
     SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Petrol' GROUP BY year;
     ```

   - **Diesel Cars**:
     ```sql
     SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'Diesel' GROUP BY year;
     ```

   - **CNG Cars**:
     ```sql
     SELECT year, COUNT(*) FROM car_dekho WHERE fuel = 'CNG' GROUP BY year;
     ```

### Car Availability by Year Range

1. **Years with More Than 100 Cars**:
   ```sql
   SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING COUNT(*) > 100;
   ```

2. **Total Cars Between 2015 and 2023**:
   ```sql
   SELECT COUNT(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023;
   ```

3. **All Cars Details Between 2015 to 2023**:
   ```sql
   SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;
   ```

## Dependencies

This analysis requires a SQL database environment where the `car_dekho` table is accessible. No specific external dependencies are needed beyond the SQL database.

## Usage

To perform this analysis:
1. Ensure you have access to the `car_dekho` dataset in a SQL database.
2. Execute the provided SQL queries to extract the desired information.

## Conclusion

The analysis provides an overview of car availability by year, fuel type, and other factors from the `car_dekho` dataset. This information is valuable for understanding trends in car sales and preferences over different years.

---

Feel free to adjust this README based on your specific context or additional analyses you may conduct!
