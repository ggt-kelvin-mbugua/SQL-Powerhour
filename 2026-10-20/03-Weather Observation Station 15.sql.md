# SQL Practice” Task 01

- **Date:**  2026-10-20
- **Question Name:** Weather Observation Station 15
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-15/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Use WITH clause to get a subset result and query from the result to get the solution


## Solution

```sql
WITH Largest_Latitude AS(
    SELECT LAT_N,LONG_W
    FROM STATION
    WHERE LAT_N < 137.2345
)
SELECT ROUND(LONG_W,4)
FROM Largest_Latitude
WHERE LAT_N=(SELECT MAX(LAT_N) FROM Largest_Latitude);



```
