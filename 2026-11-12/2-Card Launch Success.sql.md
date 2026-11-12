# SQL Practice” Task 02

- **Date:**  2026-11-12
- **Question Name:** Card Launch Success
- **Link:** https://datalemur.com/questions/card-launch-success
- **Difficulty:** Medium

# Intuition


## Solution

```sql
WITH CTE AS 
(
SELECT card_name,issued_amount,issue_month,issue_year,
RANK()OVER(PARTITION BY card_name ORDER BY issue_year,issue_month ) AS rank
FROM monthly_cards_issued

)
SELECT card_name,issued_amount
FROM CTE 
WHERE rank=1
ORDER BY issued_amount DESC


```

