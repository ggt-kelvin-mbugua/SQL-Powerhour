# SQL Practice” Task 02

- **Date:**  2026-11-11
- **Question Name:** Spotify Streaming History
- **Link:** https://datalemur.com/questions/spotify-streaming-history
- **Difficulty:** Medium

# Intuition
UNION ALL-Combines both tables to one(all rows are included)

## Solution

```sql
WITH Crossed_Data AS(
SELECT user_id,song_id, SUM(Song_plays) AS song_count
FROM songs_history 
GROUP BY user_id,song_id

UNION ALL

SELECT user_id,song_id, COUNT(*) AS song_count
FROM songs_weekly w
WHERE listen_time <= '08/04/2022 23:59:59'
GROUP BY user_id,song_id)

SELECT user_id,song_id, SUM(song_count) AS song_counts
FROM Crossed_Data
GROUP BY user_id,song_id
ORDER BY song_counts DESC
```

