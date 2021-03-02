CREATE DATABASE PIII

select 1 as Query; -- Vikta

-- select ...

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

-- select ...

select 4 as Query; -- Vikta

-- select ...

select 5 as Query; -- Ingo

-- select ...

select 6 as Query; -- Asi

-- select ...

select 7 as Query; -- Vikta

-- select ...

select 8 as Query; -- Ingo

-- select ...

select 9 as Query; -- Asi

-- select ...

select 10 as Query; -- Alles

SELECT caseid
FROM InvolvedIn
WHERE personID IS null

