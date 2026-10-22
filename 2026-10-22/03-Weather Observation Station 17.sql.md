# SQL Practice” Task 03

- **Date:**  2026-10-22
- **Question Name:** Weather Observation Station 17
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Aggregation using MIN() to get the minimum value and ROUND() to round off integers based on decimal points needed


## Solution

```sql

SELECT ROUND(LONG_W,4)
FROM Station 
WHERE LAT_N=(
    SELECT MIN(LAT_N)
    FROM Station
    WHERE LAT_N > 38.7780);

```
