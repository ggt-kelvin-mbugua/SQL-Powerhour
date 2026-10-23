# SQL Practice” Task 01

- **Date:**  2026-10-23
- **Question Name:** Binary Tree Nodes
- **Link:** https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true
- **Difficulty:** Medium

# Intuition
Use a left join to get inner node types(where n appear on p column)


## Solution

```sql

SELECT DISTINCT(b.N),
        CASE
        WHEN b.P IS NULL THEN 'Root'
        WHEN c.N IS NOT NULL THEN 'Inner'
        ELSE 'Leaf'
        END AS Node_Type
        FROM BST b
        LEFT JOIN BST c
        ON b.N=c.P
        ORDER BY b.N;
        

```
