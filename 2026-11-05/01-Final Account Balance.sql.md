# SQL Practice” Task 01

- **Date:**  2026-11-05
- **Question Name:** Final Account Balance
- **Link:** https://datalemur.com/questions/final-account-balance
- **Difficulty:** Easy

# Intuition


## Solution

```sql
SELECT
  account_id,
  SUM(
    CASE 
      WHEN transaction_type = 'Deposit' THEN amount
      ELSE -amount END
  ) AS final_balance
FROM transactions
GROUP BY account_id;
```
