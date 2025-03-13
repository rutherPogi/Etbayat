USE test ;

CREATE TABLE scApplication (
	scApplicantID VARCHAR(50) PRIMARY KEY,
    dateApplied DATE,
    issuedAt DATE,
    issuedOn DATE,
    photoID LONGBLOB,
    photoSignature LONGBLOB
);

SELECT * FROM scApplication;

CREATE TABLE scPersonalInformation (
	personalInfoID INT AUTO_INCREMENT PRIMARY KEY,
    scApplicantID VARCHAR(50),
    firstName VARCHAR(255),
    middleName VARCHAR(255),
    lastName VARCHAR(255),
    suffix VARCHAR(255),
    birthdate DATE,
    age INT,
    sex VARCHAR(50),
    civilStatus VARCHAR(50),
    birthplace VARCHAR(255)
);
CREATE TABLE scContactInformation (
	contactInfoID INT AUTO_INCREMENT PRIMARY KEY,
    scApplicantID VARCHAR(50),
    street VARCHAR(255),
    barangay VARCHAR(255),
    municipality VARCHAR(255),
    province VARCHAR(255),
    mobileNumber VARCHAR(255)
);

CREATE TABLE scProfessionalInformation (
	professionalInfoID INT AUTO_INCREMENT PRIMARY KEY,
    scApplicantID VARCHAR(50),
    occupation VARCHAR(255),
    educationalAttainment VARCHAR(255),
    annualIncome VARCHAR(255),
    otherSkills VARCHAR(255)
);

CREATE TABLE scFamilyComposition (
	familyCompositionID INT AUTO_INCREMENT PRIMARY KEY,
    scApplicantID VARCHAR(50),
    firstName VARCHAR(255),
    middleName VARCHAR(255),
    lastName VARCHAR(255),
    suffix VARCHAR(255),
    age INT,
    relationship VARCHAR(255),
    civilStatus VARCHAR(50),
    occupation VARCHAR(255),
    income DECIMAL
);

CREATE TABLE scOscaInformation (
	familyCompositionID INT AUTO_INCREMENT PRIMARY KEY,
    scApplicantID VARCHAR(50),
    associationName VARCHAR(255),
    asOfficer DATE,
    position VARCHAR(255)
);

