# SQL Practice” Task 05

- **Date:**  2026-11-05
- **Question Name:** Duplicate Job Listings
- **Link:** https://datalemur.com/questions/duplicate-job-listings
- **Difficulty:** Easy

# Intuition


## Solution

```sql
WITH CTE AS(
SELECT company_id,title,COUNT(description)
FROM job_listings
GROUP BY company_id
HAVING COUNT(description)>1)

SELECT COUNT(*) AS duplicate_job_listing
FROM CTE


```
