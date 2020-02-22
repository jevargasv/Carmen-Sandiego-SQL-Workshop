-- Carmen Sandiego SQL Workshop

SELECT name, population, code FROM country WHERE
region = "Southern Europe"
ORDER BY
population;

SELECT
    name, code
FROM
    country
WHERE population = (
                SELECT MIN(population)
                FROM country
                WHERE region = 'Southern Europe');

-- Vatican City

SELECT code FROM country WHERE
region = 'Southern Europe'
ORDER BY
population;

-- VAT

SELECT language
FROM countrylanguage
WHERE countrycode = 'VAT' AND
isofficial = true;

-- Italian

SELECT countrycode
FROM countrylanguage
WHERE language = 'Italian' AND
percentage = 100;

SELECT name
FROM country
WHERE code = 'SMR';

-- San Marino

SELECT name
FROM city
WHERE countrycode = 'SMR';

-- Serravalle

SELECT name, countrycode
FROM city
WHERE name LIKE '%Serra%';

-- Serra, Itapecerica de Serra, Tabaco de Serra in Brazil

SELECT name
FROM country
WHERE code = 'BRA';

-- 211 (Brasilia) ?

SELECT name
FROM city
WHERE population = 91084;

-- Santa Monica, California, USA
-- In other words, she is in Santa Monica, California!
