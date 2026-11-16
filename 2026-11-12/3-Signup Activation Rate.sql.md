# SQL Practice” Task 02

- **Date:**  2026-11-12
- **Question Name:** Signup Activation Rate
- **Link:** https://datalemur.com/questions/signup-confirmation-rate
- **Difficulty:** Medium

# Intuition


## Solution

```sql
SELECT ROUND(
      (COUNT(t.signup_action) FILTER (WHERE t.signup_action='Confirmed')::DECIMAL)/
       ((COUNT(t.signup_action) FILTER (WHERE t.signup_action='Confirmed'))+(COUNT(t.signup_action) FILTER (WHERE t.signup_action='Not Confirmed')))
,2)
FROM emails e
LEFT JOIN texts t 
ON e.email_id=t.email_id



```

