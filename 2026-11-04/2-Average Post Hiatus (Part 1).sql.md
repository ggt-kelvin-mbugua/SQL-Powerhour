# SQL Practice” Task 02

- **Date:**  2026-11-04
- **Question Name:** Laptop vs. Mobile Viewership
- **Link:** https://datalemur.com/questions/laptop-mobile-viewership
- **Difficulty:** Easy

# Intuition


## Solution

```sql
SELECT 
    user_id, 
    DATEDIFF(MAX(DATE(post_date)), MIN(DATE(post_date))) AS days_between
FROM posts
WHERE YEAR(post_date)=2021
GROUP BY user_id
HAVING COUNT(post_id)>1
```
