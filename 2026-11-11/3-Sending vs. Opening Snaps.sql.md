# SQL Practice” Task 03

- **Date:**  2026-11-11
- **Question Name:** Sending vs. Opening Snaps
- **Link:** https://datalemur.com/questions/time-spent-snaps
- **Difficulty:** Medium

# Intuition


## Solution

```sql
SELECT ag.age_bucket,ROUND(100.00 *
(SUM(a.time_spent)FILTER (WHERE a.activity_type='send'))/
(((SUM(a.time_spent)FILTER (WHERE a.activity_type='send')))+
((SUM(a.time_spent) FILTER (WHERE a.activity_type='open'))))
,2) AS spend_perc,
ROUND(100.00 *
(SUM(a.time_spent)FILTER (WHERE a.activity_type='open'))/
(((SUM(a.time_spent)FILTER (WHERE a.activity_type='send')))+
((SUM(a.time_spent) FILTER (WHERE a.activity_type='open'))))
,2) AS open_perc
FROM activities a 
JOIN age_breakdown ag 
ON a.user_id=ag.user_id
GROUP BY ag.age_bucket


```

