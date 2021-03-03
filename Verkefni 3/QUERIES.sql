CREATE DATABASE PIII

select 1 as Query; -- Vikta
/*SELECT P.PersonID, P.Name
FROM People P 
INNER JOIN Locations L ON P.LocationID = L.LocationID
WHERE LEFT(L.location, 1) == LEFT(
    select L.location
    FROM Locations L 
    INNER JOIN Cases C ON C.LocationId = L.LocationId
, 1)); */

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

FROM Agents A
WHERE A.secretIdentity IN(
    SELECT A2.secretIdentity
    FROM Agents A2
    NATURAL JOIN Cases C
    INTERSECT
    SELECT I2.PersonID
    FROM InvolvedIn I2
    WHERE I2.isCulprit = TRUE);

SELECT I.PersonID, I.CaseID
FROM InvolvedIn I
WHERE I.isCulprit = TRUE
INTERSECT
SELECT A.secretIdentity, C.CaseID
FROM Agents A
INNER JOIN Cases C ON A.AgentID = C.AgentID;

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

SELECT L.Location, C.title, C.year
FROM Locations L
INNER JOIN Cases C ON L.LocationID = C.LocationID
WHERE C.year = (SELECT MIN(C.year)
    FROM Cases C);

SELECT A.AgentID, C.LocationID
FROM Agents A
INNER JOIN Cases C ON C.AgentID = A.AgentID
GROUP BY A.AgentID, C.LocationID
HAVING COUNT( DISTINCT A.AgentID) = 2;

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


SELECT P.PersonID, P.name, PR.description, I.PersonID, L.location
FROM People P
INNER JOIN InvolvedIn I ON I.PersonID = P.PersonID
INNER JOIN Professions PR ON PR.ProfessionID = P.ProfessionID
INNER JOIN Cases C on C.CaseID = I.CaseID
INNER JOIN Locations L on L.LocationID = C.LocationID
GROUP BY P.PersonID, PR.description, I.PersonID, L.location
/*HAVING P.PersonID IN (
    SELECT A.secretIdentity 
    FROM Agents A  */ 
HAVING I.PersonID = MAX(
    ( SELECT COUNT(I2.PersonID)
      FROM InvolvedIn I2 )
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
)

select 9 as Query; -- Asi

SELECT C.CaseID, C.title, L.location
FROM Cases C 
INNER JOIN Locations L ON C.LocationID = L.LocationID

SELECT I.PersonID, I.CaseID ,P.GenderID
FROM InvolvedIn I
INNER JOIN People P ON P.PersonID = I.PersonID
GROUP BY I.CaseID, P.GenderID
HAVING COUNT( DISTINCT P.GenderID) =3


SELECT I2.CaseID
FROM InvolvedIn I2
WHERE I2.CaseID IN(
    SELECT COUNT( DISTINCT P.GenderID), I.CaseID
    FROM People P
    INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID
    GROUP BY I.CaseID)


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
