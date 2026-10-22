# SQL Practice” Task 02

- **Date:**  2026-10-22
- **Question Name:** Top Earners
- **Link:** https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Aggregation using SUM() clause to find total and ROUND() to round off integers based on decimal points needed


## Solution

```sql

SELECT ROUND(SUM(LAT_N),2), ROUND(SUM(LONG_W),2)
FROM STATION

```
