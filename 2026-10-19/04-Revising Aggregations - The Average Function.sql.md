# SQL Practice” Task 04

- **Date:**  2026-10-19
- **Question Name:** Type of Triangle
- **Link:** https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
use the Average function to get average population of Cities were the District is Califronia


## Solution

```sql
SELECT FLOOR(AVG(Population))
FROM City
WHERE District='California';
```
