-- Query from the the world table
SELECT name, continent, population
FROM world

-- Countries with more than 200million
SELECT name
FROM world
WHERE population >= 200000000

-- per capita GDP of countries with population more than 200m
SELECT name, gdp/population
FROM world
WHERE population >= 200000000

-- name and population in millions for the countries of the continent 'South America'
SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

-- name and population for France, Germany, Italy
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

-- countries which have a name that includes the word 'United'
SELECT name
FROM world
WHERE name LIKE '%United%'

-- countries that are big by area or big by population. Show name, population and area.
SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

-- countries that are big by area or big by population but not both. Show name, population and area.
SELECT name, population, area
FROM world
WHERE area > 3000000
XOR population > 250000000


-- Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'.
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2)
FROM world
WHERE continent = 'South America'

-- name and per-capita GDP for those countries with a GDP of at least one trillion 
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp >= 1000000000000

-- show the countries and continents with the length of the letters
SELECT name, LENGTH(name), continent, LENGTH(continent), capital, LENGTH(capital)
FROM world
WHERE name LIKE 'G%'

-- name and capital where the name and the capital have the same number of characters.
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)

--  function LEFT to isolate the first character.
SELECT name, LEFT(name,1), capital
FROM world

-- name and the capital where the first letters of each match.
-- not including countries where the name and the capital are the same word.
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital

