# SQL Practice” Task 01

- **Date:**  2026-10-15
- **Question Name:** Higher Than 75 Marks
- **Link:** https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Use the where clause to get students with marks greater than 75
USe the Right() Function to Order Students who have the same last three characters in there name, and additional Order By for the ID column

## Solution

```sql

SELECT Name
FROM Students
WHERE Marks >75
ORDER BY (RIGHT(Name,3)),ID ASC;

```

