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

SELECT * FROM topSuspects

select 3 as Query; --Vik

CREATE VIEW findNemeses AS 
SELECT DISTINCT A.AgentID, A.codename, P.PersonID, P.name
FROM Agents A 
INNER JOIN InvolvedIn I ON A.AgentID = I.AgentID
INNER JOIN People P1 ON A.secretIdentity = P1.PersonID
INNER JOIN People P ON P.PersonID = I.PersonID
GROUP BY A.AgentID, I.isCulprit, P.PersonID
HAVING I.isCulprit = TRUE AND COUNT(I.PersonID) >= ALL ((
        SELECT COUNT(I3.PersonID)
        FROM InvolvedIn I3 
        INNER JOIN Agents A1 ON I3.AgentID = A1.AgentID
        GROUP BY A1.AgentID, I3.PersonID, I3.isCulprit
        HAVING I3.PersonID = P.PersonID AND I3.isCulprit = TRUE AND COUNT(I3.PersonID) > 1 )
) AND COUNT(I.PersonID) > 1;

/*
SELECT * 
FROM Agents A 
WHERE A.AgentID = 40;

SELECT * 
FROM Agents A 
WHERE A.secretIdentity = 8066;
*/

select 4 as Query; --Asi

select 5 as Query; --Ingo

CREATE OR REPLACE PROCEDURE CaseCountFixer() AS $$
    DECLARE
        locCaseCount int;
        locid int;
        loctemp Locations%ROWTYPE;
    BEGIN
        FOR loctemp IN (
            SELECT * FROM Locations
        )
        LOOP
            locid := loctemp.locationID;
            locCaseCount := (
                SELECT COUNT(*)
                FROM Locations L 
                INNER JOIN Cases C on C.locationID = locid
                --GROUP BY L.Location
                LIMIT 1
                );
            UPDATE Locations
            SET casecount = locCaseCount
            WHERE locationID = locid;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

<<<<<<< HEAD
BEGIN;
CALL CaseCountFixer();
=======
-- DROP FUNCTION CaseCountFixer();
/*BEGIN;
SELECT * FROM CaseCountFixer();
>>>>>>> ec82cc1911f770718c569dfe83fe727a49a0a544
SELECT * FROM Locations;
ROLLBACK;*/

-- SELECT L.location, COUNT(*) as locCaseCount
-- FROM Locations L 
-- INNER JOIN Cases C on C.locationID = L.locationID
-- GROUP BY L.Location

CREATE OR REPLACE FUNCTION CaseCountTrackerHelper() 
RETURNS TRIGGER AS $$ 
BEGIN
CALL CaseCountFixer();
END; $$
LANGUAGE plpgsql;

select 6 as Query; --Vik
CREATE TRIGGER CaseCountTracker
AFTER INSERT OR UPDATE OR DELETE ON Cases
EXECUTE FUNCTION CaseCountTrackerHelper();

INSERT INTO Cases
VALUES(5002, 'The case', TRUE, 2011, 1, 2);
--DROP TRIGGER IF EXISTS CaseCountTracker ON Cases;

select 7 as Query; --Asi

select 8 as Query; --Ingo

CREATE OR REPLACE FUNCTION GetNewAgentID()
RETURNS int
AS $$
BEGIN
RETURN (
    SELECT A.AgentID--, COUNT(*) AS currCases
    FROM Agents A
    INNER JOIN Cases C ON C.AgentID = A.AgentID
    GROUP BY A.AgentID
    ORDER BY COUNT(*) ASC, A.AgentID ASC
    LIMIT 1
    );
END;
$$ LANGUAGE plpgsql;

-- A lidur
DROP FUNCTION DistributeAgentCases();
CREATE OR REPLACE PROCEDURE DistributeAgentCases(agendId_in int) AS $$
    DECLARE
        AgentCases cases%ROWTYPE;
        newAgentID int;
    BEGIN
        FOR AgentCases IN ( -- Get all cases of OLD agent
            SELECT C.CaseID
            FROM Cases C
            WHERE C.AgentID = 1agendId_in
        )
        LOOP
            newAgentID := GetNewAgentID(); -- Returns current agent with lowest casecount
            UPDATE Cases
            SET AgentID = newAgentID -- Case.AgentID
            WHERE caseID = AgentCases.caseID;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE RemoveInvestigatedBy(agendId_in int) AS $$
    BEGIN
        UPDATE InvolvedIn
        SET AgentID = NULL
        WHERE AgentID = agendId_in;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION FixAgentFired()
