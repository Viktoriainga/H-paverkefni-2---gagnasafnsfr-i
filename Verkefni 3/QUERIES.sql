CREATE DATABASE PIII

select 1 as Query;

SELECT DISTINCT P.PersonID, P.name, C.title
FROM People P 
INNER JOIN Locations L1 ON P.LocationID = L1.LocationID
INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID
INNER JOIN Cases C ON I.CaseID = C.CaseID
INNER JOIN Locations L2 ON L2.LocationID = C.LocationID 
WHERE SUBSTRING(L1.location, 1,1) = SUBSTRING(L2.Location, 1,1);


select 2 as Query; 

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
FROM Agents A 
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

SELECT DISTINCT A.codename
FROM Agents A
--INNER JOIN InvolvedIn I1 ON A.AgentID = I1.AgentID 
INNER JOIN People P ON P.PersonID = A.secretIdentity
INNER JOIN Cases C ON C.AgentID = A.AgentID 
INNER JOIN InvolvedIn I ON C.CaseID = I.CaseID
--INNER JOIN InvolvedIn I2 ON P.PersonID = I2.PersonID
INNER JOIN People P2 ON P2.PersonID = I.PersonID
WHERE I.isCulprit = TRUE AND P.PersonID = P2.PersonID;

INSERT INTO People
VALUES (10005, 'jksdfjædsfkdsa', 1264, 2,9);

INSERT INTO Agents 
VALUES(106, 'eieieiei', '1012', FALSE, 'active', 10005, 2);

INSERT INTO Cases 
VALUES (1220, 'the case', TRUE, 2027, 106, 37);

INSERT INTO InvolvedIn
VALUES (10005, 1220, 106, TRUE);

INSERT INTO People 
VALUES (10005, 'Dagfddddinnur Finnbogason', 1264, 2, 9);

INSERT INTO Agents
VALUES (103, 'xxxxxxxxxxxx', '2117', FALSE, 'inactive', 10002, 3);

INSERT INTO Cases
VALUES (1212, 'The Case Of The XXXX', TRUE, 2027, 103, 37);
INSERT INTO Cases
VALUES (1213, 'The Case Of The zzzX', TRUE, 2027, 103, 38);
INSERT INTO Cases
VALUES (1214, 'The Case Of The yyyX', TRUE, 2027, 103, 32);
INSERT INTO Cases
VALUES (1215, 'The Case Of The uuuXX', TRUE, 2027, 103, 31);
INSERT INTO Cases
VALUES (1216, 'The Case Of The aaaXX', TRUE, 2027, 103, 34);

INSERT INTO InvolvedIn
VALUES
(10002, 1212, 102, TRUE);
INSERT INTO InvolvedIn
VALUES
(10002, 1213, 103, TRUE),
(10002, 1214, 103, TRUE),
(10002, 1215, 103, TRUE),
(10002, 1216, 103, TRUE);

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

-- select ...

select 6 as Query; 

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

select 7 as Query; 
SELECT P.PersonID, P.name, PR.description, COUNT(I.PersonID), L.location
FROM People P 
INNER JOIN InvolvedIn I ON I.PersonID = P.PersonID
INNER JOIN Professions PR ON PR.ProfessionID = P.ProfessionID
INNER JOIN Cases C ON C.CaseID = I.CaseID
INNER JOIN Locations L ON L.LocationID = C.LocationID
GROUP BY P.PersonID,P.name, PR.description, I.PersonID, L.location
HAVING I.PersonID = MAX(I.PersonID);


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
      FROM InvolvedIn I2 )
      INNER JOIN People P2 ON P2.PersonID = I2.PersonID

);
-- sub query sem skoðar hvert casecount fyrir hverja person fyrir hvert location
--group by personid og location 
--hafa í having condition sem tekur count og athugar hvort subquery sé minna 

select 8 as Query; 

SELECT A.designation, A.codename
FROM Agents A
WHERE A.agentID NOT IN (
    SELECT C.agentID
    FROM Cases C
    INNER JOIN Locations L ON C.LocationID = L.LocationID
    INNER JOIN Agents A on A.agentID = C.agentID
    WHERE L.location = 'Akranes'
)

select 9 as Query;

SELECT C.CaseID, C.title, L.location
FROM Cases C 
INNER JOIN Locations L ON C.LocationID = L.LocationID

SELECT I.PersonID, I.CaseID ,P.GenderID
FROM InvolvedIn I
INNER JOIN People P ON P.PersonID = I.PersonID
GROUP BY I.CaseID, P.GenderID
HAVING COUNT( DISTINCT P.GenderID) = 3


SELECT I2.CaseID
FROM InvolvedIn I2
INNER JOIN 
HAVING COUNT(DISTINCT G.GenderID) = (
    SELECT DISTINCT COUNT(P.GenderID), I.CaseID
    FROM People P
    INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID
    GROUP BY I.CaseID)


SELECT I.CaseID 
FROM InvolvedIn I 
INNER JOIN People P ON P.PersonID = I.PersonID
INNER JOIN Cases C ON C.CaseID = I.CaseID 
GROUP BY P.GenderID, I.CaseID
HAVING COUNT (DISTINCT P.GenderID) = (
    SELECT DISTINCT COUNT(G.GenderID)
    FROM Genders G 
);

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

