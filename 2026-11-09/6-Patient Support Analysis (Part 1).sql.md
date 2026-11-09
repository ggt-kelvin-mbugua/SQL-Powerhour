# SQL Practice” Task 06

- **Date:**  2026-11-09
- **Question Name:** Patient Support Analysis (Part 1)
- **Link:** https://datalemur.com/questions/frequent-callers
- **Difficulty:** Easy

# Intuition

## Solution

```sql
WITH CTE AS (
    SELECT policy_holder_id,
       COUNT(case_id)
       FROM callers
       GROUP BY policy_holder_id
       HAVING COUNT(case_id) >=3)
       
SELECT COUNT(policy_holder_id) AS policy_holder_count
FROM CTE
```
