# SQL Practice” Task 01

- **Date:**  2026-10-19
- **Question Name:** Type of Triangle
- **Link:** https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Use a CASE function 


## Solution

```sql
SELECT
    CASE
        WHEN A = B AND B = C THEN 'Equilateral'
        WHEN A + B <= C OR B + C <= A OR C + A <= B THEN 'Not A Triangle'
        WHEN A = B OR B = C OR A = C THEN 'Isosceles'
        ELSE 'Scalene'
    END
FROM Triangles;

```
