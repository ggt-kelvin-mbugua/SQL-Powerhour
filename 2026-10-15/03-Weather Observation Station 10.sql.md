# SQL Practice” Task 01

- **Date:**  2026-10-15
- **Question Name:** Weather Observation Station 10
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=false
- **Difficulty:** Easy

# Intuition
hackerrank uses the legacy verison of SQL, as result we have to use the LEFT() and RIGHT() functions to get Distinct Cities that start and end with vowels

## Solution

```sql

SELECT DISTINCT City
FROM Station
WHERE  RIGHT (City,1) NOT IN ('a','e','i','o','u');

```

