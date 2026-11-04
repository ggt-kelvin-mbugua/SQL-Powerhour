# SQL Practice” Task 01

- **Date:**  2026-11-04
- **Question Name:** Laptop vs. Mobile Viewership
- **Link:** https://datalemur.com/questions/laptop-mobile-viewership
- **Difficulty:** Easy

# Intuition


## Solution

```sql
SELECT
    COUNT(CASE WHEN device_type = 'laptop' THEN 1 END) AS laptop_views,
    COUNT(CASE WHEN device_type IN ('tablet', 'mobile') THEN 1 END) AS mobile_views
FROM viewership;
```
