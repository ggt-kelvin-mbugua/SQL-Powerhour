# SQL Practice” Task 05

- **Date:**  2026-11-09
- **Question Name:** Pharmacy Analytics (Part 3)
- **Link:** https://datalemur.com/questions/total-drugs-sales
- **Difficulty:** Easy

# Intuition

## Solution

```sql
SELECT manufacturer,
      CONCAT('$',ROUND(SUM(total_sales)/1000000),' million')  AS sale
      FROM pharmacy_sales
      GROUP BY manufacturer
      ORDER BY SUM(total_sales) DESC,manufacturer; 
```
