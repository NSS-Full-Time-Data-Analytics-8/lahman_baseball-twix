SELECT ROUND(SUM(so::decimal)/(SUM(g)/2),2) AS avg_so,
       ROUND(SUM(hr::decimal)/(SUM(g)/2),2) AS avg_hr,
CASE WHEN yearid >=1920 and yearid <=1929 THEN 'A'
     WHEN yearid >=1930 and yearid <=1939 THEN 'B'
	 WHEN yearid >=1940 and yearid <=1949 THEN 'C'
	 WHEN yearid >=1950 and yearid <=1959 THEN 'D'
	 WHEN yearid >=1960 and yearid <=1969 THEN 'E'
	 WHEN yearid >=1970 and yearid <=1979 THEN  'F'
	 WHEN yearid >=1980 and yearid <=1989 THEN 'G'
	 WHEN yearid >=1990 and yearid <=1999 THEN 'H'
     WHEN yearid >=2000 and yearid <=2009 THEN 'I'
	 WHEN yearid >=2010 and yearid <=2019 THEN 'J'
	 END AS decades
FROM teams
GROUP BY decades
ORDER BY decades

Avg Strike out increased in each decade but Home run remained same.
