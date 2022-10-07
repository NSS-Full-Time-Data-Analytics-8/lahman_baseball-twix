WITH positions_grouped AS (SELECT pos, SUM(po) AS total_putouts
						   FROM fielding
						   WHERE yearid = '2016'
						   GROUP BY pos)
SELECT total_putouts, pos,
	CASE WHEN pos = 'OF' THEN 'Outfield'
		 WHEN pos = 'SS' THEN 'Infield'
		 WHEN pos = '1B' THEN 'Infield'
		 WHEN pos = '2B' THEN 'Infield'
		 WHEN pos = '3B' THEN 'Infield'
		 WHEN pos = 'P' THEN 'Battery'
		 WHEN pos = 'C' THEN 'Battery'
		 END AS category
FROM positions_grouped