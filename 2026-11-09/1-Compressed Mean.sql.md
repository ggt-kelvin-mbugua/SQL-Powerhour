# SQL Practice” Task 01

- **Date:**  2026-11-09
- **Question Name:** Compressed Mean
- **Link:** https://datalemur.com/questions/cards-issued-difference
- **Difficulty:** Easy

# Intuition
::DECIMAL has been used to convert the aount to a decimal before division

## Solution

```sql
SELECT 
  ROUND(SUM(item_count::DECIMAL * order_occurrences)/SUM(order_occurrences),1) AS mean
FROM items_per_order;
```
