Challenges: SQL Country Database
Save your queries in a file if you want to keep them for posterity.

WHERE

# What is the population of the US? (HINT: 278357000)

SELECT name, population
FROM country
WHERE name = 'United States'

output: "United States"	278357000

# What is the area of the US? (HINT: 9.36352e+06)

SELECT name, surfacearea
FROM country
WHERE name = 'United States'

output: "United States"	9.36352e+06

# Which countries gained their independence before 1963?

SELECT name, indepyear
FROM country
WHERE indepyear < 1963

output: Successfully run. Total query runtime: 249 msec. 121 rows affected.

# List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

SELECT name, continent, population
FROM country
WHERE continent = 'Africa'
AND population < 3e7
AND lifeexpectancy > 45

output: Successfully run. Total query runtime: 48 msec. 37 rows affected.

# Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT name, governmentform
FROM country
WHERE governmentform LIKE '%Republic'

output: Successfully run. Total query runtime: 244 msec. 143 rows affected.

# Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT name, governmentform, indepyear
FROM country
WHERE governmentform LIKE '%Republic'
AND indepyear > 1945

output: Successfully run. Total query runtime: 60 msec. 92 rows affected.

# Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT name, indepyear, governmentform
FROM country
WHERE indepyear > 1945
AND governmentform NOT LIKE '%Republic'

output: Successfully run. Total query runtime: 77 msec. 27 rows affected.

ORDER BY

# Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy > 0
ORDER BY lifeexpectancy
LIMIT 15

output: Successfully run. Total query runtime: 217 msec. 15 rows affected.

# Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy > 0
ORDER BY lifeexpectancy DESC
LIMIT 15

output: Successfully run. Total query runtime: 128 msec. 15 rows affected.

# Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name, population, surfacearea,
population / surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density
LIMIT 5

output: Successfully run. Total query runtime: 210 msec. 5 rows affected.

# Which countries have the highest population density?(HINT: starts with Macao)

SELECT name, population, surfacearea,
population / surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density DESC

output: Successfully run. Total query runtime: 60 msec. 232 rows affected.

# Which is the smallest country by area? (HINT: .4)

SELECT name, surfacearea
FROM country
WHERE surfacearea > 0
ORDER BY surfacearea ASC
LIMIT 1

output: "Holy See (Vatican City State)"	0.4

# Which is the smallest country by population? (HINT: 50)?

SELECT name, population
FROM country
WHERE population > 0
ORDER BY population ASC
LIMIT 1

output: "Pitcairn"	50

# Which is the biggest country by area? (HINT: 1.70754e+07)

SELECT name, surfacearea
FROM country
WHERE surfacearea > 0
ORDER BY surfacearea DESC
LIMIT 1

output: "Russian Federation"	1.70754e+07

# Which is the biggest country by population? (HINT: 1277558000)

SELECT name, population
FROM country
WHERE population > 0
ORDER BY population DESC
LIMIT 1

output: "China"	1277558000

# Who is the most influential head of state measured by population? (HINT: Jiang Zemin)

SELECT name, population, headofstate
FROM country
WHERE population > 0
ORDER BY population DESC

output: "China"	1277558000	"Jiang Zemin"

Subqueries: WITH

# Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)

WITH populated_countries AS (
	SELECT name, population, gnp
	FROM country
	WHERE gnp > 0
	ORDER BY gnp DESC
	LIMIT 10
	)
SELECT name, population, gnp
FROM populated_countries
WHERE population > 0 
ORDER BY population ASC

output: "Canada"	31147000	598862.00

# Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)

WITH populated_countries AS (
	SELECT name, population, surfacearea
	FROM country
	WHERE population > 0
	ORDER BY population ASC
	LIMIT 10
	)
SELECT name, population, surfacearea
FROM populated_countries
WHERE surfacearea > 0 
ORDER BY surfacearea DESC

output: "Svalbard and Jan Mayen"	3200	62422

Aggregate Functions: GROUP BY

# Which region has the highest average gnp? (HINT: North America)

SELECT region, AVG(gnp)
FROM country
GROUP BY region
ORDER BY avg DESC

output: "North America"	1822378.000000000000

# Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)

# What is the average life expectancy for all continents?

# What are the most common forms of government? (HINT: use count(*))

# How many countries are in North America?

# What is the total population of all continents?

