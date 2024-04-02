-- EX1. HackerRank
SELECT NAME FROM CITY
WHERE population > 120000 AND CountryCode = "USA"

-- EX2.
SELECT * FROM CITY
WHERE COUNTRYCODE = 'JPN'

-- EX3.
SELECT CITY, STATE FROM STATION

-- EX4.
SELECT CITY FROM STATION
WHERE CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%'

-- EX5.
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u'

-- EX6.
SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%'

-- EX7.
SELECT name FROM Employee
ORDER BY name

-- EX8.
SELECT name FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id

-- EX9. Leetcode
SELECT product_id FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y'

-- EX10.
SELECT name FROM Customer
WHERE referee_id IS NULL OR referee_id != 2

-- EX11.
SELECT name, population, area FROM World
WHERE area >= 3000000 OR population >= 25000000

-- EX12.
SELECT DISTINCT author_id AS id FROM Views
WHERE viewer_id = author_id
ORDER BY author_id 

-- EX13.
SELECT DISTINCT part FROM parts_assembly
WHERE finish_date IS NULL

-- EX 14.
select * from lyft_drivers
where yearly_salary <= 30000 OR yearly_salary >= 70000

-- EX 15.
select * from uber_advertising
where money_spent > 100000




