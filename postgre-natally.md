WHERE

What is the population of the US? (HINT: 278357000)

SELECT name, population
FROM country
WHERE name = 'United States'


What is the area of the US? (HINT: 9.36352e+06)

SELECT name, surfacearea
FROM country
WHERE name = 'United States'

Which countries gained their independence before 1963?

SELECT name, indepyear
FROM country
WHERE indepyear < 1963


List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

SELECT name, population, lifeexpectancy
FROM country
WHERE population < 3e7
AND lifeexpectancy > 45


Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT name, population, governmentform
FROM country
WHERE governmentform
IN ('Republic');


Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT name, governmentform, indepyear
FROM country
WHERE 
NOT governmentform LIKE ('Republic')
AND indepyear > 1945


Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT name,governmentform, indepyear
FROM country
WHERE 
NOT governmentform
IN ('Republic')
ANd indepyear > 1945

ORDER BY

Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy ASC
LIMIT 15;

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)



Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name, population, surfacearea, population/surfacearea AS density
FROM country
WHERE population > 0
ORDER BY DENSITY ASC
LIMIT 5 


Which countries have the highest population density?(HINT: starts with Macao)

SELECT name, population, surfacearea, population/surfacearea AS density
FROM country
WHERE population > 0
ORDER BY DENSITY DESC

Which is the smallest country by area? (HINT: .4)

SELECT name, surfacearea
FROM country
ORDER BY surfacearea
LIMIT 1

Which is the smallest country by population? (HINT: 50)?

SELECT name, population
FROM country
WHERE
NOT(POPULATION = 0)
ORDER BY population
LIMIT 1

Which is the biggest country by area? (HINT: 1.70754e+07)

SELECT name , surfacearea
FROM country
ORDER BY surfacearea DESC
LIMIT 1


Which is the biggest country by population? (HINT: 1277558000)

SELECT name , population
FROM country
ORDER BY population DESC
LIMIT 1


Who is the most influential head of state measured by population? (HINT: Jiang Zemin)

SELECT name, headofstate, population
FROM country
ORDER BY population DESC 
LIMIT 1


Subqueries: WITH

Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)

WITH TP10gnp AS (
    SELECT name, gnp, population
    FROM country
    ORDER BY gnp DESC
    LIMIT 10
)

SELECT name, gnp, population
FROM TP10gnp
ORDER BY population
LIMIT 1

Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)

WITH leastpop AS (
    SELECT name, population, surfacearea
    FROM country
    WHERE population > 0
    ORDER BY population
    LIMIT 10
)

SELECT name, population, surfacearea
FROM country
ORDER BY surfacearea DESC
LIMIT 1

Aggregate Functions: GROUP BY
Which region has the highest average gnp? (HINT: North America)

SELECT headofstate, SUM(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY SUM(surfacearea) DESC 


Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
What is the average life expectancy for all continents?

SELECT continent, AVG(lifeexpectancy)
FROM country
GROUP BY continent
ORDER BY AVG(lifeexpectancy) DESC

What are the most common forms of government? (HINT: use count(*))

SELECT governmentform, COUNT(*)
FROM country
GROUP BY governmentform
ORDER BY count DESC


How many countries are in North America?

SELECT region, COUNT(name)
FROM country
WHERE region='North America'
GROUP BY region

What is the total population of all continents?

SELECT  continent, SUM(population)
FROM country
GROUP BY continent
ORDER BY SUM(population) DESC 
