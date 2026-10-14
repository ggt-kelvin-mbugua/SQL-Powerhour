# SQL Practice ” Task 02

- **Date:** 2026-10-14
- **Question Name:** Weather Observation Station 4
- **Link:**  https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true
- **Difficulty:** Easy

## Intuition

Simple query to get the differnce between the count of all cities and the count of all distinct cities.
## Solution

```sql
SELECT COUNT(City) - COUNT(DISTINCT City)
        FROM Station;

```


