# SQL Practice” Task 03

- **Date:** 2026-10-14
- **Question Name:** Occupations
- **Link:** https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true
- **Difficulty:** Medium 

## Intuition
CTE query to get the list of Names, per occupation in Ranked format
A Simple Query to get the list of all Names per Occupation from the CTE query



## Solution

```sql
WITH RankedOccupations AS (
    SELECT
        Name,
        Occupation,
        ROW_NUMBER() OVER (
            PARTITION BY Occupation
            ORDER BY Name
        ) AS rn
    FROM OCCUPATIONS
)
SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM RankedOccupations
GROUP BY rn
ORDER BY rn;


```
