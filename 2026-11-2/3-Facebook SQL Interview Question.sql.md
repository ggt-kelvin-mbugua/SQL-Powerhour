# SQL Practice” Task 03

- **Date:**  2026-11-02
- **Question Name:** Facebook SQL Interview Question
- **Link:** https://datalemur.com/questions/sql-page-with-no-likes
- **Difficulty:** Easy

# Intuition
LEFT JOIN-returns all values from Pages table and matching values on the Page_likes table
WHERE-to filter null values

## Solution

```sql
SELECT p.page_id
FROM pages p
LEFT JOIN page_likes pl
ON p.page_id=pl.page_id
WHERE pl.page_id IS NULL

```
