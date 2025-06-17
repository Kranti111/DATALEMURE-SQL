# Laptop vs. Mobile Viewership – SQL Practice (DataLemur)

**📝 Problem**  
You're analyzing user viewership based on device types. You are given a table with user sessions classified into:  
- `laptop`
- `tablet`
- `phone`

Calculate the total number of views from:  
- **laptops** (as `laptop_views`)  
- **mobile devices** (defined as the sum of `tablet` and `phone`, output as `mobile_views`)

---

**📊 Table: `viewership`**
| Column Name   | Type     |
|---------------|----------|
| user_id       | integer  |
| device_type   | string ('laptop', 'tablet', 'phone') |
| view_time     | timestamp |

---

**✅ SQL Solution:**
```sql
SELECT
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
  SUM(CASE WHEN device_type IN ('phone', 'tablet') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;
```

**📚 Source:** [DataLemur - Laptop vs Mobile Viewership](https://datalemur.com/questions/laptop-mobile-viewership)
