-- Authors: Ástþór Arnórsson, Ingólfur Orri Gústafsson og Viktoría Inga Smáradóttir

CREATE DATABASE PIV

select 1 as Query;  

CREATE OR REPLACE VIEW statusAgents AS
    SELECT A.AgentID, A.codename, A.status, COUNT(DISTINCT C1.CaseID) AS NumCases, 
    ARRAY(
        SELECT L.location
        FROM Locations L
        INNER JOIN Cases C ON C.LocationID = L.LocationID
        GROUP BY L.location, C.LocationID, C.AgentID
        HAVING C.AgentID = A.AgentID
        AND COUNT(C.LocationID) >= ALL ((
            SELECT COUNT(C1.LocationID)
            FROM Cases C1
            INNER JOIN Locations L1 ON L1.LocationID = C1.LocationID
            GROUP BY C1.LocationID, C1.AgentID
            HAVING C1.AgentID = A.AgentID
        )))
    FROM Agents A
    INNER JOIN Cases C1 ON A.AgentID = C1.AgentID
    GROUP BY A.AgentID, C1.AgentID;


select 2 as Query; 

CREATE OR REPLACE VIEW topSuspects AS
    SELECT P.personID, P.name, L.location 
    FROM People P 
    INNER JOIN InvolvedIn I ON I.personID = P.personID
    INNER JOIN Locations L ON L.locationID = P.locationID
    WHERE L.location = 'Stokkseyri'
    GROUP BY P.personID, L.location
    ORDER BY COUNT(*) desc
    LIMIT 3;


/* Test for view */ 
SELECT * FROM topSuspects;


select 3 as Query; 

CREATE OR REPLACE VIEW findNemeses AS 
SELECT DISTINCT A.AgentID, A.codename, P.PersonID, P.name
FROM Agents A 
INNER JOIN InvolvedIn I ON A.AgentID = I.AgentID
INNER JOIN People P1 ON A.secretIdentity = P1.PersonID
INNER JOIN People P ON P.PersonID = I.PersonID
GROUP BY A.AgentID, I.isCulprit, P.PersonID
HAVING I.isCulprit = TRUE AND COUNT(I.PersonID) >= ALL (( -- Subquery that counts how many times an agent has investigated the person
        SELECT COUNT(I3.PersonID)
        FROM InvolvedIn I3 
        INNER JOIN Agents A1 ON I3.AgentID = A1.AgentID
        GROUP BY A1.AgentID, I3.PersonID, I3.isCulprit
        HAVING I3.PersonID = P.PersonID AND I3.isCulprit = TRUE AND COUNT(I3.PersonID) > 1 )
) AND COUNT(I.PersonID) > 1;


select 4 as Query; 

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


select 5 as Query; 

CREATE OR REPLACE PROCEDURE CaseCountFixer() AS $$
    DECLARE
        locCaseCount int;
        locid int;
        loctemp int;
    BEGIN
        FOR loctemp IN (
            SELECT locationID FROM Locations
        )
        LOOP
            locCaseCount := (
                SELECT COUNT(*)
                FROM Cases C 
                INNER JOIN Locations L on L.locationID = loctemp
                GROUP BY C.LocationID
                HAVING C.locationID = loctemp
                LIMIT 1
                );
            IF locCaseCount IS NULL THEN
                locCaseCount := 0;
            END IF;
            UPDATE Locations
            SET casecount = locCaseCount
            WHERE locationID = loctemp;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;


-- Test for CaseCountFixer()

BEGIN;
CALL CaseCountFixer();
SELECT * FROM Locations;
ROLLBACK;

select 6 as Query; 

/* Trigger function for CaseCountTracker */
CREATE OR REPLACE FUNCTION CaseCountTrackerHelper()
RETURNS TRIGGER 
LANGUAGE plpgsql
AS $$ 
BEGIN
    IF TG_OP = 'UPDATE' AND OLD.locationID <> NEW.locationID OR TG_OP = 'INSERT' THEN
        CALL CaseCountFixer();
        RETURN NEW;

    ELSEIF TG_OP = 'DELETE' THEN
        CALL CaseCountFixer();
        END IF;
        RETURN OLD;
END; 
$$;

/* Trigger for update, insert or delete on Cases */
CREATE TRIGGER CaseCountTracker
AFTER INSERT OR DELETE OR UPDATE ON Cases
EXECUTE FUNCTION CaseCountTrackerHelper();


select 7 as Query; 

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


select 8 as Query;

