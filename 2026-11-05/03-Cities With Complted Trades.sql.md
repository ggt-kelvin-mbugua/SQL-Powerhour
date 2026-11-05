# SQL Practice” Task 03

- **Date:**  2026-11-05
- **Question Name:** Cities With Completed Trades
- **Link:** https://datalemur.com/questions/completed-trades
- **Difficulty:** Easy

# Intuition


## Solution

```sql
SELECT u.city,SUM(
        CASE WHEN t.status='Completed' THEN 1 ELSE 0 END) AS completed_trade
       FROM trades t 
       JOIN users u 
       ON t.user_id=u.user_id
       GROUP BY u.city
       ORDER BY completed_trade DESC
       LIMIT 3;

```
