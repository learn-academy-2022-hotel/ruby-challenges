<!-- What is the population of the US? (HINT: 278357000)
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
List the countries in Africa that have a population smaller than 30,000,000 
and a life expectancy of more than 45? (HINT: 37 entries)
    SELECT name, continent, population, lifeexpectancy
    FROM country 
    WHERE continent = 'Africa'
    AND population < 3e7
    AND lifeexpectancy > 45

Which countries are something like a republic? (HINT: Are there 122 or 143?)
    SELECT name, governmentform
    FROM country 
    WHERE governmentform = 'Republic'
    or governmentform = 'Federal Republic'
    or governmentform = 'Islamic Republic'
    or governmentform = 'Socialistic Republic'

Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
    SELECT name, governmentform, indepyear
    FROM country 
    WHERE governmentform 
    IN ('Republic','Federal Republic','Islamic Republic','Socialistic Republic')
    AND indepyear > 1945
Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries) -->
<!-- SELECT name, governmentform, indepyear
FROM country 
WHERE governmentform 
NOT IN ('Republic','Federal Republic','Islamic Republic','Socialistic Republic')
AND indepyear > 1945 -->

<!-- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT name,lifeexpectancy
FROM country 
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy 


Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name,lifeexpectancy
FROM country 
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy DESC;

Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT name, population, surfacearea
FROM country 
WHERE population != 0
AND surfacearea != 0
ORDER BY population / surfacearea ASC;

Which countries have the highest population density?(HINT: starts with Macao)
SELECT name, population, surfacearea
FROM country 
WHERE population != 0
AND surfacearea != 0
ORDER BY population / surfacearea DESC;

Which is the smallest country by area? (HINT: .4)
SELECT name, surfacearea
FROM country 
ORDER BY surfacearea ASC

Which is the smallest country by population? (HINT: 50)?
SELECT name, population
FROM country 
WHERE population != 0
ORDER BY population ASC

Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea
FROM country 
ORDER BY surfacearea DESC

Which is the biggest country by population? (HINT: 1277558000)
SELECT name, population
FROM country 
ORDER BY population DESC

Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT population, headofstate
FROM country 
ORDER BY population DESC

Subqueries: WITH

Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
WITH highest_gnp AS (
	SELECT name, population, gnp 
	FROM country 
	WHERE population > 0
	AND gnp > 0
	ORDER BY gnp DESC
	LIMIT 10
)
SELECT name, population, gnp
FROM highest_gnp
ORDER BY population ASC

Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
WITH least_populated AS (
	SELECT name, population, surfacearea 
	FROM country 
	WHERE population > 0
	AND surfacearea > 0
	ORDER BY population ASC
	LIMIT 10
)
SELECT name, population, surfacearea
FROM least_populated
ORDER BY surfacearea DESC

Aggregate Functions: GROUP BY


Which region has the highest average gnp? (HINT: North America)
SELECT continent, AVG (gnp) 
FROM country
GROUP BY continent
ORDER BY avg DESC

Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
SELECT headofstate, sum (surfacearea) 
FROM country
GROUP BY headofstate
ORDER BY sum DESC

What is the average life expectancy for all continents?
SELECT continent, avg (lifeexpectancy) 
FROM country
WHERE lifeexpectancy IS NOT NULL
GROUP BY continent
ORDER BY avg DESC

What are the most common forms of government? (HINT: use count(*))
SELECT governmentform, count(*) 
FROM country
GROUP BY governmentform
ORDER BY count DESC

How many countries are in North America?
SELECT continent, count (name) 
FROM country
GROUP BY continent

ORDER BY count DESC

What is the total population of all continents? -->
<!-- SELECT sum (population) 
FROM country -->

<!-- Which countries have the letter ‘z’ in the name? How many?
SELECT name 
FROM country
WHERE name ~'z|Z'

Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)

Of the smallest 10 countries by population, which has the biggest per capita gnp?
Of the biggest 10 countries by area, which has the biggest gnp?
Of the biggest 10 countries by population, which has the biggest per capita gnp?
What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
What year is this country database from? Cross reference various pieces of information to determine the age of this database. -->