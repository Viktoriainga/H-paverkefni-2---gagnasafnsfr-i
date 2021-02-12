select 1 as Query; --Viktoría

-- select ...

select 2 as Query; --Ástþór

SELECT location
FROM Locations
WHERE caseCount >= 1
ORDER BY location ASC;

select 3 as Query; --Ingó

-- select ...

select 4 as Query; --Viktoría

-- select ...

select 5 as Query; --Ástþór

SELECT P.PersonID, P.name, C.title
FROM People P
JOIN Cases C 
ON P.LocationID = C.LocationID
JOIN InvolvedIn I
ON P.PersonID = I.PersonID
WHERE I.isCulprit = TRUE


select 6 as Query; --Ingó

-- select ...

select 7 as Query; --Viktoría

-- select ...

select 8 as Query; --Ástþór

-- select ...

select 9 as Query; --Ingó

-- select ...

select 10 as Query; --Viktoría

-- select ...

