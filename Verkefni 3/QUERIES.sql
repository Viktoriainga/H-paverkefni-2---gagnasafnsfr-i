CREATE DATABASE PIII

select 1 as Query; -- Vikta

SELECT P.PersonID, P.name 
FROM People P 
INNER JOIN Locations L1 ON P.LocationID = L1.LocationID
INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID
INNER JOIN Cases C ON I.CaseID = C.CaseID
INNER JOIN Locations L2 ON L2.LocationID = C.LocationID 
WHERE SUBSTRING(L1.location, 1,1) = SUBSTRING(L2.Location, 1,1);


select 2 as Query; -- Ingo

SELECT P.personID, P.name
FROM People P
INNER JOIN InvolvedIn AS I ON I.personID = P.personID
WHERE P.GenderID = 1
UNION
SELECT P.personID, P.name
FROM People P 
INNER JOIN Agents AS A ON A.secretIdentity = P.personID
WHERE P.GenderID = 2
ORDER BY personID ASC;


select 3 as Query; -- Asi

SELECT DISTINCT A.codename
FROM Agents A
INNER JOIN People P ON P.PersonID = A.secretIdentity
INNER JOIN Cases C ON C.AgentID = A.AgentID 
INNER JOIN InvolvedIn I ON C.CaseID = I.CaseID
INNER JOIN People P2 ON P2.PersonID = I.PersonID
WHERE I.isCulprit = TRUE AND P.PersonID = P2.PersonID;

select 4 as Query; -- Vikta

SELECT DISTINCT A.codename, A.designation 
FROM Agents A 
INNER JOIN Cases C ON A.AgentID = C.AgentID
WHERE C.AgentID IN (
    SELECT C2.AgentID
    FROM Cases C2
    GROUP BY C2.AgentID
    HAVING COUNT(DISTINCT C2.LocationId) >= 5
) OR A.killLicense = TRUE;

-- select ...

select 5 as Query; -- Ingo

SELECT A.codename, A.secretIdentity, A.designation
FROM Agents A 
INNER JOIN Cases AS C ON C.agentID = A.agentID
HAVING C.isclosed = TRUE AND A.agentID NOT IN ( -- Everyone except lowest case solved in town
    SELECT C.agentID
    FROM Locations L
    INNER JOIN Cases AS C ON L.LocationID = C.LocationID
    GROUP BY C.agentID,C.CaseID, L.LocationID
    HAVING C.isclosed = TRUE
    ORDER BY C.LocationID ASC
);

select 6 as Query; -- Asi

SELECT A.codename, A.designation
FROM Agents A
INNER JOIN Cases C2 ON C2.AgentID = A.AgentID
WHERE C2.CaseID IN(
    SELECT C.CaseID
    FROM Locations L
    INNER JOIN Cases C ON L.LocationID = C.LocationID
    WHERE C.year = (
        SELECT MIN(C1.year)
        FROM Cases C1
        WHERE L.LocationID = C1.LocationID
        GROUP BY C.LocationID))
AND A.codename IN(
    SELECT A.codename
    FROM Agents A
    INNER JOIN Cases C ON C.AgentID = A.AgentID
    GROUP BY A.codename
    HAVING COUNT( DISTINCT C.LocationID) = 2);

/*
Show the ID, name and profession of People
who have been involved in the most cases 
in each location, 
along with the number of cases 
they have been involved in for that location, 
the name of the location and 
a column called “secretly agent?” 
which contains 1 if the person is 
secretly an agent 
or 0 if the person is not an agent. 
If you can print ‘yes’ and ‘no’ 
instead of 1 and 0, all the better.
*/

select 7 as Query; -- Vikta
SELECT P.PersonID, P.name, PR.description, COUNT(I.PersonID), L.location
FROM People P 
INNER JOIN InvolvedIn I ON I.PersonID = P.PersonID
INNER JOIN Professions PR ON PR.ProfessionID = P.ProfessionID
INNER JOIN Cases C ON C.CaseID = I.CaseID
NATURAL JOIN Locations L ON L.LocationID = C.LocationID
GROUP BY P.PersonID,P.name, PR.description, I.PersonID, L.location
HAVING MAX(I.PersonID);


SELECT P.PersonID, P.name, PR.description, I.PersonID, L.location, 
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
INNER JOIN Cases C on C.CaseID = I.CaseID
INNER JOIN Locations L on L.LocationID = C.LocationID
GROUP BY P.PersonID, PR.description, I.PersonID, L.location
HAVING COUNT(P.PersonID) > (
    ( SELECT COUNT(I2.PersonID)
      FROM InvolvedIn I2 
      INNER JOIN People P2 ON P2.PersonID = I2.PersonID)
);

select 8 as Query; -- Ingo

SELECT A.designation, A.codename
FROM Agents A
WHERE A.agentID NOT IN (
    SELECT C.agentID
    FROM Cases C
    INNER JOIN Locations L ON C.LocationID = L.LocationID
    INNER JOIN Agents A on A.agentID = C.agentID
    WHERE L.location = 'Akranes'
);

select 9 as Query; -- Asi

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

SELECT 11 AS Query;

SELECT * 
FROM Locations
WHERE Location = 'Gervivogur'
