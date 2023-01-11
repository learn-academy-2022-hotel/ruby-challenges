WHERE
1. What is the population of the US? (HINT: 278357000)

QUERY:
SELECT name, population
FROM country
WHERE name = 'United States'

DATA OUTPUT:
United States   278357000

2. What is the area of the US? (HINT: 9.36352e+06)

First I did a query to display every key name in the table for United States.

QUERY:
SELECT *
FROM country
WHERE name = 'United States'

Now that I know the key names, I can do specific queries narrowing the information retrieved and displayed.

QUERY:
SELECT name, surfacearea
FROM country
WHERE name = 'United States'

DATA OUTPUT: 
United States   9.36352e+06

3. Which countries gained their independence before 1963?
QUERY:
SELECT name, indepyear
FROM country
WHERE indepyear <= 1963

DATA OUTPUT:
From Messages:
Successfully run. Total query runtime: 107 msec.
122 rows affected.

4. List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
 QUERY:
SELECT name, continent, population, lifeexpectancy
FROM country
WHERE continent = 'Africa' AND population < 3e7 AND lifeexpectancy > 45

5. Which countries are something like a republic? (HINT: Are there 122 or 143?)

QUERY: 
SELECT name, governmentform
FROM country
WHERE governmentform 
LIKE '%epublic'

DATA OUTPUT:
From Messages:
Successfully run. Total query runtime: 99 msec.
143 rows affected.

6. Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

QUERY:
SELECT name, governmentform, indepyear
FROM country
WHERE indepyear >= 1946 AND governmentform 
LIKE '%epublic'

OUTPUT FROM MESSAGES:
Successfully run. Total query runtime: 49 msec.
92 rows affected.

7. Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

QUERY:
SELECT name, governmentform, indepyear
FROM country
WHERE indepyear >= 1946 AND governmentform NOT
LIKE '%epublic'

OUTPUT FROM MESSAGES:
Successfully run. Total query runtime: 168 msec.
27 rows affected.

ORDER BY
8. Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

SELECT name, lifeexpectancy
FROM country
WHERE continent = 'Africa'
ORDER BY lifeexpectancy ASC
LIMIT 15

The output started with Zambia and ended with Sierra Leone.

9. Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

QUERY:
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT NULL 
ORDER BY lifeexpectancy DESC
LIMIT 15

Output: Starts with Andorra and ends with Spain

10. Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

QUERY:
SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density ASC
LIMIT 5

OUTPUT: 
"Greenland"
"Svalbard and Jan Mayen"
"Falkland Islands"
"Pitcairn"
"Western Sahara"

11. Which countries have the highest population density?(HINT: starts with Macao)

QUERY:
SELECT name, population, surfacearea, population / surfacearea AS density
FROM country
ORDER BY density DESC
LIMIT 5

OUTPUT:
"Macao"
"Monaco"
"Hong Kong"
"Singapore"
"Gibraltar"

12. Which is the smallest country by area? (HINT: .4)

QUERY:
SELECT name, surfacearea
FROM country
ORDER BY surfacearea ASC

OUTPUT: "Holy See (Vatican City State)"


13. Which is the smallest country by population? (HINT: 50)?

QUERY:
SELECT name, population
FROM country
WHERE population > 0
ORDER BY population ASC

OUTPUT: "Pitcairn"

14. Which is the biggest country by area? (HINT: 1.70754e+07)

QUERY:
SELECT name, surfacearea
FROM country
ORDER BY surfacearea DESC

OUTPUT: "Russian Federation"	1.70754e+07

15. Which is the biggest country by population? (HINT: 1277558000)

QUERY:
SELECT name, population
FROM country
ORDER BY population DESC

OUTPUT: "China"	1277558000

16. Who is the most influential head of state measured by population? (HINT: Jiang Zemin)

QUERY:
SELECT name, population, headofstate
FROM country
ORDER BY population DESC

OUTPUT: "China"	1277558000	"Jiang Zemin"

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

OUTPUT:
"Canada"
"Spain"
"Italy"
"France"
"United Kingdom"
"Germany"
"Japan"
"Brazil"
"United States"
"China"

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

OUTPUT: "name"
"Svalbard and Jan Mayen"
"Falkland Islands"
"Saint Helena"
"Niue"
"Christmas Island"
"Pitcairn"
"Norfolk Island"
"Cocos (Keeling) Islands"
"Tokelau"
"Holy See (Vatican City State)"


Aggregate Functions: GROUP BY

19. Which region has the highest average gnp? (HINT: North America)


20. Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
21. What is the average life expectancy for all continents?
22. What are the most common forms of government? (HINT: use count(*))
23. How many countries are in North America?
What is the total population of all continents?
Stretch Challenges
Which countries have the letter ‘z’ in the name? How many?
Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
Of the smallest 10 countries by population, which has the biggest per capita gnp?
Of the biggest 10 countries by area, which has the biggest gnp?
Of the biggest 10 countries by population, which has the biggest per capita gnp?
What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
What year is this country database from? Cross reference various pieces of information to determine the age of this database.