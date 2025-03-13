
CREATE TABLE spApplication (
	spApplicantID VARCHAR(50) PRIMARY KEY,
    dateApplied DATE,
    idCardNumber VARCHAR(255),
    category VARCHAR(255),
    beneficiaryCode VARCHAR(255)
);

CREATE TABLE spPersonalInformation (
	personalInfoID INT AUTO_INCREMENT PRIMARY KEY,
    spApplicantID VARCHAR(50),
    firstName VARCHAR(255),
    middleName VARCHAR(255),
    lastName VARCHAR(255),
    suffix VARCHAR(255),
    birthdate DATE,
    age INT,
    sex VARCHAR(50),
    civilStatus VARCHAR(50),
    birthplace VARCHAR(255),
    religion VARCHAR(255),
    philsysNumber VARCHAR(255)
);
CREATE TABLE spContactInformation (
	contactInfoID INT AUTO_INCREMENT PRIMARY KEY,
    spApplicantID VARCHAR(50),
    street VARCHAR(255),
    barangay VARCHAR(255),
    municipality VARCHAR(255),
    province VARCHAR(255),
    mobileNumber VARCHAR(255),
    emailAddress VARCHAR(255)
);

CREATE TABLE spProfessionalInformation (
	professionalInfoID INT AUTO_INCREMENT PRIMARY KEY,
    spApplicantID VARCHAR(50),
    occupation VARCHAR(255),
    company VARCHAR(255),
    educationalAttainment VARCHAR(255),
    monthlyIncome DECIMAL(10, 2),
    employmentStatus VARCHAR(255)
);

CREATE TABLE spOtherInformation (
	otherInfoID INT AUTO_INCREMENT PRIMARY KEY,
    spApplicantID VARCHAR(50),
    isBeneficiary VARCHAR(10),
    isIndigenous VARCHAR(10),
    isLGBTQ VARCHAR(10),
    isPWD VARCHAR(10),
    householdID VARCHAR(255),
    affiliationName VARCHAR(255)
);


CREATE TABLE spHouseholdComposition (
	familyCompositionID INT AUTO_INCREMENT PRIMARY KEY,
    spApplicantID VARCHAR(50),
    firstName VARCHAR(255),
    middleName VARCHAR(255),
    lastName VARCHAR(255),
    suffix VARCHAR(255),
    sex VARCHAR(255),
    relationship VARCHAR(255),
    birthdate DATE,
    age INT,
    civilStatus VARCHAR(50),
    educationalAttainment VARCHAR(255),
    occupation VARCHAR(255),
    monthlyIncome DECIMAL
);

CREATE TABLE spProblemNeeds (
	problemNeedsID INT AUTO_INCREMENT PRIMARY KEY,
    spApplicantID VARCHAR(50),
    causeSoloParent VARCHAR(255),
    needsSoloParent VARCHAR(255)
);

CREATE TABLE spEmergencyContact (
	problemNeedsID INT AUTO_INCREMENT PRIMARY KEY,
    spApplicantID VARCHAR(50),
    name VARCHAR(255),
    relationship VARCHAR(255),
	street VARCHAR(255),
    barangay VARCHAR(255),
    municipality VARCHAR(255),
    province VARCHAR(255),
    mobileNumber VARCHAR(255)
);

SELECT 
    sa.*,
    spi.*,
    sci.*,
    spi2.*,
    soi.*,
    spn.*,
    sec.*
FROM spApplication sa
LEFT JOIN spPersonalInformation spi ON sa.spApplicantID = spi.spApplicantID
LEFT JOIN spContactInformation sci ON sa.spApplicantID = sci.spApplicantID
LEFT JOIN spProfessionalInformation spi2 ON sa.spApplicantID = spi2.spApplicantID
LEFT JOIN spOtherInformation soi ON sa.spApplicantID = soi.spApplicantID
LEFT JOIN spProblemNeeds spn ON sa.spApplicantID = spn.spApplicantID
LEFT JOIN spEmergencyContact sec ON sa.spApplicantID = sec.spApplicantID
WHERE sa.spApplicantID = 'SP25030001';


