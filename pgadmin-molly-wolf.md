What is the population of the US? (HINT: 278357000)
SELECT name, population
FROM country
WHERE name = 'United States'

What is the area of the US? (HINT: 9.36352e+06)
SELECT name, surfacearea
FROM country
WHERE name ='United States'

Which countries gained their independence before 1963?
SELECT name, indepyear
FROM country
WHERE indepyear < 1963

List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, continent, lifeexpectancy, population
FROM country
WHERE continent = 'Africa'
AND population < 3e7
AND lifeexpectancy > 45

Which countries are something like a republic? (HINT: Are there 122 or 143?)
SELECT name, governmentform, indepyear
FROM country
WHERE governmentform
LIKE'Republic'

Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE governmentform
LIKE'%Republic'
AND indepyear > 1945 

Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE
NOT(governmentform LIKE '%Republic')
AND indepyear > 1945 

ORDER BY
Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy 
FROM country
WHERE lifeexpectancy > 0 
ORDER BY lifeexpectancy ASC
LIMIT 15

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name, lifeexpectancy 
FROM country
WHERE lifeexpectancy > 0 
ORDER BY lifeexpectancy DESC
LIMIT 15

Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT name, population, surfacearea, population / surfacearea AS density 
FROM country 
WHERE population >0 
ORDER BY density 

Which countries have the highest population density?(HINT: starts with Macao)
SELECT name, population, surfacearea, population / surfacearea AS density 
FROM country 
WHERE population >0 
ORDER BY density DESC

Which is the smallest country by area? (HINT: .4)
SELECT name, surfacearea
FROM country 
ORDER BY surfacearea

Which is the smallest country by population? (HINT: 50)?
SELECT name, population
FROM country 
WHERE population > 0
ORDER BY population 

Which is the biggest country by area? (HINT: 1.70754e+07)
SELECT name, surfacearea
FROM country 
WHERE surfacearea > 0 
ORDER BY surfacearea DESC

Which is the biggest country by population? (HINT: 1277558000)
SELECT name, population
FROM country 
WHERE population > 0 
ORDER BY population DESC


Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT name, headofstate, population
FROM country 
WHERE population > 0
ORDER BY population DESC


Subqueries: WITH
Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
WITH top_ten AS (
	select name, population, gnp
	FROM country 
	ORDER BY gnp DESC
	LIMIT 10
)
SELECT name, population, gnp
FROM top_ten
ORDER BY population 

Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
WITH smallest_population AS(
SELECT name, population, surfacearea
FROM country 
WHERE population > 0
ORDER BY population 
LIMIT 10
)
SELECT name, population, surfacearea
FROM smallest_population
ORDER BY surfacearea DESC


Aggregate Functions: GROUP BY
Which region has the highest average gnp? (HINT: North America)
SELECT region, SUM(gnp)
FROM country 
GROUP BY region
ORDER BY sum DESC

Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
SELECT headofstate, SUM(surfacearea)
FROM country 
GROUP BY  headofstate
ORDER BY sum DESC

What is the average life expectancy for all continents?
SELECT continent, AVG(lifeexpectancy)
FROM country
GROUP BY continent

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
SELECT SUM(population)
FROM country


Stretch Challenges
Which countries have the letter ‘z’ in the name? How many?


Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
Of the smallest 10 countries by population, which has the biggest per capita gnp?
Of the biggest 10 countries by area, which has the biggest gnp?
Of the biggest 10 countries by population, which has the biggest per capita gnp?
What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
What year is this country database from? Cross reference various pieces of information to determine the age of this database.
