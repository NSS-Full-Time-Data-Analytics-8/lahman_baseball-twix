select playerid, COUNT(playerid)
from awardsmanagers as A
where awardid = 'TSN Manager of the Year'
AND lgid <> 'ML'
group by playerid
HAVING count(playerid) >=2;
--Davey Johnson: 1997 Baltimore (AL), 2012 Washington (NL)
--Jim Leyland: 1988-1990-1992 Pittsburgh (NL), 2006 Detroit (AL)
--See below for logic (lol)

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'bochybr01';
--no

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'oatesjo01';
--no

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'johnsda02';
--yes

SELECT namefirst, namelast
FROM people
WHERE playerid = 'johnsda02';
--Davey Johnson

SELECT teamid
FROM managers
WHERE playerid = 'johnsda02';
and yearid = 1997;
--BAL (AL)

SELECT teamid
FROM managers
WHERE playerid = 'johnsda02'
and yearid = 2012;
--WAS (NL)

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'bakerdu01';
--no

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'maddojo99';
--no

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'larusto01';
--no

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'showabu99';
--no

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'gardero01';
--no

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'leylaji99';
--YES 1988, 1990, 1992 (NL), 2006(AL)

SELECT namefirst, namelast
FROM people
WHERE playerid = 'leylaji99';
--Jim Leyland

SELECT teamid
FROM managers
WHERE playerid = 'leylaji99'
and yearid IN (1988, 1990, 1992);
--Pittsburgh

SELECT teamid
FROM managers
WHERE playerid = 'leylaji99'
and yearid = '2006';
--Detroit

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'sciosmi01';
--no

SELECT lgid, playerid, yearid, awardid
FROM awardsmanagers
WHERE lgid <> 'ML'
AND awardid = 'TSN Manager of the Year'
AND playerid = 'coxbo01';
--no