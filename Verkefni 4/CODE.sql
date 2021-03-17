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
INSERT INTO People
VALUES
(default, 'Eyþór kristinss', 2033, 1, 82);

SELECT *
from People 
WHERE name = 'Eyþór kristinss';

INSERT INTO InvolvedIn
VALUES(10001, 3, 22, TRUE),
(10001, 4, 22, TRUE);

SELECT * 
FROM Cases
WHERE A.AgentID = 40;

SELECT * 
FROM Agents A 
WHERE A.secretIdentity = 8066;

*/

select 4 as Query; --Asi

select 5 as Query; --Ingo

CREATE OR REPLACE FUNCTION CaseCountFixer() RETURNS void AS $$
    DECLARE

    val INT;
    BEGIN
        val := (
            SELECT COUNT(*) as locCaseCount
            FROM Locations L 
            INNER JOIN Cases C on C.locationID = L.locationID
            GROUP BY L.Location
        );

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

            SET casecount = val
            WHERE location = Locations.location;

            SET casecount = locCaseCount
            WHERE locationID = locid;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

/*
BEGIN;
SELECT * FROM CaseCountFixer();
SELECT * FROM Locations;
ROLLBACK;

-- SELECT L.location, COUNT(*) as locCaseCount
-- FROM Locations L 
-- INNER JOIN Cases C on C.locationID = L.locationID
-- GROUP BY L.Location

DROP FUNCTION CaseCountFixer();
*/

select 6 as Query; --Vik
CREATE TRIGGER CaseCountTracker
AFTER INSERT OR UPDATE OR DELETE ON Cases
EXECUTE FUNCTION CaseCountFixer();


select 7 as Query; --Asi

select 8 as Query; --Ingo

CREATE OR REPLACE FUNCTION GetNewAgentID()
RETURNS int
AS $$
BEGIN
RETURN (
    SELECT A.AgentID, COUNT(*) AS currCases
    FROM Agents A
    INNER JOIN Cases C ON C.AgentID = A.AgentID
    GROUP BY A.AgentID
    ORDER BY currCases ASC, A.AgentID ASC
    LIMIT 1
    ).AgentID;
END;
$$ LANGUAGE plpgsql;

-- A lidur
CREATE OR REPLACE FUNCTION DistributeAgentCases() RETURNS void AS $$
    DECLARE
        AgentCases cases%ROWTYPE;
        newAgentID int;
    BEGIN
        FOR AgentCases IN (
            SELECT C.CaseID
            FROM Cases C
            WHERE C.AgentID = OLD.AgentID
        )
        LOOP
            newAgentID := GetNewAgentID();
            UPDATE Cases
            SET AgentID = newAgentID
            WHERE caseID = AgentCases.caseID;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION RemoveInvestigatedBy() RETURNS void AS $$
    BEGIN
        UPDATE InvolvedIn
        SET AgentID = NULL
        WHERE AgentID = OLD.AgentID;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION FixAgentFired()
RETURNS TRIGGER
AS $$
BEGIN
DistributeAgentCases();
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER AgentFired
AFTER DELETE ON Agents
FOR EACH ROW
BEGIN
FixAgentFired()
END;

BEGIN

SELECT * FROM Cases
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

/*
SELECT yearsSinceCase('Reykjahlíð');

SELECT MAX(C.year)
FROM Cases C 
INNER JOIN Locations L ON L.LocationID = C.LocationID
WHERE L.location = 'Reykjahlíð' AND C.year < (SELECT EXTRACT(YEAR FROM CURRENT_DATE));
*/

-- For lúppa sem gengur 2x þar sem P1.PersonID verður chosenPersonID?
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
  
      
END; $$
LANGUAGE plpgsql;

select FrenemiesOfFrenemies(4);


 SELECT P1.PersonID, P1.name, P1.ProfessionID, P1.GenderID, P1.LocationID
        FROM People P 
        INNER JOIN InvolvedIn I ON I.PersonID = P.PersonID
        INNER JOIN Cases C ON C.CaseID = I.CaseID
        INNER JOIN InvolvedIn I2 ON I2.CaseID = C.CaseID
        INNER JOIN People P1 ON P1.PersonID = I.PersonID

        --INNER JOIN People P2 ON P2.PersonID = I.PersonID
        GROUP BY P1.PersonID, P.PersonID, I2.CaseID, C.CaseID
        HAVING P.PersonID = chosenPersonID AND I2.CaseID = C.CaseID;