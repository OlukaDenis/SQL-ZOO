-- To select details for a specific country
SELECT population
FROM world
WHERE name = 'Germany'

-- Querying data using IN to check if an item is in the list
SELECT name, population
FROM world
WHERE name IN ( 'Sweden', 'Norway', 'Denmark');

-- Querying data using BETWEEN and AND to return items that satify true
SELECT name, area
FROM world
WHERE area BETWEEN 200000 AND 250000
