# SQL Practice” Task 03

- **Date:**  2026-11-10
- **Question Name:** Highest-Grossing Items
- **Link:** https://datalemur.com/questions/sql-highest-grossing
- **Difficulty:** Medium

# Intuition

## Solution

```sql
WITH CTE AS (
SELECT category,product,SUM(spend) AS total_spend 
FROM product_spend 
WHERE EXTRACT(YEAR FROM transaction_date)=2022
GROUP BY category,product),

Rank_total_spend AS(
SELECT category,product,total_spend,RANK()OVER(PARTITION BY category ORDER BY total_spend DESC) AS rnk
FROM CTE)

SELECT category,product,total_spend
FROM Rank_total_spend
WHERE rnk IN (1,2)

```
