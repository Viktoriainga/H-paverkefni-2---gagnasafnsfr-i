CREATE DATABASE Chocolate_lovers;

CREATE TABLE Chocolate(
    chocolateID SERIAL PRIMARY KEY,
    chocolateName VARCHAR(60) NOT NULL,
    manufacturer VARCHAR(60)
);

CREATE TABLE Chocolate_store(
    storeID SERIAL PRIMARY KEY,
    streetaddress VARCHAR(60),
    town VARCHAR(60),
    zip integer 
);

CREATE TABLE Chocolate_fan(
    fanID SERIAL PRIMARY KEY,
    birthyear CHAR(4), 
    streetaddress VARCHAR(60),
    town VARCHAR(60),
    zip integer, 
    phone integer
);

CREATE TABLE Likes(
    fanID SERIAL,
    chocolateID SERIAL,
    FOREIGN KEY(fanID) REFERENCES Chocolate_fan(fanID),
    FOREIGN KEY(chocolateID) REFERENCES Chocolate(chocolateID),
    PRIMARY KEY (fanID, chocolateID)
);

CREATE TABLE frequents(
    fanID SERIAL,
    storeID SERIAL,
    FOREIGN KEY(fanID) REFERENCES Chocolate_fan(fanID),
    FOREIGN KEY(storeID) REFERENCES Chocolate_store(storeID),
    PRIMARY KEY(fanID, storeID)
);

CREATE TABLE Sells(
    price real,
    storeID SERIAL,
    chocolateID SERIAL,
    FOREIGN KEY(chocolateID) REFERENCES Chocolate(chocolateID),
    FOREIGN KEY(storeID) REFERENCES Chocolate_store(storeID),
    PRIMARY KEY(chocolateID, storeID)
);

INSERT INTO Chocolate(chocolateName, manufacturer)
VALUES
('COOKIES N CREME', 'HERSEYS'),
('Noa kropp', 'Noa'),
('Snickers', 'Mars');

INSERT INTO Chocolate_store(streetaddress, town, zip)
VALUES 
('Urðarhvarf 10', 'Kopavogur','201'),
('Lundabrekka 2', 'Kopavogur','200'),
('Dúfnahólar 10', 'Breiðholt', '111');

INSERT INTO Chocolate_fan(birthyear, streetaddress, town, zip, phone)
VALUES
('1997', 'Hamraborg 11', 'Kopavogur', '200', '7765659'),
('1990', 'Borgartún 6', 'Reykjavik', '108', '8865567'),
('1969', 'Brekkutangi 5', 'Mosfellsbær', '270', '8219085');

INSERT INTO Likes(fanID, chocolateID)
VALUES 
('1','5'),
('2','6'),
('3','7');

INSERT INTO frequents(fanID, storeID)
VALUES
('2','1'),
('1','3'),
('3', '2');

INSERT INTO Sells(price, storeID, chocolateID)
VALUES
('1.99', '1', '5'),
('2.39','2','6'),
('1.89','3','7');

SELECT *
FROM Chocolate;

SELECT *
FROM Likes;

SELECT birthyear
FROM Chocolate_fan 
WHERE zip = '200';

UPDATE Chocolate_fan
SET zip = 201
WHERE zip = 200; 

SELECT *
FROM Chocolate_fan;

DELETE FROM Likes
WHERE fanID = '1'; 

DELETE FROM Likes;

DELETE FROM frequents;

DELETE FROM Sells;

DELETE FROM Chocolate_fan;

DELETE FROM Chocolate_store;

DELETE FROM Chocolate_fan;

DROP TABLE Likes;

DROP TABLE frequents;

DROP TABLE Sells;

DROP TABLE Chocolate_fan;

DROP TABLE Chocolate_store;

DROP TABLE Chocolate;
