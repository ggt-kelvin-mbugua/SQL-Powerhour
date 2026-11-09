# SQL Practice” Task 04

- **Date:**  2026-11-09
- **Question Name:** Pharmacy Analytics (Part 2)
- **Link:** https://datalemur.com/questions/top-profitable-drugs
- **Difficulty:** Easy

# Intuition

## Solution

```sql
SELECT manufacturer,
      COUNT(drug) AS drug_count,
      ABS(SUM(total_sales-cogs)) AS total_loss
      FROM pharmacy_sales
      WHERE (total_sales-cogs) <= 0
      GROUP BY manufacturer
      ORDER BY total_loss DESC
      
```
