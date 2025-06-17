-- Page With No Likes (Facebook SQL Interview Question)
-- Return the IDs of the Facebook pages that have zero likes

SELECT pages.page_id 
FROM pages
LEFT JOIN page_likes
ON pages.page_id = page_likes.page_id
WHERE page_likes.page_id IS NULL
ORDER BY page_id;
