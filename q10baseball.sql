
SELECT DISTINCT playerid, max(HR) as total
FROM batting
GROUP BY playerid
order by total DESC
--yes

SELECT DISTINCT p.playerid, 
		b.yearid,
		p.namefirst, 
		p.namelast,
		b.hr, 
		LEFT(p.debut,4)::integer AS debut, 
		LEFT(p.finalgame,4)::integer AS final_game,
		(LEFT(p.finalgame,4)::integer-LEFT(p.debut,4)::integer) AS years_played
FROM batting AS b
INNER JOIN people AS p
USING (playerid)
inner JOIN appearances AS a
USING (playerid)
WHERE b.yearid=2016
AND b.hr > 0
AND (LEFT(p.finalgame,4)::integer-LEFT(p.debut,4)::integer) >=10
ORDER BY b.hr DESC;
--close

WITH tenyears AS (SELECT b.yearid, p.playerid,
		p.namefirst, 
		p.namelast,
		b.hr, 
		LEFT(p.debut,4)::integer AS debut, 
		LEFT(p.finalgame,4)::integer AS final_game,
		(LEFT(p.finalgame,4)::integer-LEFT(p.debut,4)::integer) AS years_played
		FROM batting AS b
		INNER JOIN people AS p
		USING (playerid)
		inner JOIN appearances AS a
		USING (playerid)
		WHERE a.yearid=2016
		AND b.hr > 0
		AND (LEFT(p.finalgame,4)::integer-LEFT(p.debut,4)::integer) >=10)

SELECT DISTINCT batting.playerid, max(batting.HR) as total
FROM batting
INNER JOIN tenyears
using (playerid)
GROUP BY batting.playerid
order by total DESC;
--nope

SELECT hr, playerid, yearid
FROM batting
WHERE yearid=2016
ORDER BY hr DESC
--hmm

SELECT  b.yearid, 
		p.playerid,
		p.namefirst, 
		p.namelast,
		b.hr, 
		LEFT(p.debut,4)::integer AS debut, 
		LEFT(p.finalgame,4)::integer AS final_game,
		(LEFT(p.finalgame,4)::integer-LEFT(p.debut,4)::integer) AS years_played
FROM batting AS b		
INNER JOIN people AS p			
USING (playerid)
INNER JOIN appearances AS a													
USING (playerid)
WHERE a.yearid=2016
AND b.hr > 0
AND (LEFT(p.finalgame,4)::integer-LEFT(p.debut,4)::integer) >=10
--ish