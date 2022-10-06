Question 11 

SELECT  t.teamid,  
	    t.w,
		SUM(s.salary) AS total_salary,
		t. yearid
FROM teams AS t
LEFT JOIN
salaries as s
ON t.yearid = s.yearid
AND t.teamid = s.teamid
WHERE t.yearid >= 2000
GROUP by t.teamid, t.w, t.yearid
ORDER BY t.teamid, t.yearid


