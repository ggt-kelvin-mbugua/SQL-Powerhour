# SQL Practice” Task 01

- **Date:**  2026-10-28
- **Question Name:** Contest Leaderboard
- **Link:** https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
Create a CTE to join both Hackers and Submissions table
Create a sub-query to get the MAX score per challenge for each hacker use the MAX() function and GROUP BY hacker id and challenge id so we can get highest score per challenge id and hackerid
Create another sub query to get the sum of maximum scores and use GROUP BY function to get sum of scores per hacker
Finally join the hacker table and the sub query that gets the total scores


## Solution

```sql
WITH CTE AS(
    SELECT h.hacker_id,h.name,s.challenge_id,s.score
    FROM Hackers h 
    JOIN Submissions s 
    ON h.hacker_id=s.hacker_id
),
Max_scores AS (
    SELECT hacker_id,challenge_id,MAX(score)AS max_score
    FROM CTE
    GROUP BY hacker_id,challenge_id
),
    Hackers_totals AS(
    SELECT hacker_id,SUM(max_score) AS total_score
    FROM Max_scores
    GROUP BY hacker_id
)
SELECT h.hacker_id,h.name,ht.total_score
FROM Hackers h 
JOIN Hackers_totals ht 
ON h.hacker_id=ht.hacker_id
WHERE ht.total_score > 0
ORDER BY ht.total_score DESC,h.hacker_id ASC;
```
