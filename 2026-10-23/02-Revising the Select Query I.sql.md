# SQL Practice” Task 02

- **Date:**  2026-10-23
- **Question Name:** Revising the Select Query I
- **Link:** https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
WHERE function and AND function

## Solution

```sql

SELECT ID,NAME,COUNTRYCODE,DISTRICT,POPULATION
FROM CITY
WHERE POPULATION >100000
AND COUNTRYCODE = 'USA';
    

```
