WHERE
1. What is the population of the US? (HINT: 278357000)

QUERY:
SELECT name, population
FROM country
WHERE name = 'United States'

DATA OUTPUT:
United States   278357000

2. What is the area of the US? (HINT: 9.36352e+06)

SELECT name, surfacearea
FROM country
WHERE name = 'United States'

3. Which countries gained their independence before 1963?

SELECT name, indepyear
FROM country
WHERE indepyear <= 1963

4. List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

SELECT name, continent, population, lifeexpectancy
FROM country
WHERE continent = 'Africa' AND population < 3e7 AND lifeexpectancy > 45

5. Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT name, governmentform
FROM country
WHERE governmentform 
LIKE '%epublic'

6. Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT name, governmentform, indepyear
FROM country
WHERE indepyear >= 1946 AND governmentform 
LIKE '%epublic'

7. Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT name, governmentform, indepyear
FROM country
WHERE indepyear >= 1946 AND governmentform NOT
LIKE '%epublic'

ORDER BY

8. Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country
WHERE continent = 'Africa'
ORDER BY lifeexpectancy ASC
LIMIT 15

9. Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT NULL 
ORDER BY lifeexpectancy DESC
LIMIT 15

10. Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density ASC
LIMIT 5

11. Which countries have the highest population density?(HINT: starts with Macao)

SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
ORDER BY density DESC
LIMIT 5

12. Which is the smallest country by area? (HINT: .4)

SELECT name, surfacearea
FROM country
ORDER BY surfacearea ASC

13. Which is the smallest country by population? (HINT: 50)?

SELECT name, population
FROM country
WHERE population > 0
ORDER BY population ASC

14. Which is the biggest country by area? (HINT: 1.70754e+07)

SELECT name, surfacearea
FROM country
ORDER BY surfacearea DESC

15. Which is the biggest country by population? (HINT: 1277558000)

SELECT name, population
FROM country
ORDER BY population DESC

16. Who is the most influential head of state measured by population? (HINT: Jiang Zemin)

SELECT name, population, headofstate
FROM country
ORDER BY population DESC

Subqueries: WITH

17. Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)

WITH top_gnp AS (
	SELECT name, population, gnp
	FROM country
	WHERE population > 0
	AND gnp > 0
	ORDER BY gnp DESC
	LIMIT 10
	)
SELECT name, population, gnp
FROM top_gnp
ORDER BY population ASC 


18. Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)

QUERY: 
WITH populated_countries AS (
	SELECT name, population, surfacearea
	FROM country
	WHERE population > 0
	ORDER BY population ASC
	LIMIT 10
	)
SELECT name, population, surfacearea
FROM populated_countries
ORDER BY surfacearea DESC 

Aggregate Functions: GROUP BY

19. Which region has the highest average gnp? (HINT: North America)

SELECT region, AVG(gnp)
FROM country
GROUP BY region
ORDER BY AVG(gnp) DESC

20. Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)

SELECT headofstate, COUNT(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY COUNT(surfacearea) DESC

21. What is the average life expectancy for all continents?

SELECT AVG(lifeexpectancy), continent
FROM country
GROUP BY continent

22. What are the most common forms of government? (HINT: use count(*))

SELECT governmentform, COUNT(*)
FROM country
GROUP BY governmentform
ORDER BY count DESC

23. How many countries are in North America?

SELECT continent, COUNT(name)
FROM country
WHERE continent='North America'
GROUP BY continent

24. What is the total population of all continents?

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