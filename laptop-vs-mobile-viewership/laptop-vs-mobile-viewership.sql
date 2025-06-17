-- Laptop vs. Mobile Viewership (NY Times SQL Interview Question)
-- Calculate total viewership for laptops and mobile devices (tablet + phone)

SELECT
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
  SUM(CASE WHEN device_type IN ('phone', 'tablet') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;