CREATE OR REPLACE FUNCTION GetNewAgentID(agentId_in int)
RETURNS int
AS $$
BEGIN
RETURN (
    SELECT A.AgentID
    FROM Agents A
    INNER JOIN Cases C ON C.AgentID = A.AgentID
    GROUP BY A.AgentID
    HAVING A.AgentID <> agentId_in
    ORDER BY COUNT(*) ASC, A.designation ASC
    LIMIT 1
    );
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE DistributeAgentCases(agentId_in int) AS $$
    DECLARE
        AgentCases int;
        newAgentID int;
    BEGIN
        FOR AgentCases in ( -- Get all cases of OLD agent
            SELECT C.CaseID
            FROM Cases C
            WHERE C.AgentID = agentId_in
        )
        LOOP
            newAgentID := GetNewAgentID(agentId_in); -- Returns current agent with lowest casecount
            UPDATE Cases
            SET AgentID = newAgentID 
            WHERE caseID = AgentCases;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE RemoveInvestigatedBy(agentId_in int) AS $$
    BEGIN
        UPDATE InvolvedIn
        SET AgentID = NULL
        WHERE AgentID = agentId_in;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE PROCEDURE DeleteSecretIdentity(secretIdentity_in int) AS $$
    BEGIN
        UPDATE Agents
        SET secretIdentity = NULL
        WHERE secretIdentity = secretIdentity_in;

        DELETE FROM People
        WHERE personID = secretIdentity_in;
    END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION FixAgentFired() RETURNS TRIGGER AS $$
    BEGIN
        CALL DeleteSecretIdentity(OLD.secretIdentity);
        CALL DistributeAgentCases(OLD.AgentID);
        CALL RemoveInvestigatedBy(OLD.AgentID);
        --CALL DeleteSecretIdentity(OLD.secretIdentity);
        RETURN OLD;
    END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER AgentFired
    BEFORE DELETE ON Agents
    FOR EACH ROW
    EXECUTE FUNCTION FixAgentFired();


-- Test for problem 8
BEGIN;
SELECT * FROM Agents WHERE AgentID = 2;
SELECT * FROM Cases WHERE AgentID = 2;
DELETE FROM Agents
WHERE AgentID = 2;
SELECT * FROM People;
ROLLBACK;


select 9 as Query; 

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


select 10 as Query; 

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
    peopleInCases2 record;
BEGIN 
    FOR peopleInCases IN ( /* First depth, finding frenemies of the chosen person. This works */
        SELECT DISTINCT P1.PersonID, P1.name, P1.ProfessionID, P1.GenderID, P1.LocationID 
        FROM People P1 
        INNER JOIN InvolvedIn I ON I.PersonID = P1.PersonID
        GROUP BY P1.PersonID, I.CaseID, I.PersonID
        HAVING I.CaseID IN (
            SELECT I1.CaseID
            FROM InvolvedIn I1
            GROUP BY I1.CaseID, I1.PersonID
            HAVING I1.PersonID = 4
        ) AND I.PersonID <> 4
        ORDER BY P1.PersonID
    )
    LOOP 
        PersonID := peopleInCases.PersonID;
        name := peopleInCases.name;
        ProfessionID := peopleInCases.ProfessionID;
        GenderID := peopleInCases.GenderID;
        LocationID := peopleInCases.LocationID;

        FOR peopleInCases2 IN ( /* Second depth, this doesn't work like the outer for loop */
            SELECT DISTINCT P2.PersonID, P2.name, P2.ProfessionID, P2.GenderID, P2.LocationID 
            FROM People P2
            INNER JOIN InvolvedIn I2 ON I2.PersonID = P2.PersonID
            GROUP BY P2.PersonID, I2.CaseID, I2.PersonID
            HAVING I2.PersonID <> ID AND I2.PersonID <> peopleInCases.PersonID 
            AND I2.CASEID IN (
                SELECT DISTINCT I3.CaseID 
                FROM InvolvedIn I3 
                GROUP BY I3.CaseID, I3.PersonID
                HAVING I3.PersonID = peopleInCases.PersonID
            ) AND I2.PersonID <> ID )
                
            LOOP 
            PersonID := peopleInCases2.PersonID;
            name := peopleInCases2.name;
            ProfessionID := peopleInCases2.ProfessionID;
            GenderID := peopleInCases2.GenderID;
            LocationID := peopleInCases2.LocationID;
            RETURN NEXT;
            END LOOP;
        RETURN NEXT;
    END LOOP;
END; $$
LANGUAGE plpgsql;

/* Test for problem 10 */
SELECT * FROM FrenemiesOfFrenemies(4);





