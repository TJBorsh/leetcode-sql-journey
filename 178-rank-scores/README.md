# 178. Rank Scores

**Difficulty**: Medium  
**Link**: [LeetCode 178 - Rank Scores](https://leetcode.com/problems/rank-scores/)

---

## 🧠 Problem

Write a SQL query to rank scores. If there is a tie between two scores, both should have the same ranking. The next score(s) should be assigned the next consecutive ranking number.

---

## 🗃️ Schema

```sql
Scores table:
+----+-------+
| id | score |
+----+-------+
| 1  | 100   |
| 2  | 90    |
| 3  | 90    |
| 4  | 80    |
+----+-------+
