USE OLYMPICS 
GO

SELECT *
FROM [dbo].[olympics_record];

SELECT *
FROM [dbo].[olympics_record];

-- here to count the total number of summer games
SELECT COUNT  (DISTINCT games) AS total_summer_games 
FROM [dbo].[olympics_record]
WHERE season = 'Summer';

SELECT DISTINCT Sport, Games 
FROM [dbo].[olympics_record]
WHERE season = 'Summer'
ORDER BY Games; 

SELECT Sport, COUNT(Games) AS no_of_games
FROM [dbo].[olympics_record]
GROUP By SPORT;

--to rank the data and to know the top 5 
WITH 
t1 AS
	(SELECT name, count(1) AS total_medal
	FROM [dbo].[olympics_record]
	WHERE medal = 'Gold'
	GROUP BY name
	ORDER BY count(1) DESC),

t2 AS
	(SELECT *, DENSE_RANK() OVER (ORDER BY total_medals DESC) AS rnk
	FROM t1)
SELECT *
FROM t2
WHERE rnk <=5;

-- to know how many mendal each countrty has 
SELECT nr.region AS country, medal, count(1) as total_medals
FROM [dbo].[olympics_record] oh
JOIN [dbo].[olymics_record_regions] nr on nr.noc = oh.noc
WHERE medal<> 'NA'
GROUP BY nr.region, medal
ORDER BY nr.region, medal;
