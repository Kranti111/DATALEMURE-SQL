-- Facebook SQL Interview Question: Average Post Hiatus (Part 1)
-- For each user who posted at least twice in 2021, find the number of days between their first and last post of the year.

SELECT user_id,
       MAX(post_date::date) - MIN(post_date::date) AS days_between
FROM posts
WHERE DATE_PART('year', post_date::date) = 2021
GROUP BY user_id
HAVING COUNT(post_id) > 1;
