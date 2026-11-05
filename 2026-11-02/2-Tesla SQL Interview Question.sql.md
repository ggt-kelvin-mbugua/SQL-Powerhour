# SQL Practice” Task 02

- **Date:**  2026-11-02
- **Question Name:** Tesla SQL Interview Question
- **Link:** https://datalemur.com/questions/tesla-unfinished-parts
- **Difficulty:** Easy

# Intuition
Use the IS NULL to filter unfinished products

## Solution

```sql
SELECT part,assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;
```
