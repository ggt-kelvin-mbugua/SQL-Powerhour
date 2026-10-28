# SQL Practice” Task 01

- **Date:**  2026-10-28
- **Question Name:** Challenges
- **Link:** https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
Create a CTE to get the challenges done by each hacker by joining the hackers and challenges table.
Create a sub query to get the frequency of challenges done by each hacker and aslo the Maximum number of challenges created by hackers
From the subquery get the hacker_id,name and challenges done by each hacker
Add a WHERE clause to filter out hackers who had the same number of challenges done and hackers whose challenges are not equal to the maximum number of challenges
Order the output by hackerchallenges in DESC and hacker ID in ASC in cases where hackerschallenges are same.


## Solution

```sql
WITH Hacker_challenges AS (
    SELECT h.hacker_id,h.name,COUNT(c.challenge_id)AS hacker_challenges
    FROM Hackers h 
    JOIN Challenges c 
    ON h.hacker_id=c.hacker_id
    GROUP BY h.hacker_id,h.name
),
Challenge_stats AS(
    SELECT *,
    COUNT(*) OVER(PARTITION BY hacker_challenges) AS challenge_frequency,
    MAX(hacker_challenges) OVER() AS max_challenges_done
    FROM Hacker_challenges
)

SELECT hacker_id,name,hacker_challenges
FROM Challenge_stats
WHERE challenge_frequency=1
    OR hacker_challenges=max_challenges_done
    ORDER BY hacker_challenges DESC,hacker_id ASC;
```
