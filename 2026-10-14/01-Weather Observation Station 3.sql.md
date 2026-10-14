# SQL Practice” Task 01

- **Date:**  2026-10-14
- **Question Name:** Weather Observation Station 3
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Simple query using where clause to get even numbers


## Solution

```sql

SELECT DISTINCT City
FROM Station
where id %2 =0
```

