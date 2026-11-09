# SQL Practice” Task 03

- **Date:**  2026-11-06
- **Question Name:** Cards Issued Difference
- **Link:** https://datalemur.com/questions/cards-issued-difference
- **Difficulty:** Easy

# Intuition


## Solution

```sql
SELECT card_name,
      (MAX(issued_amount))-(MIN(issued_amount)) AS difference
      FROM monthly_cards_issued
      GROUP BY card_name 
      ORDER BY difference DESC

```