RETURNS TRIGGER
AS $$
BEGIN
CALL DistributeAgentCases(OLD.AgentID);
CALL RemoveInvestigatedBy(OLD.AgentID);
RETURN OLD;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS AgentFired ON Agents

CREATE TRIGGER AgentFired
    BEFORE DELETE ON Agents
    FOR EACH ROW
    EXECUTE PROCEDURE FixAgentFired();

BEGIN;
DELETE FROM Agents
WHERE AgentID = 1;
SELECT * FROM Agents;
SELECT * FROM Cases;
ROLLBACK;



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
    ProfessionID int, 
    GenderID int,
    LocationID int )
AS $$ 
BEGIN 
    RETURN query 
    SELECT DISTINCT P1.PersonID, P1.name, P1.ProfessionID, P1.GenderID, P1.LocationID 
    FROM People P1 
    INNER JOIN InvolvedIn I ON I.PersonID = P1.PersonID
    GROUP BY P1.PersonID, I.CaseID, I.PersonID
    HAVING I.CaseID IN (
        SELECT I1.CaseID
        FROM InvolvedIn I1
        GROUP BY I1.CaseID, I1.PersonID
        HAVING I1.PersonID = ID
    ) AND I.PersonID <> ID;
    
SELECT * FROM FrenemiesOfFrenemiesHelper(ID);  
END; $$

LANGUAGE plpgsql;
--select * from FrenemiesOfFrenemies(4);
--SELECT * FROM FrenemiesOfFrenemiesHelper(ID);
CREATE OR REPLACE FUNCTION FrenemiesOfFrenemiesHelper(IN ID INT)
RETURNS TABLE(
    PersonID INT,
    name varchar(255),
    ProfessionID int, 
    GenderID int,
    LocationID int )
AS $$ 
DECLARE 
    chosenPersonID INT := ID;
BEGIN 
    SELECT DISTINCT P1.PersonID, P1.name, P1.ProfessionID, P1.GenderID, P1.LocationID 
    FROM People P1 
    INNER JOIN InvolvedIn I ON I.PersonID = P1.PersonID
    GROUP BY P1.PersonID, I.CaseID, I.PersonID
    HAVING I.CaseID IN (
        SELECT I1.CaseID
        FROM InvolvedIn I1
        GROUP BY I1.CaseID, I1.PersonID
        HAVING I1.PersonID = chosenPersonID
    ) AND I.PersonID <> chosenPersonID;
    LOOP
        RETURN NEXT;
    END LOOP;

END; $$
LANGUAGE plpgsql;
select * from FrenemiesOfFrenemies(4);

CREATE OR REPLACE FUNCTION FrenemiesOfFrenemies(IN ID INT)
RETURNS TABLE (
    PersonID INT,
    name varchar(255),
    ProfessionID int, 
    GenderID int,
    LocationID int )
AS $$ 
DECLARE 
    peopleInCases record;
BEGIN 
    FOR peopleInCases IN (
        SELECT DISTINCT P1.PersonID, P1.name, P1.ProfessionID, P1.GenderID, P1.LocationID 
        FROM People P1 
        INNER JOIN InvolvedIn I ON I.PersonID = P1.PersonID
        GROUP BY P1.PersonID, I.CaseID, I.PersonID
        HAVING I.CaseID IN (
            SELECT I1.CaseID
            FROM InvolvedIn I1
            GROUP BY I1.CaseID, I1.PersonID
            HAVING I1.PersonID = ID
        ) AND I.PersonID <> ID
        FOR P1.PersonID IN (
            SELECT DISTINCT P2.PersonID, P2.name, P2.ProfessionID, P2.GenderID, P2.LocationID 
            FROM People P2
            INNER JOIN InvolvedIn I2 ON I2.PersonID = P2.PersonID
            INNER JOIN Cases C2 ON C2.CaseID = I2.CaseID
        )
    )
    LOOP 
        PersonID := peopleInCases.PersonID;
        name := peopleInCases.name;
        ProfessionID := peopleInCases.ProfessionID;
        GenderID := peopleInCases.GenderID;
        LocationID := peopleInCases.LocationID;
        RETURN NEXT;
    END LOOP;
END; $$
LANGUAGE plpgsql;
select * from FrenemiesOfFrenemies(4);