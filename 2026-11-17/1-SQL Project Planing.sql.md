# SQL Practice” Task 01

- **Date:**  2026-11-17
- **Question Name:** SQL Project Planning
- **Link:** https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition


## Solution

```sql
WITH CTE AS (
    SELECT task_id,start_date,end_date, 
    DATE_SUB( end_date, INTERVAL ROW_NUMBER() OVER(ORDER BY end_date) DAY) AS rnk
    FROM Projects),

Stats AS (
        Select MIN(start_date) AS start_date,
       MAX(end_date) AS end_date,
       COUNT(rnk) AS number_of_projects
       FROM CTE
       GROUP BY rnk
       ORDER BY number_of_projects ASC ,start_date)
       
SELECT start_date,end_date FROM Stats
```

