1. Data Dive :

Pick your dataset and click to download ( Human Stampedes).
Import it into MySQL Workbench (learn how!). 
Briefly explain any difficulties and 1 interesting thing you noticed about your chosen dataset.

**Difficulties Encountered
Handling missing or null values required careful attention to avoid errors during import.

**Interesting Finding
One interesting aspect of the Human Stampedes dataset might be the geographic distribution of incidents, revealing that certain regions have higher occurrences, which can be linked to cultural or infrastructural factors.


2. Data Fun :

Use simple SQL queries to play with the data.
Find 2 cool facts hidden within the data (e.g., most popular interests).

-- Average Time Spent on Social Media by Gender
	gender	avg_time_spent
	male	4.8220
	female	5.1903
	non-binary	5.0783

Interpretation: The results show that on average, users identifying as non-binary spend the most time on social media per day, followed by females and males.Interpretation: The results show that on average, users identifying as non-binary spend the most time on social media per day, followed by females and males.

-- Most Popular Platform by Gender

	female	Instagram	135
female	YouTube	111
female	Facebook	85
male	Instagram	128
male	Facebook	113
male	YouTube	96
non-binary	YouTube	123
non-binary	Facebook	109
non-binary	Instagram	100

 Interpretation: Female Users: Instagram is the most popular platform, followed by YouTube and then Facebook.
Male Users: Instagram is the most popular platform, followed by Facebook and then YouTube.
Non-binary Users: YouTube is the most popular platform, followed by Facebook and then Instagram.

Use basic SQL queries like (COUNT, AVG, and SUM) to understand more about the data you have.

-- Total User Count by Gender
male	337
female	331
non-binary	332

3. Ask Away (30 pts):

Formulate 2 questions about the data (e.g., what are popular shows in different countries?).

-- Which location has the highest average time spent on social media?
Australia	5.2188

-- What are the most common demographics of users who spend more than 3 hours per day on social media?
Sub_Urban	239

Write basic SQL queries (WHERE, ORDER BY) to find answers.
Share what you learned from the answers.
