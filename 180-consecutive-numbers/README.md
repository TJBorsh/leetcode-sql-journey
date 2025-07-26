# 180. Consecutive Numbers

## 📘 Problem

Write an SQL query to find all numbers that appear at least three times consecutively in a table.

### Table: Logs

| Column Name | Type    |
|-------------|---------|
| Id          | int     |
| Num         | int     |

Id is the primary key for this table.  
Id is guaranteed to be consecutive integers starting from 1.

### Example Input

Logs
+----+-----+
| Id | Num |
+----+-----+
| 1 | 1 |
| 2 | 1 |
| 3 | 1 |
| 4 | 2 |
| 5 | 1 |
| 6 | 2 |
| 7 | 2 |
+----+-----+
### Example Output

+------------------+
| ConsecutiveNums |
+------------------+
| 1 |
+------------------+
