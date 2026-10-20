# SQL Practice” Task 01

- **Date:**  2026-10-20
- **Question Name:** Weather Observation Station 14
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Use WITH clause to get a subset result and query from the result to get the solution


## Solution

```sql
WITH Smallest_Lat AS (
    SELECT LAT_N
    FROM STATION 
    WHERE LAT_N > 38.7780)
SELECT ROUND(MIN(LAT_N),4)
FROM Smallest_Lat;

```
