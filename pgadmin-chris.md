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
    AND continent = 'Africa'

Which countries are something like a republic? (HINT: Are there 122 or 143?)

    SELECT name
    FROM country
    WHERE governmentform LIKE '%Republic'

Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

    SELECT name
    FROM country
    WHERE governmentform LIKE '%Republic'
    AND indepyear > 1945

Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

    SELECT name
    FROM country
    WHERE governmentform NOT LIKE '%Republic'
    AND indepyear > 1945

ORDER BY
Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

    SELECT name, lifeexpectancy
    FROM country
    ORDER BY lifeexpectancy
    LIMIT 15

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

    SELECT name, lifeexpectancy
    FROM country
    WHERE lifeexpectancy IS NOT null
    ORDER BY lifeexpectancy DESC
    LIMIT 15

Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)

    SELECT name, population, surfacearea
    FROM country
    WHERE population != 0
    ORDER BY population / surfacearea
    LIMIT 5

Which countries have the highest population density?(HINT: starts with Macao)

    SELECT name, population, surfacearea
    FROM country
    WHERE population != 0
    ORDER BY population / surfacearea DESC
    LIMIT 5

Which is the smallest country by area? (HINT: .4)

    SELECT name, surfacearea
    FROM country
    WHERE population != 0
    ORDER BY surfacearea
    LIMIT 1

Which is the smallest country by population? (HINT: 50)?
Which is the biggest country by area? (HINT: 1.70754e+07)
Which is the biggest country by population? (HINT: 1277558000)
Who is the most influential head of state measured by population? (HINT: Jiang Zemin)