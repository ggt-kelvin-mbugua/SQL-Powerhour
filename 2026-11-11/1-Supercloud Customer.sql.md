# SQL Practice” Task 01

- **Date:**  2026-11-11
- **Question Name:** Supercloud Customer
- **Link:** https://datalemur.com/questions/supercloud-customer
- **Difficulty:** Medium

# Intuition


## Solution

```sql

WITH CTE AS (
SELECT c.customer_id,COUNT(DISTINCT p.product_category)AS product_count
FROM customer_contracts c
JOIN products p
ON c.product_id=p.product_id
GROUP BY  c.customer_id)

SELECT customer_id
FROM CTE
WHERE product_count=3
```

