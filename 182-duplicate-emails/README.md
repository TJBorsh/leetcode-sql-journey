# 182. Duplicate Emails

🔗 [LeetCode Problem 182](https://leetcode.com/problems/duplicate-emails/)

---

## 📝 Problem Description

Given a table `Person`:

| Column Name | Type    |
|-------------|---------|
| id          | int     |
| email       | varchar |

- `id` is the primary key column for this table.
- Each row contains an email. Emails will not be `NULL`.
- There are no duplicate `id`s.

Write a SQL query to report all the duplicate emails.

---

## ✅ Solution

```sql
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;

