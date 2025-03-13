USE test;

CREATE TABLE pwdApplication (
	pwdApplicantID VARCHAR(50) PRIMARY KEY,
    dateApplied DATE,
    photoImage LONGBLOB,
    reportingUnit VARCHAR(255),
    controlNumber VARCHAR(255)
);

CREATE TABLE pwdPersonalInformation (
	personalInfoID INT AUTO_INCREMENT PRIMARY KEY,
    pwdApplicantID VARCHAR(50),
    firstName VARCHAR(255),
    middleName VARCHAR(255),
    lastName VARCHAR(255),
    suffix VARCHAR(255),
    civilStatus VARCHAR(50),
    pwdNumber VARCHAR(255)
);

CREATE TABLE pwdDisabilityInformation (
	disabilityInfoID INT AUTO_INCREMENT PRIMARY KEY,
    pwdApplicantID VARCHAR(50),
    disabilityType VARCHAR(255),
    disabilityCause VARCHAR(255)
);

CREATE TABLE pwdContactInformation (
	contactInfoID INT AUTO_INCREMENT PRIMARY KEY,
    pwdApplicantID VARCHAR(50),
    street VARCHAR(255),
    barangay VARCHAR(100),
    municipality VARCHAR(100),
    province VARCHAR(100),
    region VARCHAR(100),
    landlineNumber VARCHAR(100),
    mobileNumber VARCHAR(100),
    emailAddress VARCHAR(100)
);

CREATE TABLE pwdProfessionalInformation (
	professionalInfoID INT AUTO_INCREMENT PRIMARY KEY,
    pwdApplicantID VARCHAR(50),
    educationalAttainment VARCHAR(255),
    employmentStatus VARCHAR(255),
    employmentCategory VARCHAR(255),
    employmentTypes VARCHAR(255),
    occupation VARCHAR(255)
);

CREATE TABLE pwdOrganizationInformation (
	organizationInfoID INT AUTO_INCREMENT PRIMARY KEY,
    pwdApplicantID VARCHAR(50),
    organizationAffiliated VARCHAR(255),
    contactPerson VARCHAR(255),
    officeAddress VARCHAR(255),
    telephoneNumber VARCHAR(100)
);

CREATE TABLE pwdIDReferenceNumber (
	referenceNumberID INT AUTO_INCREMENT PRIMARY KEY,
    pwdApplicantID VARCHAR(50),
    sssNumber VARCHAR(255),
    gsisNumber VARCHAR(255),
    pagibigNumber VARCHAR(255),
    psnNumber VARCHAR(255),
    philhealthNumber VARCHAR(255)
);

CREATE TABLE pwdFamilyBackground (
	familyBackgroundID INT AUTO_INCREMENT PRIMARY KEY,
    pwdApplicantID VARCHAR(50),
    fatherFirstName VARCHAR (255), 
    fatherMiddleName VARCHAR (255), 
    fatherLastName VARCHAR (255), 
    fatherSuffix VARCHAR (255),
    motherFirstName VARCHAR (255), 
    motherMiddleName VARCHAR (255), 
    motherLastName VARCHAR (255),
    guardianFirstName VARCHAR (255), 
    guardianMiddleName VARCHAR (255), 
    guardianLastName VARCHAR (255), 
    guardianSuffix VARCHAR (255)
);

CREATE TABLE pwdAccomplishedBy (
	accomplishedByID INT AUTO_INCREMENT PRIMARY KEY,
    pwdApplicantID VARCHAR(50),
    applicantFirstName VARCHAR (255), 
    applicantMiddleName VARCHAR (255), 
    applicantLastName VARCHAR (255), 
    applicantSuffix VARCHAR (255),
    repFirstName VARCHAR (255), 
    repMiddleName VARCHAR (255), 
    repLastName VARCHAR (255), 
    repSuffix VARCHAR (255),
    guardianFirstName VARCHAR (255), 
    guardianMiddleName VARCHAR (255), 
    guardianLastName VARCHAR (255), 
    guardianSuffix VARCHAR (255)
);

CREATE TABLE pwdOtherInformation (
	otherInfoID INT AUTO_INCREMENT PRIMARY KEY,
    pwdApplicantID VARCHAR(50),
    cpFirstName VARCHAR (255), 
    cpMiddleName VARCHAR (255), 
    cpLastName VARCHAR (255), 
    cpSuffix VARCHAR (255),
    license VARCHAR(255),
    poFirstName VARCHAR (255), 
    poMiddleName VARCHAR (255), 
    poLastName VARCHAR (255), 
    poSuffix VARCHAR (255),
    aoFirstName VARCHAR (255), 
    aoMiddleName VARCHAR (255), 
    aoLastName VARCHAR (255), 
    aoSuffix VARCHAR (255),
    eFirstName VARCHAR (255), 
    eMiddleName VARCHAR (255), 
    eLastName VARCHAR (255), 
    eSuffix VARCHAR (255)
);





