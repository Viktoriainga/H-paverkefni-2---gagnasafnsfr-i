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

-- select ...

select 3 as Query; -- Asi

-- select ...

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

-- select ...

select 7 as Query; -- Vikta
SELECT P.PersonID, P.name, PR.description
FROM People P 



select 8 as Query; -- Ingo

-- select ...

select 9 as Query; -- Asi

-- select ...

select 10 as Query; -- Alles

-- select ...

