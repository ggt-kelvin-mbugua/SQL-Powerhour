# SQL Practice” Task 01

- **Date:**  2026-10-13
- **Question Name:** Weather Observation Station 5
- **Link:** https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
- **Difficulty:** Easy

# Intuition
Identify the cities with the shortest and longest lenghth
using a simple order by using the length of the city name and arranging it in descending order for longest name and ascending order for the shortest name.
Where we have a tie in the name length arrange the name in alpahabetical order(ascending order)
when we have two with same length and in the same alpahabetical order limit the result to 1


## Solution

```sql

(SELECT CITY, LENGTH(CITY) 
 FROM STATION 
 ORDER BY LENGTH(CITY) ASC, CITY ASC 
 LIMIT 1)
UNION ALL
(SELECT CITY, LENGTH(CITY) 
 FROM STATION 
 ORDER BY LENGTH(CITY) DESC, CITY ASC 
 LIMIT 1);
```

