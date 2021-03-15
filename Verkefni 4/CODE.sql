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
    SELECT P.personID, P.name, COUNT(*) AS NumCases -- Skilar bara unique, count alltaf 1
    FROM People P 
    INNER JOIN InvolvedIn I ON I.personID = P.personID
    INNER JOIN Locations L ON L.locationID = P.locationID
    WHERE L.location = 'Stokkseyri'
    GROUP BY P.personID
    ORDER BY NumCases desc
    LIMIT 3

SELECT * FROM topSuspects

select 3 as Query; --Vik

select 4 as Query; --Asi

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
            SET Locations.casecount = val.locCaseCount
            WHERE Locations.location = val.location;
        END LOOP;
    END;
$$ LANGUAGE plpgsql;

SELECT CaseCountFixer();

DROP FUNCTION CaseCountFixer();

select 6 as Query; --Vik

select 7 as Query; --Asi

select 8 as Query; --Ingo

select 9 as Query; --Vik

select 10 as Query; --Allir

