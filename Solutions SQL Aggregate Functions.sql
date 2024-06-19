-- USE humanstampedes;
SELECT*
FROM `average time spent by a user on social media`;

Average Time Spent on Social Media by Gender

SELECT gender, AVG(time_spent) AS avg_time_spent
FROM  `average time spent by a user on social media`
GROUP BY  gender;

-- Most Popular Platform by Gender
-SELECT gender, platform, COUNT(*) AS user_count
FROM `average time spent by a user on social media`
GROUP BY gender, platform
ORDER BY gender, user_count DESC;

Total User Count by Gender
SELECT gender, COUNT(*) AS user_count
FROM `average time spent by a user on social media`
GROUP BY gender;

-- Most Popular Interest Among Different Age Groups
SELECT age, interests, COUNT(*) AS interest_count
FROM `average time spent by a user on social media`
GROUP BY age, interests
ORDER BY age, interest_count DESC;

-- Profession with the Highest Average Income
SELECT profession, AVG(income) AS average_income
FROM `average time spent by a user on social media`
GROUP BY profession
ORDER BY average_income DESC;

-- Which location has the highest average time spent on social media?
SELECT location, AVG(time_spent) AS avg_time_spent
FROM `average time spent by a user on social media`
GROUP BY location
-ORDER BY avg_time_spent DESC
 LIMIT 1;

-- What are the most common demographics of users who spend more than 3 hours per day on social media?
SELECT demographics, COUNT(*) AS user_count
FROM `average time spent by a user on social media`
WHERE time_spent > 3
GROUP BY demographics
ORDER BY user_count DESC
LIMIT 1;





