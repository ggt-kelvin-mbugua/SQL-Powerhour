# SQL Practice” Task 02

- **Date:**  2026-10-16
- **Question Name:** Average Population of Each Continent
- **Link:** https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
Use a join to combine two tables.
Use FLOOR() function to round off to the nearest integer
Use AVG() fucnction to get the Average Popullation per City
Use GROUP BY() to group all Continets.


## Solution

```sql
SELECT co.Continent,FLOOR(AVG(ci.Population))
FROM City ci
JOIN Country co
    ON ci.Countrycode = co.Code
GROUP BY co.Continent;
```
