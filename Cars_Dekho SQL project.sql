-- create schema cars;
-- SELECT * FROM cars.car_dekho;
USE cars;
-- READING DATA
SELECT* FROM car_dekho; 
-- count of total records
SELECT COUNT(*) FROM car_dekho; 
-- total cars available in 2023
SELECT count(*) FROM car_dekho WHERE year =2023;
-- total cars  available in 2020,2021,2022
SELECT count(*) FROM car_dekho WHERE  year in (2020,2021,2022) group by year;
-- Printing the total of all cars by year.(just count)
SELECT year,count(*) FROM car_dekho group by year;
-- how many diesel cars in 2020
SELECT count(*) from car_dekho where year="2020" and fuel="Diesel";  
-- how many petrol cars in 2020
SELECT count(*) from car_dekho where year="2020" and fuel="petrol";  
-- print all the fuel cars (petrol,diesel,CNG) come by all year
SELECT year,count(*) from car_dekho where fuel="Petrol" group by year;  
SELECT year,count(*) from car_dekho where fuel="Diesel" group by year;  
SELECT year,count(*) from car_dekho where fuel="CNG" group by year;  
-- which year has more than 100 cars
SELECT year,count(*) from car_dekho group by year having count(*) >100; 
-- all cars count details between 2015 and 2023
SELECT count(*) from car_dekho where year between 2015 and 2023;
-- all cars details between 2015 to 2023 
SELECT * from car_dekho where year between 2015 and 2023; 
    