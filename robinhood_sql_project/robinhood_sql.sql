-- Robinhood SQL Interview Question
-- Cities With Completed Trades

-- This query finds the top 3 cities with the highest number of completed trade orders.

SELECT u.city, COUNT(t.order_id) AS total_orders
FROM trades t
JOIN users u 
  ON u.user_id = t.user_id
WHERE t.status = 'Completed'
GROUP BY u.city 
ORDER BY total_orders DESC
LIMIT 3;
