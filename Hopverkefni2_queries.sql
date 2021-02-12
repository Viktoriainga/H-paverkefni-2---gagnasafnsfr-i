select 1 as Query; --Viktoría

-- select ...

select 2 as Query; --Ástþór

SELECT location
FROM Locations
WHERE caseCount >= 1
ORDER BY location ASC;

select 3 as Query; --Ingó

SELECT
    COUNT(*)
FROM
    people
WHERE
    genderid = (
        SELECT
            GenderID
        FROM
            Genders
        WHERE
            gender = 'Female'
    );

select 4 as Query; --Viktoría

SELECT LocationID, location
FROM Locations 
ORDER BY location DESC;

select 5 as Query; --Ástþór

SELECT P.PersonID, P.name, C.title
FROM People P
JOIN Cases C 
ON P.LocationID = C.LocationID
JOIN InvolvedIn I
ON P.PersonID = I.PersonID
WHERE I.isCulprit = TRUE;


select 6 as Query; --Ingó

SELECT
    P.personID,
    P.name,
    P.genderID
FROM
    People as P
    INNER JOIN Cases AS C ON C.locationid = 33
    INNER JOIN Agents AS A on C.agentid = A.agentid
WHERE
    A.secretIdentity = P.PersonID;

select 7 as Query; --Viktoría

-- select ...

select 8 as Query; --Ástþór

SELECT A.codename, G.gender, P.password
FROM Agents A
JOIN Genders G
ON A.GenderID = G.GenderID
JOIN Passwords P
ON A.AgentID = P.AgentID
WHERE P.password LIKE CONCAT('%',A.codename,'%');

select 9 as Query; --Ingó

SELECT
    DISTINCT P.PersonID,
    P.name,
    CASE
        WHEN (I.isCulprit = true) THEN 'guilty'
        ELSE 'not guilty'
    END AS hasBeenCulprit
FROM
    People P
    INNER JOIN InvolvedIN AS I ON I.PersonID = P.PersonID
    INNER JOIN Cases AS C ON C.CaseID = I.CaseID
    INNER JOIN Locations AS L ON C.locationid = L.locationid
GROUP BY
    P.PersonID,
    L.LocationID,
    I.isCulprit
HAVING
    COUNT(I.CaseID) >= 2
    AND L.Location LIKE '%vogur';

select 10 as Query; --Viktoría

-- select ...

