# SQL Practice” Task 01

- **Date:**  2026-11-16
- **Question Name:** Best-Selling Product
- **Link:** https://datalemur.com/questions/best-selling-products
- **Difficulty:** Medium

# Intuition


## Solution

```sql
WITH CTE AS(
SELECT p.product_id,p.product_name,p.category_name,pc.sales_quantity,pc.rating
FROM products p
JOIN product_sales pc
ON p.product_id=pc.product_id),

Highest_sales_per_category AS
(
SELECT category_name,product_name,sales_quantity,rating,
RANK() OVER(PARTITION BY category_name  ORDER by sales_quantity DESC,rating DESC )AS rank
FROM CTE
)
SELECT category_name,product_name
FROM Highest_sales_per_category 
WHERE rank =1





```

