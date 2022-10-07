WITH timeframe as (SELECT W, wswin, yearid, teamID
				  FROM teams
				  WHERE yearid BETWEEN '1970' AND '2016'
                  AND wswin = 'Y'
                  ORDER BY W)

SELECT DISTINCT yearid, max(teams.w) as total_wins, teams.wswin
FROM teams
INNER JOIN timeframe
USING (yearid)
GROUP BY yearid, teams.wswin
ORDER BY yearid DESC;
-- Team with the most wins in the regular season won the WS 12 of 46 TIMES. 26.1%


SELECT DISTINCT yearid, max(w) as wins, teamid, wswin
from teams
WHERE yearid BETWEEN '1970' AND '2016'
AND wswin = 'Y'
group by teamid, yearid, wswin
ORDER BY wins DESC;

SELECT w, wswin, yearid, park, teamID
FROM teams
WHERE yearid > 1970 AND yearid < 2016
      AND wswin = 'N'
ORDER BY W DESC;