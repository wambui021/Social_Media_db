-- USE humanstampedes;
 SELECT*
 FROM `average time spent by a user on social media`;

-- Average Time Spent on Social Media by Gender

 SELECT gender, AVG(time_spent) AS avg_time_spent
  FROM  `average time spent by a user on social media`
 GROUP BY  gender;

-- insert row  user_count
 SELECT 
     gender,
     platform,
     COUNT(*) AS user_count,
     SUM(COUNT(*)) OVER (PARTITION BY gender) AS total_user_count
 FROM `average time spent by a user on social media`
 GROUP BY gender, platform
 ORDER BY gender, user_count DESC;

-- Most Popular Platform by Gender

 SELECT gender, platform, COUNT(*) AS user_count
 FROM `average time spent by a user on social media`
 GROUP BY gender, platform
 ORDER BY gender, user_count DESC;

-- percentage analysis by gender
 SELECT 
    gender,
     platform,
     COUNT(*) AS user_count,
     ROUND((COUNT(*) * 100.0) / SUM(COUNT(*)) OVER (PARTITION BY gender), 2) AS percent_of_gender
 FROM `average time spent by a user on social media`
 GROUP BY gender, platform
 ORDER BY gender, user_count DESC;

-- Total User Count by Gender
 SELECT gender, COUNT(*) AS user_count
 FROM `average time spent by a user on social media`
  GROUP BY gender;

-- Most Popular Interest Among Different Age Groups
  SELECT 
     CASE
         WHEN age >= 18 AND age <= 24 THEN '18-24'
         WHEN age >= 25 AND age <= 34 THEN '25-34'
         WHEN age >= 35 AND age <= 44 THEN '35-44'
         WHEN age >= 45 AND age <= 54 THEN '45-54'
         WHEN age >= 55 AND age <= 64 THEN '55-64'
     ELSE '65+'
     END AS age_group,
     interests,
     COUNT(*) AS interest_count
 FROM `average time spent by a user on social media`
 GROUP BY age_group, interests
 ORDER BY age_group, interest_count DESC;


 Profession with the Highest Average Income
 SELECT profession, AVG(income) AS average_income
 FROM `average time spent by a user on social media`
 GROUP BY profession
 ORDER BY average_income DESC;

 Which location has the highest average time spent on social media?
  SELECT location, AVG(time_spent) AS avg_time_spent
  FROM `average time spent by a user on social media`
  GROUP BY location
  ORDER BY avg_time_spent DESC
  LIMIT 5;

-- Calculate the total number of users who spend more than 3 hours per day on social media
WITH total_users AS (
    SELECT COUNT(*) AS total_count
    FROM `average time spent by a user on social media`
    WHERE time_spent > 3
)

-- Calculate the user count and percentage for each demographic group
SELECT 
    demographics,
    COUNT(*) AS user_count,
    ROUND((COUNT(*) * 100.0) / (SELECT total_count FROM total_users), 2) AS percent_of_total
FROM `average time spent by a user on social media`
WHERE time_spent > 3
GROUP BY demographics
ORDER BY user_count DESC
LIMIT 5;


-- platform preference by age
 SELECT 
     CASE
         WHEN age BETWEEN 18 AND 24 THEN '18-24'
         WHEN age BETWEEN 25 AND 34 THEN '25-34'
         WHEN age BETWEEN 35 AND 44 THEN '35-44'
         WHEN age BETWEEN 45 AND 54 THEN '45-54'
         WHEN age BETWEEN 55 AND 64 THEN '55-64'
         ELSE '65+'
     END AS age_group,
     platform,
     COUNT(*) AS user_count
 FROM `average time spent by a user on social media`
 GROUP BY age_group, platform
 ORDER BY age_group, user_count DESC;





