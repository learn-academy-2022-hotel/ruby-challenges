# WHERE
- What is the population of the US? (HINT: 278357000)
    ```
    SELECT SUM(population)
    FROM country
    WHERE name = 'United States'
    ```

- What is the area of the US? (HINT: 9.36352e+06)
    ```
    SELECT surfacearea
    FROM country
    WHERE name = 'United States'
    ```

- Which countries gained their independence before 1963?
    ```
    SELECT name, indepyear
    FROM country
    WHERE indepyear < 1963
    ```

- List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
    ```
    SELECT name
    FROM country
    WHERE continent = 'Africa'
    AND population < 3e7
    AND lifeexpectancy > 45
    ```

- Which countries are something like a republic? (HINT: Are there 122 or 143?)
    ```
    SELECT * FROM country
    WHERE governmentform
    LIKE '%epublic'
    ```
    - There are 143 entries. Using 'LIKE' with '%' allows for any characters before 'epublic' to be valid in the searching, meaning that Federal Republic and Republic will both be valid.

- Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
    ```
    SELECT * FROM country
    WHERE governmentform
    LIKE '%epublic'
    AND indepyear > 1945
    ```

- Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
    ```
    SELECT name
    FROM country
    WHERE governmentform 
    NOT LIKE '%epublic'
    AND indepyear > 1945
    ```


# ORDER BY
- Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
    ```
    SELECT name
    FROM country
    ORDER BY lifeexpectancy ASC
    LIMIT 15
    ```

- Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
    ```
    SELECT name
    FROM country
    WHERE lifeexpectancy IS NOT NULL
    ORDER BY lifeexpectancy DESC
    LIMIT 15
    ```

- Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
    ```
    SELECT name, population, surfacearea
    FROM country
    WHERE population IS NOT NULL
    AND population != 0
    AND surfacearea IS NOT NULL
    ORDER BY (population / surfacearea) ASC
    LIMIT 5
    ```

- Which countries have the highest population density?(HINT: starts with Macao)
    ```
    SELECT name
    FROM country
    WHERE population IS NOT NULL
    AND population != 0
    AND surfacearea IS NOT NULL
    ORDER BY (population / surfacearea) DESC
    LIMIT 5
    ```

- Which is the smallest country by area? (HINT: .4)
    ```
    SELECT name, surfacearea
    FROM country
    ORDER BY surfacearea ASC
    LIMIT 1
    ```

- Which is the smallest country by population? (HINT: 50)?
    ```
    SELECT name, population
    FROM country
    WHERE population != 0
    ORDER BY population ASC
    LIMIT 1
    ```

- Which is the biggest country by area? (HINT: 1.70754e+07)
    ```
    SELECT name, surfacearea
    FROM country
    ORDER BY surfacearea DESC
    LIMIT 1
    ```

- Which is the biggest country by population? (HINT: 1277558000)
    ```
    SELECT name, population
    FROM country
    WHERE population != 0
    ORDER BY population DESC
    LIMIT 1
    ```

- Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
    ```
    SELECT headofstate
    FROM country
    WHERE population != 0
    ORDER BY population DESC
    LIMIT 1
    ```


# Subqueries: WITH
- Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
    ```
    WITH highest_gnp AS (
	    SELECT name, population
	    FROM country
	    WHERE population > 0
	    ORDER BY gnp DESC
	    LIMIT 10
    )
    SELECT name
    FROM highest_gnp
    ORDER BY population ASC
    LIMIT 1
    ```

- Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
    ```
    WITH lowest_pop AS (
        SELECT name, surfacearea
        FROM country
        WHERE population > 0
        ORDER BY population ASC
        LIMIT 10
    )
    SELECT name
    FROM lowest_pop
    ORDER BY surfacearea DESC
    LIMIT 1
    ```


