# SQL Practice” Task 05

- **Date:**  2026-10-19
- **Question Name:** Type of Triangle
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
From the |x1 - x2| + |y1 - y2|
Use MAX() and MIN() Functions to get the difference in latitude and longitudes
Use ROUND() function to round off to 4 decimal places.


## Solution

```sql
SELECT ROUND(
    (MAX(LAT_N)-MIN(LAT_N))+
    (MAX(LONG_W)-MIN(LONG_W)),4
)
FROM Station;
```
