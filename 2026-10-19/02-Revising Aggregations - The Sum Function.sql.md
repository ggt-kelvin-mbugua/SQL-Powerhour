# SQL Practice” Task 02

- **Date:**  2026-10-19
- **Question Name:** Type of Triangle
- **Link:** https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Use a SUM function to aggregate total population where district is California.


## Solution

```sql
SELECT SUM(Population)
FROM City
WHERE District ='California';
```
