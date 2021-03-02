CREATE DATABASE PIII

select 1 as Query; -- Vikta
/*SELECT P.PersonID, P.Name
FROM People P 
INNER JOIN Locations L ON P.LocationID = L.LocationID
WHERE LEFT(L.location, 1) == LEFT(
    select L.location
    FROM Locations L 
    INNER JOIN Cases C ON C.LocationId = L.LocationId
, 1));*/

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
ORDER BY personID ASC

select 3 as Query; -- Asi

SELECT A.codename
FROM A.Agents
WHERE
    secretIdentity IN(
        SELECT A2.secretIdentity
        FROM Agents A2
        NATURAL JOIN InvolvedIn I1
        INTERSECT
        SELECT I2.PersonID
        FROM InvolvedIn I2
        WHERE I2.isCulprit = TRUE);


select 4 as Query; -- Vikta
SELECT A.codename, P.name, A.designation 
FROM Agents A 
INNER JOIN People P ON A.secretIdentity = P.PersonID
WHERE A.killLicense = TRUE OR  (
    SELECT C.CaseID
    FROM Cases C 
    INNER JOIN Agents A ON A.AgentID = C.CaseID
    GROUP BY C.CaseID, A.AgentID
    HAVING COUNT( DISTINCT C.LocationId) >=5
    
) > 0; 
-- select ...

select 5 as Query; -- Ingo

-- select ...

select 6 as Query; -- Asi

SELECT A.codename, A.designation
FROM Agents A


select 7 as Query; -- Vikta
SELECT P.PersonID, P.name, PR.description
FROM People P 



select 8 as Query; -- Ingo

SELECT A.designation, A.codename
FROM Agents A
WHERE A.agentID NOT IN (
    SELECT C.agentID
    FROM Cases C
    INNER JOIN Locations L ON C.LocationID = L.LocationID
    INNER JOIN Agents A on A.agentID = C.agentID
    WHERE L.location = 'Akranes'
)

select 9 as Query; -- Asi

SELECT C.CaseID, C.title, L.location
FROM Cases C 
INNER JOIN Locations L ON C.LocationID = L.LocationID

SELECT I.PersonID
FROM InvolvedIn I
INNER JOIN Cases C ON C.CaseID = I.CaseID


select 10 as Query; 

SELECT C.CaseID, C.title, L.location 
FROM Cases C 
INNER JOIN Locations L ON C.LocationID = L.LocationID
LEFT JOIN InvolvedIn I ON I.CaseID = C.CaseID
WHERE I.CaseID IS NULL; 

SELECT C.CaseID, C.title, L.location

SELECT I.PersonID, C.title
FROM Cases C
INNER JOIN InvolvedIn I ON C.CaseID = I.CaseID

