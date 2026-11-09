# SQL Practice” Task 02

- **Date:**  2026-11-06
- **Question Name:** IBM db2 Product Analytics
- **Link:** https://datalemur.com/questions/sql-ibm-db2-product-analytics
- **Difficulty:** Easy

# Intuition


## Solution

```sql
WITH CTE AS (
      SELECT e.employee_id,
      COALESCE(COUNT(DISTINCT q.query_id), 0) AS unique_queries
      FROM employees e 
      LEFT JOIN queries q
      ON e.employee_id=q.employee_id
      AND EXTRACT(YEAR FROM q.query_starttime) = 2023
      AND EXTRACT(MONTH FROM q.query_starttime) IN (7, 8, 9)
      GROUP BY e.employee_id
      )
SELECT unique_queries,
       COUNT(employee_id) AS employee_count
       FROM CTE
       GROUP BY unique_queries
       ORDER BY unique_queries
;
```
