SELECT 1 AS Query; 

SELECT L.LocationID, L.location
FROM Locations L
ORDER BY L.location DESC; 


SELECT 2 as Query; 

SELECT location
FROM Locations 
WHERE caseCount >= 1
ORDER BY location ASC;


SELECT 3 as Query;

SELECT COUNT(PersonID)
FROM People P 
INNER JOIN Genders G ON P.GenderID = G.GenderID
WHERE G.gender = 'Female';


SELECT 4 as Query; 

SELECT P.name
FROM People P 
INNER JOIN Agents A ON A.secretIdentity = P.PersonID
INNER JOIN InvolvedIn I ON I.AgentID = A.AgentID
GROUP BY P.PersonID
HAVING COUNT(I.AgentID) > 10;


SELECT 5 as Query; 

SELECT P.PersonID, P.name, C.title 
FROM People P 
INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID
INNER JOIN Cases C ON I.CaseID = C.CaseID
WHERE I.isCulprit = TRUE AND P.LocationID = C.LocationID;


SELECT 6 as Query; 

SELECT P.personID, P.name, G.gender
FROM People as P
    INNER JOIN Cases AS C ON C.locationid = 33
    INNER JOIN Agents AS A on C.agentid = A.agentid
    INNER JOIN Genders AS G ON P.GenderID = G.GenderID
WHERE A.secretIdentity = P.PersonID;


SELECT 7 as Query;

SELECT P.PersonID, P.name, PR.description, COUNT(C.CaseID) AS numcases
FROM People P
INNER JOIN Professions PR ON P.ProfessionID = PR.ProfessionID
INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID 
INNER JOIN Cases C ON C.CaseID = I.CaseID
GROUP BY P.PersonID, PR.description, C.isClosed
HAVING PR.description LIKE '% therapist' AND C.isClosed = FALSE;


SELECT 8 as Query; 

SELECT A.codename, G.gender, P.password
FROM Agents A
JOIN Genders G
ON A.GenderID = G.GenderID
JOIN Passwords P
ON A.AgentID = P.AgentID
WHERE P.password LIKE CONCAT('%',A.codename,'%');


SELECT 9 as Query; 

SELECT P.PersonID, P.name,
    CASE
        WHEN (I.isCulprit = true) THEN 'guilty'
        ELSE 'not guilty'
    END AS hasBeenCulprit
FROM People P
    INNER JOIN InvolvedIN AS I ON I.PersonID = P.PersonID
    INNER JOIN Cases AS C ON C.CaseID = I.CaseID
    INNER JOIN Locations AS L ON C.locationid = L.locationid
GROUP BY P.PersonID, L.LocationID, I.isCulprit
HAVING COUNT(C.CaseID) >= 2 AND L.Location LIKE '%vogur';

SELECT 10 as Query; 

SELECT P.PersonID, P.name, G.gender, 2045 - MAX(C.year) AS yearsSinceLastInvestigation
FROM People AS P
INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID
INNER JOIN Genders G ON P.GenderID = G.GenderID
INNER JOIN Cases C ON I.CaseID = C.CaseID
GROUP BY P.PersonID, G.gender
HAVING COUNT(DISTINCT I.AgentID) = 3;


