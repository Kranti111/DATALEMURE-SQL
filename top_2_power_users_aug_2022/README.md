# Microsoft Teams SQL Interview Question - Top 2 Power Users (August 2022)

## Problem Statement

Write a query to identify the **top 2 Power Users** who sent the highest number of messages on Microsoft Teams in **August 2022**.
Display the IDs of these 2 users along with the total number of messages they sent.  
Output the results in **descending order** based on the count of the messages.

### Assumption:
- No two users have sent the same number of messages in August 2022.

## Table: messages

| Column Name   | Type      |
|---------------|-----------|
| message_id    | integer   |
| sender_id     | integer   |
| receiver_id   | integer   |
| content       | varchar   |
| sent_date     | datetime  |

## Example Input

| message_id | sender_id | receiver_id | content                  | sent_date           |
|------------|-----------|-------------|---------------------------|---------------------|
| 901        | 3601      | 4500        | You up?                   | 08/03/2022 00:00:00 |
| 902        | 4500      | 3601        | Only if you're buying     | 08/03/2022 00:00:00 |
| 743        | 3601      | 8752        | Let's take this offline   | 06/14/2022 00:00:00 |
| 922        | 3601      | 4500        | Get on the call           | 08/10/2022 00:00:00 |

## SQL Solution

```sql
SELECT sender_id, COUNT(*) AS total_no_of_msg_sent 
FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = 8 
  AND EXTRACT(YEAR FROM sent_date) = 2022
GROUP BY sender_id
ORDER BY total_no_of_msg_sent DESC
LIMIT 2;
```

## Output

Returns the sender IDs and their respective message counts for the top 2 users who sent the most messages in August 2022.
