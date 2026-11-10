# SQL Practice” Task 01

- **Date:**  2026-11-10
- **Question Name:** User's Third Transaction
- **Link:** https://datalemur.com/questions/sql-third-transaction
- **Difficulty:** Medium

# Intuition
USe RANK() Function to sort Same rank for tied values
PARTITION BY and ORDER By for proper listing
## Solution

```sql
WITH CTE AS(
SELECT user_id,spend,transaction_date,
RANK() OVER(PARTITION BY user_id ORDER BY transaction_date) AS rank_num
FROM transactions)
SELECT user_id,spend,transaction_date
FROM CTE 
WHERE rank_num=3
```
