# SQL Practice” Task 01

- **Date:**  2026-11-02
- **Question Name:** LinkedIn SQL Interview Question
- **Link:** https://datalemur.com/questions/matching-skills
- **Difficulty:** Easy

# Intuition
WHERE- to only get candidates with only the three skills
GROUP BY- group candidates by there skills
HAVING COUNT(DISTINCT)-get distinct count of canidates with the three skills
ORDER BY- Orders the output by candidates in ascending order

## Solution

```sql
SELECT candidate_id
FROM candidates
WHERE skill in ('Python','Tableau','PostgreSQL')
GROUP BY candidate_id
HAVING COUNT (DISTINCT skill)=3
ORDER BY candidate_id
```
