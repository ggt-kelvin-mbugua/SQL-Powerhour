# SQL Practice” Task 03

- **Date:**  2026-10-19
- **Question Name:** Type of Triangle
- **Link:** https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Use the count function to aggregate total number of columns(Name of cities with population >1000)


## Solution

```sql
SELECT COUNT(DISTINCT Name)
FROM City
WHERE Population > 100000;
```
