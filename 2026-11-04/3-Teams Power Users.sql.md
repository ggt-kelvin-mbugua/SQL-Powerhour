# SQL Practice” Task 03
- **Date:**  2026-11-04
- **Question Name:** Laptop vs. Mobile Viewership
- **Link:** https://datalemur.com/questions/laptop-mobile-viewership
- **Difficulty:** Easy

# Intuition


## Solution

```sql
SELECT sender_id,COUNT(content) AS message_count FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = '8'
  AND EXTRACT(YEAR FROM sent_date) = '2022' 
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;
```
