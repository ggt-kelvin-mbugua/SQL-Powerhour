# SQL Practice” Task 04

- **Date:**  2026-11-10
- **Question Name:** Top Three Salaries
- **Link:** https://datalemur.com/questions/sql-top-three-salaries
- **Difficulty:** Medium

# Intuition

## Solution

```sql
WITH CTE AS (
SELECT e.employee_id,e.name,e.salary,d.department_name,
DENSE_RANK() OVER(PARTITION BY d.department_name ORDER BY e.salary DESC) AS rnk
FROM employee e
JOIN department d 
ON e.department_id=d.department_id)

SELECT department_name,name,salary
FROM CTE 
WHERE rnk IN (1,2,3)
ORDER BY department_name ASC,salary DESC,name 

```
