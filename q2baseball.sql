SELECT p.namefirst, p.namelast, p.height, a.g_all, t.name 
FROM people AS p
INNER JOIN appearances AS a
USING (playerid)
INNER JOIN teams AS t
USING (teamid)
ORDER BY p.height
LIMIT 1