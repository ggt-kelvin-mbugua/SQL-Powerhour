# SQL Practice” Task 05

- **Date:**  2026-10-20
- **Question Name:** Top Competitors
- **Link:** https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
Use JOIN to combine the tables together
Use DISTINCT to get the distinct challenges completed


## Solution

```sql
failed solution
-- Output- hacker_id,name of the hacker-achived full scores for more than one challenge
-- Order in DESC by total  number of challenges earned full scores, else order by hacker id ASC;

    SELECT
    h.hacker_id,
    h.name
    FROM Hackers h
    JOIN Submissions s
    ON h.hacker_id=s.hacker_id
    JOIN Challenges c
    ON s.challenge_id= c.challenge_id
    JOIN Difficulty d
    ON c.difficulty_level=d.difficulty_level
    WHERE s.score=d.score
    AND s.challenge_id >1
    ORDER BY s.challenge_id DESC, h.hacker_id ASC;

```

```sql
Revised Solution
SELECT
    h.hacker_id,
    h.name
FROM Hackers h
JOIN Submissions s
    ON h.hacker_id = s.hacker_id
JOIN Challenges c
    ON s.challenge_id = c.challenge_id
JOIN Difficulty d
    ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(DISTINCT s.challenge_id) > 1
ORDER BY COUNT(DISTINCT s.challenge_id) DESC,
         h.hacker_id ASC;

```
