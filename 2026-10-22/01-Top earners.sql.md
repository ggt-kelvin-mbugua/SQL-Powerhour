# SQL Practice” Task 01

- **Date:**  2026-10-22
- **Question Name:** Top Earners
- **Link:** https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Used WITH clause to create a sub-query, queried to from the su-b query to get the answer.


## Solution

```sql

*My solution*
WITH Total_earnings AS (
    SELECT
        name,
        salary,
        months,
        (salary * months) AS Earnings
    FROM Employee
)
SELECT
    MAX(Earnings) AS Max_earnings,
    COUNT(*) AS Employee_count
FROM Total_earnings
WHERE Earnings = (
    SELECT MAX(Earnings)
    FROM Total_earnings
);

*revised solution*

SELECT MAX(salary*months),COUNT(*)
FROM Employee
WHERE (salary*months)=(
    SELECT MAX(salary*months)
    FROM Employee
);

```
