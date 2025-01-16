#NAME: NAFISAT LAWAL
#DATE: 30/09/2024

-- Use database nafisat
use nafisat;

-- Select all the values in the table
SELECT 
    *
FROM
    version1;

-- showing id and country column
SELECT 
    id, country
FROM
    version1;

-- The total number of rows
SELECT 
    COUNT(*) number_of_row
FROM
    version1;

-- The unique values in the table
SELECT DISTINCTROW
    (country)
FROM
    version1;

-- The max id
SELECT 
    MAX(id)
FROM
    version1;

-- The min id
SELECT 
    MIN(id)
FROM
    version1;

-- Sum of the id
SELECT 
    SUM(id) sum_of_id
FROM
    version1;

-- id>40
SELECT 
    id
FROM
    version1
WHERE
    id > 40;

-- Total countries grouped by country
SELECT 
    COUNT(country)
FROM
    version1
GROUP BY (country);