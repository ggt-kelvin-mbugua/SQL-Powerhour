# SQL Practice” Task 02

- **Date:**  2026-10-16
- **Question Name:** The Report
- **Link:** https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
Use Case to qeury students whose grades are less that 8
Since the two tables dont have PK and FK use JOIN ON BETWEEN
Use Order By to Order the results
-- 3 columns
-- Name & Marks - Students,order the names alphabetically
-- Grade-Grades table,make sure its in DSC
-- If grade is <8 THEN NULL name, Grades in DSC


## Solution

```sql
SELECT
    CASE WHEN g.Grade < 8 THEN NULL ELSE s.Name END AS Name,
    g.Grade,
    s.Marks
FROM Students s
JOIN Grades g
    ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC;
```
