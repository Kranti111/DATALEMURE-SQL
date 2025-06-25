-- average_review_ratings.sql
-- Amazon SQL Interview Question: Average Review Ratings

-- This query calculates the average star rating for each product per month.
-- It groups by the month of submission and product_id, then returns
-- the month, product_id, and average rating rounded to 2 decimal places.

SELECT 
  EXTRACT(MONTH FROM submit_date) AS month,
  product_id,
  ROUND(AVG(stars), 2) AS avg_star
FROM reviews
GROUP BY EXTRACT(MONTH FROM submit_date), product_id
ORDER BY EXTRACT(MONTH FROM submit_date), product_id;
