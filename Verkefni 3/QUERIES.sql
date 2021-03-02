CREATE DATABASE PIII

select 1 as Query; -- Vikta

-- select ...

select 2 as Query; -- Ingo

-- select ...

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

-- select ...

select 5 as Query; -- Ingo

-- select ...

select 6 as Query; -- Asi

SELECT A.codename, A.designation
FROM Agents A


select 7 as Query; -- Vikta

-- select ...

select 8 as Query; -- Ingo

-- select ...

select 9 as Query; -- Asi

SELECT C.CaseID, C.title, L.location
FROM Cases C 
INNER JOIN Locations L ON C.LocationID = L.LocationID

SELECT I.PersonID
FROM InvolvedIn I
INNER JOIN Cases C ON C.CaseID = I.CaseID


select 10 as Query; -- Alles

-- select ...

