create schema if not exists workshop1;
use workshop1;
-- ====================================
-- DIMENSION TABLES
-- ====================================

CREATE TABLE DimCandidate (
    CandidateID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(150),
    YOE INT
);

CREATE TABLE DimDate (
    DateID INT PRIMARY KEY,
    ApplicationDate DATE,
    Day INT,
    Month INT,
    Year INT
);

CREATE TABLE DimSeniority (
    SeniorityID INT PRIMARY KEY,
    SeniorityLevel VARCHAR(50)
);

CREATE TABLE DimTechnology (
    TechnologyID INT PRIMARY KEY,
    TechnologyName VARCHAR(100)
);

CREATE TABLE DimCountry (
    CountryID INT PRIMARY KEY,
    Country VARCHAR(150)
)

-- ====================================
-- FACT TABLE
-- ====================================

CREATE TABLE FactApplications (
    ApplicationID INT AUTO_INCREMENT PRIMARY KEY,
    CandidateID INT,
    DateID INT,
    SeniorityID INT,
    TechnologyID INT,
    CountryID INT
    CodeChallengeScore INT,
    TechnicalInterviewScore INT,
    Hired TINYINT(1),
    
    -- Foreign Keys
    FOREIGN KEY (CandidateID) REFERENCES DimCandidate(CandidateID),
    FOREIGN KEY (DateID) REFERENCES DimDate(DateID),
    FOREIGN KEY (SeniorityID) REFERENCES DimSeniority(SeniorityID),
    FOREIGN KEY (TechnologyID) REFERENCES DimTechnology(TechnologyID)
    FOREIGN KEY (CountryID) REFERENCES DimCountry(CountryID)
);
