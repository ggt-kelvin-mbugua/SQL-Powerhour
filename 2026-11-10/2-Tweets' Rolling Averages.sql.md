# SQL Practice” Task 02

- **Date:**  2026-11-10
- **Question Name:** Tweets' Rolling Averages
- **Link:** https://datalemur.com/questions/rolling-average-tweetsn
- **Difficulty:** Medium

# Intuition
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW - to calculate  3-day rolling average of tweets
## Solution

```sql
SELECT user_id,tweet_date,
ROUND(AVG(tweet_count) OVER(PARTITION BY user_id ORDER BY tweet_date
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW),2) AS rolling_avg_3d
FROM tweets;
```
