# SQL Practice” Task 01

- **Date:**  2026-11-06
- **Question Name:** Second Day Confirmation
- **Link:** https://datalemur.com/questions/second-day-confirmation
- **Difficulty:** Easy

# Intuition


## Solution

```sql
WITH CTE AS(
SELECT e.user_id,
      e.signup_date,
      t.email_id,
      t.signup_action,
      t.action_date
      FROM emails e
      JOIN texts  t 
      ON e.email_id=t.email_id
WHERE e.signup_date != t.action_date)

SELECT user_id 
FROM CTE 
WHERE action_date= DATE_ADD(signup_date, INTERVAL 1 day) ;
```