# Aggregate Functions: GROUP BY
- Which region has the highest average gnp? (HINT: North America)
    ```
    SELECT region
    FROM country
    GROUP BY region
    ORDER BY AVG(gnp) DESC
    LIMIT 1
    ```

- Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)
    ```
    SELECT headofstate, MAX(surfacearea)
    FROM country
    WHERE population > 0
    GROUP BY headofstate, surfacearea
    ORDER BY surfacearea DESC
    ```
    - I have tried multiple methods, and I cannot get Elisabeth II to show. Each time I get Vladimir Putin, and according to the data, he seems to be the highest based on surface area.

- What is the average life expectancy for all continents?
    ```
    SELECT AVG(lifeexpectancy)
    FROM country
    WHERE lifeexpectancy > 0
    AND lifeexpectancy IS NOT NULL
    ```
    - 66.48603611164265

- What are the most common forms of government? (HINT: use count(*))
    ```
    SELECT governmentform, COUNT(*)
    FROM country
    GROUP BY governmentform
    ORDER BY count DESC
    ```

- How many countries are in North America?
    ```
    SELECT region, COUNT(name)
    FROM country
    WHERE region='North America'
    GROUP BY region
    ```
    - 5

- What is the total population of all continents?
    ```
    SELECT SUM(population)
    FROM country
    ```
    - 6078749450


# Stretch Goals
- Which countries have the letter ‘z’ in the name? How many?
    ```
    SELECT name
    FROM country
    WHERE name
    LIKE '%z%'
    ```

- Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
    ```
    WITH smallest AS(
        SELECT name, surfacearea, gnp
        FROM country
        ORDER BY surfacearea ASC
        LIMIT 10
        )
    SELECT name, gnp
    FROM smallest
    ORDER BY gnp DESC
    LIMIT 1
    ```

- Of the smallest 10 countries by population, which has the biggest per capita gnp?
    ```
    WITH smallest AS(
        SELECT name, population, gnp
        FROM country
        WHERE population > 0
        ORDER BY population ASC
        LIMIT 10
        )
    SELECT name, gnp
    FROM smallest
    WHERE gnp > 0
    ORDER BY (population / gnp) DESC
    LIMIT 1
    ```
    - Holy See (Vatican City State)

- Of the biggest 10 countries by area, which has the biggest gnp?
    ```
    WITH largest AS(
        SELECT name, surfacearea, gnp
        FROM country
        ORDER BY surfacearea DESC
        LIMIT 10
        )
    SELECT name, gnp
    FROM largest
    ORDER BY gnp DESC
    LIMIT 1
    ```
    - United Stats


- Of the biggest 10 countries by population, which has the biggest per capita gnp?
    ```
    WITH largest AS(
        SELECT name, population, gnp
        FROM country
        WHERE population > 0
        ORDER BY population DESC
        LIMIT 10
        )
    SELECT name, gnp
    FROM largest
    WHERE gnp > 0
    ORDER BY (population / gnp) DESC
    LIMIT 1
    ```
    - Bangladesh

- What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
    ```
    WITH largest AS(
        SELECT surfacearea
        FROM country
        ORDER BY surfacearea DESC
        LIMIT 10
        )
    SELECT SUM(surfacearea)
    FROM largest
    ```
    - 10 Largest = 8.4183616e+07
    ```
    WITH smallest AS(
        SELECT surfacearea
        FROM country
        WHERE population > 0
        AND population IS NOT NULL
        ORDER BY surfacearea ASC
        LIMIT 10
        )
    SELECT SUM(surfacearea)
    FROM smallest
    ```
    - 10 smallest = 183.9


- What year is this country database from? Cross reference various pieces of information to determine the age of this database.
    ```
    SELECT (pg_stat_file('base/'||oid ||'/PG_VERSION')).modification, datname 
    FROM pg_database;
    ```
    - November 9th
    - Not sure if this is correct, but I got this input from https://stackoverflow.com/questions/24806122/get-database-creation-date-on-postgresql