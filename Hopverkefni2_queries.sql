select 1 as Query; --Viktoría

SELECT LocationID, location
FROM Locations 
ORDER BY location DESC; 
-- ****** Stendur að það eigi að vera descending? en ef ég geri DSC þá kemur aftast fyrst? Vil ég ekki ASC?

select 2 as Query; --Ástþór

-- select ...

select 3 as Query; --Ingó

-- select ...

select 4 as Query; --Viktoría

--SELECT name
--FROM PersonID JOIN InvolvedIn
--ON AgentID = PersonID
--WHERE InvolvedIn.AgentID > 10;

SELECT P.name
FROM People P 
INNER JOIN Agents A ON A.secretIdentity = P.PersonID
INNER JOIN InvolvedIn I ON I.AgentID = A.AgentID
GROUP BY P.PersonID
HAVING COUNT(I.AgentID) > 10;


-- ******** á hérna að vera GROUP BY til þess að hafa HAVING COUNT (I.agentID) > 10;? Á ég að hafa HAVING COUNT (*)?
-- ******** Hvernig vel ég fyrir GROUP BY? Skil ekki almennilega hvað það er einu sinni
-- select ...

select 5 as Query; --Ástþór

-- select ...

select 6 as Query; --Ingó

-- select ...

SELECT ProfessionID
FROM Professions
WHERE description LIKE '% therapist'

select 7 as Query; --Viktoría
SELECT P.PersonID, P.name, P.ProfessionID, COUNT(I.PersonID) AS numcases
FROM People P
INNER JOIN Professions PR ON P.ProfessionID = PR.ProfessionID
INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID
INNER JOIN Cases C ON C.CaseID = I.CaseID
GROUP BY P.PersonID, PR.ProfessionID, C.isClosed
HAVING PR.description LIKE '% therapist' AND C.isClosed = false;



-- Hvað er að gerast hér? (fengið af w3schools)
-- SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
-- FROM ((Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
-- INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);


select 8 as Query; --Ástþór

-- select ...

select 9 as Query; --Ingó

SELECT P.PersonID, P.name 

-- select ...

select 10 as Query; --Viktoría
SELECT P.PersonID, P.name, G.gender, 2045 - MAX(C.year) AS yearsSinceLastInvestigation
FROM People AS P
INNER JOIN InvolvedIn I ON P.PersonID = I.PersonID
INNER JOIN Genders G ON P.GenderID = G.GenderID
INNER JOIN Cases C ON I.CaseID = C.CaseID
--INNER JOIN Agents A ON A.AgentID = I.AgentID
GROUP BY P.PersonID, G.gender
HAVING COUNT(DISTINCT I.AgentID) = 3;

-- ******** Hvernig tel ég án þess að hafa dálk fyrir count?

-- select ...

SELECT *
FROM Locations;