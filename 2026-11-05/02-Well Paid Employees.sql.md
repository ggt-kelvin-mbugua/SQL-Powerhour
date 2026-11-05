# SQL Practice” Task 02

- **Date:**  2026-11-05
- **Question Name:** Well Paid Employees
- **Link:** https://datalemur.com/questions/final-account-balance
- **Difficulty:** Easy

# Intuition


## Solution

```sql
SELECT emp.employee_id,emp.name
FROM employee AS mgr
JOIN employee AS emp
  ON mgr.employee_id = emp.manager_id
  WHERE emp.salary>mgr.salary
```
