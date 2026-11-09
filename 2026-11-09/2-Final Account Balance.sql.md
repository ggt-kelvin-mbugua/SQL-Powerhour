# SQL Practice” Task 02

- **Date:**  2026-11-09
- **Question Name:** Final Account Balance
- **Link:** https://datalemur.com/questions/final-account-balance
- **Difficulty:** Easy

# Intuition

## Solution

```sql
SELECT account_id,
       (SUM(CASE WHEN transaction_type ='Deposit' THEN amount END))-
       (SUM(CASE WHEN transaction_type ='Withdrawal' THEN amount END)) AS final_balance
       FROM transactions
       GROUP BY account_id;


SELECT account_id,
      (SUM(amount) FILTER (WHERE transaction_type ='Deposit'))-(SUM(amount) FILTER (WHERE transaction_type ='Withdrawal')) AS final_balance
      FROM transactions
      GROUP BY account_id;
```
