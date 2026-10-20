# SQL Practice” Task 01

- **Date:**  2026-10-20
- **Question Name:** Weather Observation Station 13
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Use WITH clause to get a subset result and query from the result to get the solution


## Solution

```sql
WITH Sum_of_LAT AS(
    SELECT LAT_N
    FROM Station
    WHERE LAT_N > 38.7880 
    AND LAT_N < 137.2345)   
SELECT ROUND(SUM(LAT_N),4)
FROM Sum_of_LAT;

```
