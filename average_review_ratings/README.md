# Average Review Ratings – Amazon SQL Interview Question

## 📄 Problem Statement

Given a `reviews` table, write a SQL query to retrieve the **average star rating for each product**, grouped by **month**.

The output should include:
- The **month** as a numerical value (1 to 12),
- The **product_id**,
- The **average star rating**, rounded to **two decimal places**.

Sort the result:
1. First by **month**,
2. Then by **product_id**.

---

## 🧾 Table: `reviews`

| Column Name  | Data Type |
|--------------|-----------|
| review_id    | integer   |
| user_id      | integer   |
| submit_date  | datetime  |
| product_id   | integer   |
| stars        | integer (1–5) |

---

## ✅ Example Output

| month | product_id | avg_star |
|-------|------------|----------|
| 6     | 50001      | 3.50     |
| 6     | 69852      | 4.00     |
| 7     | 69852      | 2.50     |

---

## 💡 SQL Solution

```sql
SELECT 
  EXTRACT(MONTH FROM submit_date) AS month,
  product_id,
  ROUND(AVG(stars), 2) AS avg_star
FROM reviews
GROUP BY EXTRACT(MONTH FROM submit_date), product_id
ORDER BY EXTRACT(MONTH FROM submit_date), product_id;
```
