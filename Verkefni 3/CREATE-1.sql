CREATE TABLE Professions (
    ProfessionID serial PRIMARY KEY,
    description varchar(255) NOT NULL
);

CREATE TABLE Genders (
    GenderID serial PRIMARY KEY,
    gender varchar(255) NOT NULL
);

CREATE TABLE Locations (
    LocationID serial PRIMARY KEY,
    location VARCHAR(255) NOT NULL,
    caseCount int NOT NULL DEFAULT 0
);

CREATE TABLE People (
    PersonID serial PRIMARY KEY,
    name varchar(255),
    ProfessionID int REFERENCES Professions (ProfessionID), /* WorksIn */
    GenderID int REFERENCES Genders (GenderID),
    LocationID int REFERENCES Locations (LocationID) /* LivesIn */
);

CREATE TABLE Agents (
    AgentID serial PRIMARY KEY,
    codename varchar(255),
    designation char(4),
    killLicense boolean NOT NULL,
    status varchar(20),
    secretIdentity int,
    GenderID int,
    FOREIGN KEY (secretIdentity) REFERENCES People (PersonID),
    FOREIGN KEY (GenderID) REFERENCES Genders (GenderID)
);

CREATE TABLE Cases (
    CaseID serial PRIMARY KEY,
    title varchar(255),
    isClosed boolean NOT NULL,
    year smallint,
    AgentID int NOT NULL REFERENCES Agents (AgentID), /* leadBy */
    LocationID int REFERENCES Locations (LocationID) /* happensIn */
);

CREATE TABLE InvolvedIn (
    PersonID int REFERENCES People (PersonID),
    CaseID int REFERENCES Cases (CaseID),
    AgentID int REFERENCES Agents (AgentID), /* investigates */
    isCulprit boolean,
    PRIMARY KEY (PersonID, CaseID)
);

CREATE TABLE Passwords (
    AgentID int PRIMARY KEY,
    username varchar(255) UNIQUE,
    password VARCHAR(255) DEFAULT '[REDACTED]',
    FOREIGN KEY (AgentID) REFERENCES Agents (AgentID) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE Passwords;
DROP TABLE InvolvedIn;
DROP TABLE Cases;
DROP TABLE Agents;
DROP TABLE People;
DROP TABLE Locations;
DROP TABLE Genders;
DROP TABLE Professions;

INSERT INTO Professions(description)
VALUES
('Electronic publishing specialist');

INSERT INTO Genders(GenderID, gender)
VALUES
(1, 'Female'),
(2, 'Male'),
(3, 'Other');

INSERT INTO Locations(location, caseCount)
VALUES
('Finnbogastaðir', 0);


INSERT INTO Locations(location, caseCount)
VALUES
('Finnbogasssss', 2);

INSERT INTO People
VALUES
(1, 'Eyþóra Kristbjörnsdóttir', 1, 2, 1);

INSERT INTO People
VALUES
(2, 'Eyþór Kristbjörn', 1, 2, 1);

INSERT INTO Agents
VALUES
(2, 'Buzzindsfng', '0002', TRUE, 'killed', 2, 2);

INSERT INTO Agents
VALUES
(1, 'Buzzing Darling', '0001', TRUE, 'killed', 1, 2);

INSERT INTO Cases
VALUES
(1, 'The Case Of The Door', TRUE, 2027, 1, 1),
(2, 'The Case Of The Protest', TRUE, 2045, 1, 2);

INSERT INTO InvolvedIn
VALUES
(1, 1, 1, TRUE),
(1, 2, 1, TRUE);