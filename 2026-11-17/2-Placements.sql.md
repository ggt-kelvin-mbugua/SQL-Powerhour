# SQL Practice” Task 02

- **Date:**  2026-11-17
- **Question Name:** Placements
- **Link:** https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition


## Solution

```sql
SELECT s.name
FROM Students s
JOIN Packages p
    ON s.id = p.id
JOIN Friends f
    ON s.id = f.id
JOIN Packages fp
    ON f.friend_id = fp.id
WHERE fp.salary>p.salary 
ORDER BY fp.salary

```

