# Robinhood SQL Interview Question - Cities With Completed Trades

This project contains a solution to a SQL interview question asked by Robinhood. The task is to find the **top 3 cities** with the **highest number of completed trade orders**.

## Tables Used

### `trades`
- `order_id` (integer)
- `user_id` (integer)
- `quantity` (integer)
- `status` (string: 'Completed', 'Cancelled')
- `date` (timestamp)
- `price` (decimal)

### `users`
- `user_id` (integer)
- `city` (string)
- `email` (string)
- `signup_date` (datetime)

## SQL Query

The query joins the `trades` and `users` tables on `user_id`, filters only 'Completed' trades, groups by city, counts orders, and returns the top 3 cities with the most completed trades.

## Output (based on sample data)

| city           | total_orders |
|----------------|--------------|
| San Francisco  | 3            |
| Boston         | 2            |
| Denver         | 1            |

## How to Use

1. Import the `trades` and `users` tables into your SQL environment.
2. Run the query in `solution.sql`.
3. View the results.

Feel free to contribute or expand this project!
