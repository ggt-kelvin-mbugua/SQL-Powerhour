# SQL Practice” Task 06

- **Date:**  2026-10-19
- **Question Name:** THE PADS
- **Link:** https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
Use CONCAT() AS result function to add expressions together
Use LEFT() Function to get the first letter of each occupation
LOWER() Function to set the occupation in lower case


## Solution

```sql
SELECT CONCAT(Name,'(',LEFT(Occupation,1),')') As result
FROM Occupations
ORDER BY Name;
SELECT CONCAT('There are a total of ',COUNT(*),' ',LOWER(Occupation),'s.') AS result
FROM Occupations
GROUP BY Occupation
ORDER BY COUNT(*),Occupation;
```
