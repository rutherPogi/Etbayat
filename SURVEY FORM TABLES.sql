CREATE TABLE users (
	userID INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    position VARCHAR(50),
    accountName VARCHAR(50)
);

CREATE TABLE SurveyResponses (
    surveyID INT PRIMARY KEY,
    respondent VARCHAR(255),
    interviewer VARCHAR(255),
    surveyDate DATE,
    barangay VARCHAR(255),
    municipality VARCHAR(255),
    monthlyIncome DECIMAL(10,2),
    irregularIncome DECIMAL(10,2),
    familyIncome DECIMAL(10,2)
);

CREATE TABLE FamilyProfile (
  familyProfileID INT AUTO_INCREMENT PRIMARY KEY,
  surveyID INT,
  firstName VARCHAR(255),
  middleName VARCHAR(255),
  lastName VARCHAR(255),
  suffix VARCHAR(50),
  birthdate DATE,
  age INT,
  civilStatus VARCHAR(100),
  relationToFamilyHead VARCHAR(255),
  educationalAttainment VARCHAR(255),
  occupation VARCHAR(255),
  skillsTraining VARCHAR(255),
  employmentType VARCHAR(255),
  philhealthNumber VARCHAR(50),
  monthlyIncome DECIMAL(10, 2),
  healthStatus VARCHAR(255),
  remarks TEXT
);

CREATE TABLE Expenses (
    expensesID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    expenses VARCHAR(50),
    expensesType VARCHAR(50),
    amount DECIMAL(10,2) DEFAULT 0.00
);

CREATE TABLE HouseInformation (
    houseInfoID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    houseCondition VARCHAR(50),
    houseStructure VARCHAR(50)
);

CREATE TABLE WaterInformation (
    waterInfoID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    waterAccess VARCHAR(50),
    potableWater VARCHAR(50),
    waterSources VARCHAR(100)
);

CREATE TABLE Livestock (
    livestockID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    livestock VARCHAR(50),
    totalNumber INT,
    own INT,
    dispersal INT
);

CREATE TABLE Farmlots (
    farmlotID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    cultivation INT,
    pastureland INT,
    forestland INT
);

CREATE TABLE CropsPlanted (
    cropsPlantedID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    crops VARCHAR(50),
    size INT
);

CREATE TABLE FruitBearingTree (
    fruitBearingTreeID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    tree VARCHAR(50),
    totalNumber INT
);

CREATE TABLE FamilyResources (
    familyResourcesID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    resources VARCHAR(50),
    amount DECIMAL(10, 2)
);

CREATE TABLE AppliancesOwn (
    appliancesOwnID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    appliances VARCHAR(50),
    totalAppliances INT
);

CREATE TABLE Amenities (
    amenitiesID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    amenities VARCHAR(50),
    totalAmenities INT
);

CREATE TABLE CommunityIssues (
    communityIssuesID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    issues VARCHAR(100)
);

CREATE TABLE ServiceAvailed (
    serviceAvailedID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    dateServiceAvailed DATE,
    ngoName VARCHAR(50),
    serviceAvailed VARCHAR(50),
    maleServed INT,
    femaleServed INT,
    totalServed INT,
    howServiceHelp VARCHAR(100)
);

CREATE TABLE GovernmentAffiliation (
    governmentAffiliationID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    nameAffiliated VARCHAR(50),
    asOfficer DATE,
    asMember DATE,
    organizationName VARCHAR(50)
);

CREATE TABLE NonIvatan (
    NonIvatanID INT AUTO_INCREMENT PRIMARY KEY,
    surveyID INT,
    ipulaName VARCHAR(50),
    settlementDetails VARCHAR(100),
    ethnicity VARCHAR(50),
    placeOfOrigin VARCHAR(50),
    isTransient VARCHAR(20),
    houseOwner VARCHAR(50),
    isRegistered VARCHAR(20),
    dateRegistered DATE
);