# SQL Practice” Task 01

- **Date:**  2026-10-20
- **Question Name:** Weather Observation Station 14
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Use WITH clause to get a subset result and query from the result to get the solution


## Solution

```sql
WITH Greatest_Value AS(
    SELECT LAT_N 
    FROM STATION
    WHERE LAT_N < 137.2345)
SELECT ROUND(MAX(LAT_N),4)
FROM Greatest_Value;

```
