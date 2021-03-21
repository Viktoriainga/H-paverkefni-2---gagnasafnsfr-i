-- Authors: Ástþór Arnórsson, Ingólfur Orri Gústafsson og Viktoría Inga Smáradóttir
CREATE DATABASE PIV
/*
ATH: 
Some of the problems have edge cases/corner cases that are not described here. 
It is important that your functions handle these by raising an exception. 
Generally,the later problems are more difficult than earlier ones, 
so if you are really quick to complete one of the later problems 
then it is a good idea to take a long hard look at it to make sure you really covered all possible cases.
*/

select 1 as Query;  --Asi

CREATE OR REPLACE VIEW statusAgents(acodename, astatus, nocases, comlocation)
AS
    SELECT A.AgentID ,COUNT(*) AS NumCases--, L.location
    FROM Agents A
    INNER JOIN Cases C ON A.AgentID = C.AgentID
    INNER JOIN Locations L ON L.LocationID = C.LocationID
    GROUP BY A.AgentID, C.LocationID
    ORDER BY NumCases desc

CREATE OR REPLACE VIEW statusAgents(acodename, astatus, nocases, comlocation)
AS
    SELECT A1.codename, A1.status, NumCases --, L.location
    FROM (
        SELECT A2.codename, A2.AgentID, A2.status, COUNT(*) AS NumCases
        FROM AGENTS A2
        INNER JOIN Cases C ON A2.AgentID = C.AgentID
        GROUP BY A2.AgentID
        ORDER BY NumCases desc
        ) AS A1
    INNER JOIN




    SELECT A.AgentID, L.location, ARRAY_AGG(L.location)
    FROM Agents A
    INNER JOIN Cases C ON A.AgentID = C.AgentID
    INNER JOIN Locations L ON C.LocationID = L.LocationID
    GROUP BY A.AgentID
    ORDER BY A.AgentID

select 2 as Query; --Ingo

CREATE OR REPLACE VIEW topSuspects(susID, susName, susTown)
AS
    SELECT P.personID, P.name, COUNT(*) AS NumCases
    FROM People P 
    INNER JOIN InvolvedIn I ON I.personID = P.personID
    INNER JOIN Locations L ON L.locationID = P.locationID
    WHERE L.location = 'Stokkseyri'
    GROUP BY P.personID
    ORDER BY NumCases desc
    LIMIT 3

SELECT * FROM topSuspects;

select 3 as Query; --Vik
CREATE VIEW findNemeses AS 
SELECT A.AgentID, P1.name, P.PersonID, P.name
FROM Agents A 
INNER JOIN InvolvedIn I ON A.AgentID = I.AgentID
INNER JOIN People P1 ON A.secretIdentity = P1.PersonID
INNER JOIN People P ON P.PersonID = I.PersonID
GROUP BY P1.PersonID, P.PersonID, A.AgentID
HAVING 1 < MAX((
        SELECT COUNT(I3.PersonID)
        FROM InvolvedIn I3 
       
        WHERE I3.PersonID = P.PersonID AND I3.isCulprit = TRUE AND I3.AgentID = A.AgentID)
)
ORDER BY P.PersonID;



CREATE VIEW findNemeses AS 
SELECT A.AgentID, A.codename, P.PersonID, P.name, COUNT(P.PersonID)
FROM Agents A 
INNER JOIN InvolvedIn I ON A.AgentID = I.AgentID
INNER JOIN People P1 ON A.secretIdentity = P1.PersonID
INNER JOIN People P ON P.PersonID = I.PersonID
GROUP BY A.AgentID, I.isCulprit, P.PersonID
HAVING I.isCulprit = TRUE AND COUNT(I.CaseID) >= ALL ((
        SELECT COUNT(I.CaseID)
        FROM InvolvedIn I3 
        INNER JOIN Agents A1 ON I3.AgentID = A1.AgentID
        GROUP BY A1.AgentID, I3.PersonID, I3.isCulprit, I3.CaseID
        HAVING I3.PersonID = P.PersonID AND I3.isCulprit = TRUE AND COUNT(I3.CaseID) > 1 )
) AND COUNT(I.CaseID) > 1
ORDER BY P.PersonID;

