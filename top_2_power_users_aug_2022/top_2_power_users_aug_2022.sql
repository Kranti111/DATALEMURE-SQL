-- Microsoft Teams SQL Interview Question: Top 2 Power Users in August 2022

-- Identify the top 2 users who sent the most messages in August 2022

SELECT sender_id, COUNT(*) AS total_no_of_msg_sent 
FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = 8 
  AND EXTRACT(YEAR FROM sent_date) = 2022
GROUP BY sender_id
ORDER BY total_no_of_msg_sent DESC
LIMIT 2;
