# SQL Practice” Task 06

- **Date:**  2026-11-06
- **Question Name:** App Click-through Rate (CTR)
- **Link:** https://datalemur.com/questions/click-through-rate
- **Difficulty:** Easy

# Intuition


## Solution

```sql
SELECT app_id,ROUND(100.00*
      SUM (CASE WHEN event_type ='click' THEN 1 ELSE 0 END) /
      SUM(CASE WHEN event_type='impression' THEN 1 ELSE 0 END),2) AS ctr_app
      FROM events
      WHERE EXTRACT (YEAR FROM timestamp)=2022
      GROUP BY app_id
      


```
