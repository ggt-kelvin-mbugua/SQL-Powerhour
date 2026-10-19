# SQL Practice” Task 06

- **Date:**  2026-10-19
- **Question Name:** Type of Triangle
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
Use MAX() and MIN() Functions to get the difference in latitude and longitudes
Use ROUND() function to round off to 4 decimal places.
USe SQRT () Function to get the square root.
Use POWER() Function to get the square.


## Solution

```sql
SELECT 
    ROUND 
    (SQRT(
         POWER(MAX(LAT_N)-MIN(LAT_N),2)+
         POWER(MAX(LONG_W)-MIN(LONG_W),2)), 4) 
    AS ED
FROM Station;
```