SELECT A.AgentID, P1.name, P.PersonID, P.name
FROM Agents A 
INNER JOIN InvolvedIn I ON A.AgentID = I.AgentID
INNER JOIN People P1 ON A.secretIdentity = P1.PersonID
INNER JOIN People P ON P.PersonID = I.PersonID


CREATE VIEW findNemeses AS 
SELECT DISTINCT A.AgentID, P.name, P1.PersonID, P1.name
FROM Agents A 
INNER JOIN InvolvedIn I ON A.AgentID = I.AgentID
INNER JOIN People P ON A.secretIdentity = P.PersonID
INNER JOIN People P1 ON P1.PersonID = I.PersonID
GROUP BY A.AgentID, P.name, P1.PersonID
HAVING COUNT(I.PersonID) >= ALL (
    SELECT COUNT(I1.PersonID)
    FROM InvolvedIn I1
    GROUP BY I1.PersonID, I1.AgentID, I1.isCulprit
    HAVING P1.PersonID = I1.PersonID AND I1.AgentID = A.AgentID AND I1.isCulprit = TRUE AND COUNT(I1.PersonID) > 1)
ORDER BY P1.PersonID;


SELECT * 
FROM Agents A 
WHERE A.AgentID = 40;

SELECT * 
FROM Agents A 
WHERE A.secretIdentity = 8066;

select 4 as Query; --Asi

