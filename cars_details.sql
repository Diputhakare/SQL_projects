create schema cars; 
use cars;
-- READ DATA--
select*from cars.car_dekho;
-- Total cars: to get a count of total records--
select count(*) from car_dekho;
-- The manager asked the employee how many cars would be available in 2023.--
select count(*) from car_dekho where year=2023;
-- The manager asked the employee How many cars were available in 2020,2021,2022--
select count(*) from car_dekho where year =2020 or year =2021 or year =2022;
-- method using group by--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- The client asked me to print the total of all cars by year. I don't see all the details/--
select year ,count(*) from car_dekho group by year;
-- Client asked car dealer agent How many diesel cars will there be in 2020--
select year,count(*) from car_dekho where year=2020 and fuel ="Diesel";
-- Clint requested a car dealer agent How many petrol cars will there be in 2020?--
select year,count(*) from car_dekho where year=2020 and fuel ="Petrol"; #51
-- The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year--
select year,fuel,count(*) from car_dekho where fuel in ("Petrol","Diesel","CNG") group by year;
-- Manger said there were more than 100 cars in a given year,which year had more than 100 cars?--
select year,count(*) from car_dekho group by year having count(*)>100;
-- Manger said to the employee All cars count details between 2015 and 2023,we need complete list--
select count(*) from car_dekho where year between 2015 and 2023;
-- Manger said to the employee All cars count details between 2015 and 2023,we need complete list--
select*from car_dekho where year between 2015 and 2023;