# SQL Practice” Task 01

- **Date:**  2026-10-16
- **Question Name:** African Cities
- **Link:** https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Use a JOIN to combine two tables


## Solution

```sql
SELECT ci.Name
FROM City ci
JOIN Country co
ON ci.Countrycode = co.Code
WHERE co.Continent='Africa';
```
