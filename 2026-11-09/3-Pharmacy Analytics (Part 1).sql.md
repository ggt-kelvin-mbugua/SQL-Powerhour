# SQL Practice” Task 03

- **Date:**  2026-11-09
- **Question Name:** Pharmacy Analytics (Part 1)
- **Link:** https://datalemur.com/questions/top-profitable-drugs
- **Difficulty:** Easy

# Intuition

## Solution

```sql
SELECT drug,
      (total_sales-cogs)AS profit
      FROM pharmacy_sales
      ORDER BY profit DESC
      LIMIT 3;
```