CREATE OR REPLACE PROCEDURE InsertPerson(
    name_in varchar(255),
    description_in varchar(255),
    gender_in varchar(255),
    location_in VARCHAR(255)
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF name_in = '' THEN
        RAISE EXCEPTION 'Name cannot be empty';
    END IF;

    IF gender_in NOT IN (
        SELECT G.gender
        FROM Genders G
    ) THEN
        RAISE EXCEPTION 'Gender does not exist';
    END IF;

    IF location_in NOT IN (
        SELECT L.location
        FROM Locations L
    ) THEN
        RAISE EXCEPTION 'Location not in database';
    END IF;

    IF description_in NOT IN (
        SELECT P.description
        FROM Professions P
    ) THEN
        INSERT INTO Professions(ProfessionID, description)
        VALUES(DEFAULT, description_in);
    END IF;

    INSERT INTO People(
        PersonID, name, ProfessionID, GenderID, LocationID)
    VALUES
    (default, name_in, 
        (SELECT P.ProfessionID
        FROM Professions P
        WHERE P.description = description_in),
        (SELECT G.GenderID
        FROM Genders G
        WHERE G.gender = gender_in),
        (SELECT L.LocationID
        FROM Locations L
        WHERE L.location = location_in));
END;
$$;

BEGIN;

CALL InsertPerson('Mjes','PÍPARI','Male','Reykjavík');
SELECT * FROM People;

ROLLBACK;


select 5 as Query; --Ingo

CREATE OR REPLACE FUNCTION CaseCountFixer() RETURNS void AS $$
    DECLARE
        val Locations;
    BEGIN
        FOR val IN (
            SELECT L.location, COUNT(*) as locCaseCount
            FROM Locations L 
            INNER JOIN Cases C on C.locationID = L.locationID
            GROUP BY L.Location
        )
        LOOP
            UPDATE Locations
            SET casecount = val.locCaseCount
            WHERE location = val.location;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

SELECT CaseCountFixer();

DROP FUNCTION CaseCountFixer();

select 6 as Query; --Vik
CREATE TRIGGER CaseCountTracker
AFTER DELETE, INSERT
FOR EACH ROW 
BEGIN 
CaseCountFixer()
END;

select 7 as Query; --Asi

CREATE OR REPLACE PROCEDURE StartInvestigation(
    AgentID_in int,
    PersonID_in int,
    title_in varchar(255)
)
LANGUAGE plpgsql
AS $$
BEGIN
    IF AgentID_in NOT IN (
    SELECT A.AgentID
    FROM Agents A
    ) THEN
    RAISE EXCEPTION 'Agent does not exist';
    END IF;

    IF PersonID_in NOT IN (
    SELECT P.PersonID
    FROM People P
    ) THEN
    RAISE EXCEPTION 'Person does not exist';
    END IF;

    INSERT INTO Cases(CaseID, title, isClosed, year, AgentID, LocationID)
    VALUES(default, title_in, FALSE,
    (SELECT EXTRACT(YEAR FROM CURRENT_DATE)),
    AgentID_in,
    (SELECT L.locationID
    FROM Locations L
    INNER JOIN People P ON L.LocationID = P.LocationID
    WHERE P.PersonID = PersonID_in));

    INSERT INTO InvolvedIn(PersonID,CaseID,AgentID,isCulprit)
    VALUES(PersonID_in,
    (SELECT CaseID
    FROM Cases
    WHERE title = title_in), AgentID_in, NULL);
END;
$$;


BEGIN;

CALL StartInvestigation(10,1,'BLAI OSTURINN');
SELECT * FROM InvolvedIn;

ROLLBACK;

select 8 as Query; --Ingo



select 9 as Query; --Vik
CREATE OR REPLACE FUNCTION yearsSinceCase(IN location VARCHAR(255)) 
RETURNS INTEGER 
AS $$
DECLARE 
    yearSince INTEGER;
    currentLocation VARCHAR(255) := location;
    currentYear INTEGER := (SELECT EXTRACT(YEAR FROM CURRENT_DATE)); -- Assigning the current year of the server to a variable
BEGIN 
    yearSince := currentYear - ( -- Subtracting the year found by the query from the current year of the server
        SELECT MAX(C.year)
        FROM Cases C 
        INNER JOIN Locations L ON L.LocationID = C.LocationID
        WHERE L.location = currentLocation AND C.year <= currentYear);
    
    IF yearSince IS NULL -- Raise an exception if the requested location does not exist
    THEN  RAISE EXCEPTION '% does not exist in the locations table', currentLocation;
    END IF;
    
    RETURN yearSince;

END; $$
LANGUAGE plpgsql; 

SELECT yearsSinceCase('Reykjahlíð');

SELECT MAX(C.year)
FROM Cases C 
INNER JOIN Locations L ON L.LocationID = C.LocationID
WHERE L.location = 'Reykjahlíð' AND C.year < (SELECT EXTRACT(YEAR FROM CURRENT_DATE));

select 10 as Query; --Allir
CREATE OR REPLACE FUNCTION FrenemiesOfFrenemies(IN ID INT)
RETURNS TABLE(
    PersonID INT,
    name varchar(255),
    ProfessionID int, /* WorksIn */
    GenderID int,
    LocationID int /* LivesIn */
)

AS $$ 
DECLARE 
    chosenPersonID INT := ID;
BEGIN 
    RETURN QUERY 
        SELECT P1.PersonID, P1.name, P1.ProfessionID, P1.GenderID, P1.LocationID
        FROM People P 
        INNER JOIN InvolvedIn I ON I.PersonID = P.PersonID
        INNER JOIN Cases C ON C.CaseID = I.CaseID
        INNER JOIN InvolvedIn I2 ON I2.CaseID = C.CaseID
        INNER JOIN People P1 ON P1.PersonID = I.PersonID

        --INNER JOIN People P2 ON P2.PersonID = I.PersonID
        GROUP BY P1.PersonID, P.PersonID, I2.CaseID, C.CaseID
        HAVING P.PersonID = chosenPersonID AND I2.CaseID = C.CaseID;

END; $$
LANGUAGE plpgsql;


select FrenemiesOfFrenemies(4);


