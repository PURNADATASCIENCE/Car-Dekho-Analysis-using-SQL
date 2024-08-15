-- creating database
create database cars;

-- creating tabel
CREATE TABLE car_dekho_data;

-- select everyting from the car_dekho tabel
SELECT 
    *
FROM
    car_dekho;

-- count of all the data we have inside the tabel
SELECT 
    COUNT(*)
FROM
    car_dekho;

-- all the cars available in the year of 2023
SELECT 
    *
FROM
    car_dekho
WHERE
    year = 2023;

-- count of all the cars available in the year of 2023
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2023;

-- all the cars available in the year of 2020, 2021 ,2022
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2020;SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2021;SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2022;SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year IN (2020 , 2021, 2022)
GROUP BY year;

-- okay, so we just want count of all the care group by year but not all the details
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year;

-- all the diesel cars available in the year of 2020
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2020 AND fuel = 'Diesel';SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year = 2020 AND fuel = 'Petrol';SELECT 
    year, COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'Petrol'
GROUP BY year;

SELECT 
    year, COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'Diesel'
GROUP BY year;

SELECT 
    year, COUNT(*)
FROM
    car_dekho
WHERE
    fuel = 'CNG'
GROUP BY year;

-- in which year more than 100 cars are availabel
SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year
HAVING COUNT(*) > 100;

SELECT 
    year, COUNT(*)
FROM
    car_dekho
GROUP BY year
HAVING COUNT(*) < 50;

-- complete details of cars and count between the year 2015 and 2013
SELECT 
    COUNT(*)
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;

-- select all the car details from 2015 to 2023
SELECT 
    *
FROM
    car_dekho
WHERE
    year BETWEEN 2015 AND 2023;