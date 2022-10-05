SELECT DISTINCT h.team,
       h.park,
	   (h.attendance/h.games) AS avg_attendance,
	   p.park_name,
	   t.name
FROM homegames AS h
LEFT JOIN PARKS AS p
USING (park)
LEFT JOIN teams as t
On h.team = t.teamid AND 
 h.year = t.yearid
WHERE year ='2016' And games >= '10'
ORDER BY avg_attendance DESC
LIMIT 5;

SELECT DISTINCT h.team,
       h.park,
	   (h.attendance/h.games) AS avg_attendance,
	   p.park_name,
	   t.name
FROM homegames AS h
LEFT JOIN PARKS AS p
USING (park)
LEFT JOIN teams as t
On h.team = t.teamid AND 
 h.year = t.yearid
WHERE year ='2016' And games >= '10'
ORDER BY avg_attendance ASC
LIMIT 5;