# SQL Practice” Task 03

- **Date:**  2026-11-05
- **Question Name:** Average Review Ratings
- **Link:** https://datalemur.com/questions/sql-avg-review-ratings
- **Difficulty:** Easy

# Intuition


## Solution

```sql
SELECT EXTRACT(MONTH FROM submit_date) AS month,product_id,ROUND(AVG(stars),2) AS average 
FROM reviews
GROUP BY month,product_id
ORDER BY month,product_id;
```
