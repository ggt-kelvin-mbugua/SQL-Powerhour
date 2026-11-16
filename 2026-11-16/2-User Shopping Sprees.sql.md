# SQL Practice” Task 01

- **Date:**  2026-11-16
- **Question Name:** User Shopping Sprees
- **Link:** https://datalemur.com/questions/amazon-shopping-spree
- **Difficulty:** Medium

# Intuition


## Solution

```sql
WITH CTE AS(
SELECT user_id,amount,transaction_date,
RANK() OVER(PARTITION BY user_id ORDER BY transaction_date) AS Rank
FROM transactions
)

SELECT user_id
FROM CTE 
WHERE rank IN (1, 2, 3)
GROUP BY user_id
HAVING COUNT(DISTINCT rank) = 3
ORDER BY user_id;





```

