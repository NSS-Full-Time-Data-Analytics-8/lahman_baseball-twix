
Question 7
SELECT name, w, wswin, yearid 
FROM teams
WHERE wswin = 'N' AND yearid >= '1970'
ORDER BY yearid
FROM teams
WHERE yearid BETWEEN '1970' AND '2016'
      AND wswin = 'Y'
ORDER BY W)
select DISTINCT yearid, max(teams.w) as total_wins, teams.wswin
from teams
INNER JOIN timeframe
USING (yearid)
group by yearid, teams.wswin
order by yearid DESC

SELECT max(w),yearid
FROM teams
GROUP BY yearid

SELECT name, w, wswin, yearid 
FROM teams
WHERE wswin = 'Y' AND yearid >= 1970  AND yearid <= 2016 AND yearid <> 1981
ORDER BY w ASC

SELECT name, w, wswin, yearid 
FROM teams
WHERE wswin = 'Y' AND yearid >= '1970'
ORDER BY w DESC

Question 5
SELECT (SUM(so::decimal)/SUM(g))/2, 
CASE WHEN yearid >=1920 and yearid <=1929 THEN 'd1'
     WHEN yearid >=1930 and yearid <=1939 THEN 'd2'
	 WHEN yearid >=1940 and yearid <=1949 THEN 'd3'
	 WHEN yearid >=1950 and yearid <=1959 THEN 'd4'
	 WHEN yearid >=1960 and yearid <=1969 THEN 'd5'
	 WHEN yearid >=1970 and yearid <=1979 THEN 'd6'
	 WHEN yearid >=1980 and yearid <=1989 THEN 'd7'
	 WHEN yearid >=1990 and yearid <=1999 THEN 'd8'
     WHEN yearid >=2000 and yearid <=2009 THEN 'd9'
	 WHEN yearid >=2010 and yearid <=2019 THEN 'd10'
	 END AS decades
FROM teams
GROUP BY decades


SELECT * 
FROM teams


