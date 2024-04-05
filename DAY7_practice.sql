-- EX1
SELECT Name FROM STUDENTS
WHERE Marks >75
ORDER BY RIGHT(name, 3), ID

-- EX2
SELECT user_id, CONCAT(UPPER(LEFT(name,1)), LOWER(SUBSTRING(name, 2))) AS name
FROM Users
ORDER BY user_id

-- EX3
SELECT manufacturer,
CONCAT('$', ROUND(SUM(total_sales)/ 1000000), 'million') AS sales_mil
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC, manufacturer

-- EX4
SELECT ROUND(AVG(stars),2) AS avg_stars,
EXTRACT(month FROM submit_date) AS mth,
product_id
FROM reviews
GROUP BY EXTRACT(month FROM submit_date), product_id
ORDER BY mth, product_id

-- EX5
SELECT sender_id, 
COUNT(message_id) AS count_message
FROM messages
WHERE EXTRACT(month FROM sent_date)=8
AND EXTRACT(year FROM sent_date)=2022
GROUP BY sender_id
ORDER BY count_message DESC 
LIMIT 2

-- EX6
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) >15

-- EX7
SELECT activity_date AS day, COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-27' AND '2019-07-27'
GROUP BY activity_date

-- EX8
select COUNT(id) AS number_employees
from employees
WHERE joining_date BETWEEN '2022-01-01' AND '2022-07-31' 

-- EX9
select POSITION('a' IN first_name) 
from worker
where first_name = 'Amitah'

-- EX10
select substring(title, length(winery) +2, 4)
from winemag_p2
where country = 'Macedonia'
