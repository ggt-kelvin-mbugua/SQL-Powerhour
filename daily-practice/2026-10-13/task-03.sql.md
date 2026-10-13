# SQL Practice â€” Task 03

- **Date:** 2026-10-13
- **Question Name:** New Companies
- **Link:** https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
- **Difficulty:** Medium 

## Intuition
write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code

use left join to return all matching fields on the left side
Use count(distinct) to get the total number of unique managers,lead manager,senior manager and employees
Order the results using company_code in Asceding order.



## Solution

```sql
SELECT
    c.company_code,
    c.founder,
    COUNT(DISTINCT l.lead_manager_code),
    COUNT(DISTINCT s.senior_manager_code),
    COUNT(DISTINCT m.manager_code),
    COUNT(DISTINCT e.employee_code)
FROM Company c
LEFT JOIN Lead_Manager l
    ON c.company_code = l.company_code
LEFT JOIN Senior_Manager s
    ON c.company_code = s.company_code
LEFT JOIN Manager m
    ON c.company_code = m.company_code
LEFT JOIN Employee e
    ON c.company_code = e.company_code
GROUP BY
    c.company_code,
    c.founder
ORDER BY
    c.company_code ASC;

```
