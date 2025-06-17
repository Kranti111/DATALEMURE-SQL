# Page With No Likes – SQL Practice (DataLemur)

**📝 Problem**  
You're given two tables of Facebook data – `pages` and `page_likes`.  
Return the `page_id`s of all pages that have **zero likes**, sorted in ascending order.

**📊 Tables:**
### `pages`
| Column Name | Type    |
|-------------|---------|
| page_id     | integer |
| page_name   | varchar |

### `page_likes`
| Column Name | Type      |
|-------------|-----------|
| user_id     | integer   |
| page_id     | integer   |
| liked_date  | datetime  |

**🧠 Sample Output:**
| page_id |
|---------|
| 20701   |

**📌 SQL Solution:**
```sql
SELECT pages.page_id 
FROM pages
LEFT JOIN page_likes
ON pages.page_id = page_likes.page_id
WHERE page_likes.page_id IS NULL
ORDER BY page_id;
```

**📚 Source:** [DataLemur - Page With No Likes](https://datalemur.com/questions/no-liked-pages)
