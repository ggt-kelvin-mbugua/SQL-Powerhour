# SQL Practice ” Task 02

- **Date:** 2026-10-13
- **Question Name:** Weather Observation Station 6
- **Link:**  https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true
- **Difficulty:** Medium

## Intuition

Using Select distict to get unique cities
Using Like and '%' for the exact starting vowels
## Solution

```sql
SELECT DISTINCT CITY
FROM STATION
WHERE CITY  LIKE 'a%'
OR CITY LIKE 'e%'
OR CITY LIKE 'i%'
OR CITY LIKE 'o%'
OR CITY LIKE 'u%';
```


