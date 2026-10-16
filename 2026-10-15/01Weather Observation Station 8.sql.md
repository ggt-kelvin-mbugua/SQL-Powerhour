# SQL Practice” Task 01

- **Date:**  2026-10-15
- **Question Name:** Weather Observation Station 8
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-8/problem?isFullScreen=false
- **Difficulty:** Easy

# Intuition
hackerrank uses the legacy verison of SQL, as result we have to use the LEFT() and RIGHT() functions to get Distinct Cities that start and end with vowels

## Solution

```sql

SELECT DISTINCT City
FROM Station
WHERE LEFT (City,1) IN ('a','e','i','o','u')
      AND RIGHT (City,1) IN ('a','e','i','o','u');

```

