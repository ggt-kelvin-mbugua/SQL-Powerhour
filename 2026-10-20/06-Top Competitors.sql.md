# SQL Practice” Task 05

- **Date:**  2026-10-20
- **Question Name:** Top Competitors
- **Link:** https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
Use WITH clause to get a subset result and query from the result to get the solution
Use ROW_NUMBER OVER to group the first query in order


## Solution

```sql
WITH Median AS (
    SELECT LAT_N,
    ROW_NUMBER() OVER(ORDER BY LAT_N) AS rn,
    COUNT(*) OVER() AS Total
    FROM STATION)
SELECT ROUND(LAT_N,4) AS Median
FROM Median
WHERE rn=(total+1)/2

```
