--4

WITH positions_grouped AS (SELECT po, 
 CASE
    WHEN pos = 'OF' then 'Outfield'
	WHEN pos = 'P' THEN 'Battery'
	WHEN pos ='C' THEN 'Battery'
	WHEN pos = 'SS' THEN 'Infield'
	WHEN pos ='1B' THEN 'Infield'
	WHEN pos = '2B' THEN 'Infield'
	WHEN pos = '3b' THEN 'Infield'
	end as fieldposition
FROM fielding as f
WHERE yearid = 2016)
SELECT fieldposition, sum(po)
FROM positions_grouped
GROUP BY fieldposition



SELECT *
FROM fieldingofsplit 
WHERE yearid = '2016'