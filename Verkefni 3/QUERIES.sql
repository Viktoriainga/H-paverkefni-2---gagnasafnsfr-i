-- Authors: Ástþór Arnórsson, Ingólfur Orri Gústafsson og Viktoría Inga Smáradóttir
CREATE DATABASE PIII

select 1 as Query; 

SELECT P.PersonID, P.name, C.title
FROM People P 
INNER JOIN Locations L1 ON P.LocationID = L1.LocationID
INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID
INNER JOIN Cases C ON I.CaseID = C.CaseID
INNER JOIN Locations L2 ON L2.LocationID = C.LocationID 
WHERE SUBSTRING(L1.location, 1,1) = SUBSTRING(L2.Location, 1,1);


select 2 as Query; 

SELECT P.personID, P.name
FROM People P
INNER JOIN InvolvedIn I ON I.personID = P.personID
INNER JOIN Cases C ON C.CaseID = I.CaseID 
WHERE P.GenderID = 1 AND I.isCulprit = TRUE
UNION
SELECT P.personID, P.name
FROM People P 
INNER JOIN Agents A ON A.secretIdentity = P.personID
WHERE P.GenderID = 2;


select 3 as Query; 

SELECT DISTINCT A.codename
FROM Agents A
INNER JOIN People P ON P.PersonID = A.secretIdentity
INNER JOIN Cases C ON C.AgentID = A.AgentID 
INNER JOIN InvolvedIn I ON C.CaseID = I.CaseID
INNER JOIN People P2 ON P2.PersonID = I.PersonID
WHERE I.isCulprit = TRUE AND P.PersonID = P2.PersonID;


select 4 as Query; 

SELECT DISTINCT A.codename, A.designation 
FROM Agents A 
INNER JOIN Cases C ON A.AgentID = C.AgentID
WHERE C.AgentID IN (
    SELECT C2.AgentID
    FROM Cases C2
    GROUP BY C2.AgentID
    HAVING COUNT(DISTINCT C2.LocationId) >= 5
) OR A.killLicense = TRUE;


select 5 as Query; 

SELECT DISTINCT A.codename, A.secretIdentity, A.designation
FROM Agents A
INNER JOIN Cases C ON C.AgentID = A.AgentID 
INNER JOIN Locations L ON L.LocationID = C.LocationID
GROUP BY C.AgentID, C.LocationID, A.codename, A.secretIdentity, A.designation
HAVING COUNT(C.AgentID) > ANY (
    SELECT COUNT(C.AgentID)
    FROM Cases C 
    INNER JOIN Agents A ON A.AgentID = C.AgentID
    INNER JOIN Locations L ON L.LocationID = C.LocationID 
    GROUP BY L.LocationID 
);


select 6 as Query; 

SELECT DISTINCT A.codename, A.designation
FROM Agents A
INNER JOIN Cases C ON C.AgentID = A.AgentID
WHERE C.CaseID IN(
    SELECT C1.CaseID
    FROM Locations L
    INNER JOIN Cases C1 ON L.LocationID = C1.LocationID
    WHERE C1.year = (
        SELECT MIN(C1.year)
        FROM Cases C1
        WHERE L.LocationID = C1.LocationID
        GROUP BY C1.LocationID ))
AND A.codename IN(
    SELECT A1.codename
    FROM Agents A1
    INNER JOIN Cases C2 ON C2.AgentID = A1.AgentID
    GROUP BY A1.codename
    HAVING COUNT( DISTINCT C2.LocationID) = 2);


select 7 as Query; 

SELECT P.PersonID, P.name, PR.description,
CASE
WHEN I.PersonID IN (
        SELECT A.secretIdentity 
        FROM Agents A )
    THEN 'yes'
    ELSE 'no' 
END AS secretlyagent
FROM People P
INNER JOIN InvolvedIn I ON I.PersonID = P.PersonID
INNER JOIN Professions PR ON PR.ProfessionID = P.ProfessionID
INNER JOIN Cases C ON C.CaseID = I.CaseID
INNER JOIN Locations L ON L.LocationID = C.LocationID
GROUP BY P.PersonID, PR.description, I.PersonID, L.location
HAVING COUNT(P.PersonID) >  (
      SELECT COUNT(I2.PersonID)
      FROM InvolvedIn I2 
      INNER JOIN People P2 ON P2.PersonID = I2.PersonID
      INNER JOIN Cases C2 ON C2.CaseID = I2.CaseID
      INNER JOIN Locations L ON C2.locationID = L.locationID);


select 8 as Query; 

SELECT A.designation, A.codename
FROM Agents A
WHERE A.agentID NOT IN (
    SELECT C.agentID
    FROM Cases C
    INNER JOIN Agents A on A.agentID = C.agentID
    INNER JOIN Locations L ON C.LocationID = L.LocationID
    WHERE L.location = 'Akranes'
);


select 9 as Query; 

SELECT C.CaseID, C.title, L.location
FROM Cases C
INNER JOIN Locations L ON C.LocationID = L.LocationID
WHERE C.CaseID IN(
    SELECT I.CaseID
    FROM InvolvedIn I
    INNER JOIN People P ON P.PersonID = I.PersonID
    GROUP BY I.CaseID
    HAVING COUNT(DISTINCT P.GenderID) = 3);

select 10 as Query; 

SELECT C.CaseID, C.title, L.location 
FROM Cases C 
INNER JOIN Locations L ON C.LocationID = L.LocationID
LEFT JOIN InvolvedIn I ON I.CaseID = C.CaseID
WHERE I.CaseID IS NULL; 

