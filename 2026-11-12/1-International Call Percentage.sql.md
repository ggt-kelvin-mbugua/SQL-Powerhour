# SQL Practice” Task 01

- **Date:**  2026-11-12
- **Question Name:** International Call Percentage
- **Link:** https://datalemur.com/questions/international-call-percentage
- **Difficulty:** Medium

# Intuition


## Solution

```sql
WITH caller_countries AS(
SELECT p.caller_id,p.receiver_id,pi.country_id
FROM phone_calls p 
JOIN phone_info pi 
ON p.caller_id=pi.caller_id),

receiver_countries AS(
SELECT p.caller_id,p.receiver_id,pi.country_id
FROM phone_calls p 
JOIN phone_info pi 
ON p.receiver_id=pi.caller_id),

International_calls AS (
SELECT COUNT(*) AS Int_calls
FROM caller_countries c
JOIN receiver_countries r
ON c.caller_id = r.caller_id
  AND c.receiver_id = r.receiver_id
WHERE c.country_id <> r.country_id),

All_calls AS (
SELECT COUNT(*) AS all_calls
FROM phone_calls
)

SELECT
    ROUND(100.0 * i.Int_calls / a.all_calls, 1) AS international_calls_pct
FROM International_calls i
CROSS JOIN All_calls a;




```

