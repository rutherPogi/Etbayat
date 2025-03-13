USE test;

-- Insert into SurveyResponses
INSERT INTO SurveyResponses (surveyID, respondent, interviewer, surveyDate, barangay, municipality, monthlyIncome, irregularIncome, familyIncome)
VALUES 
(100001, 'Juan Dela Cruz', 'Maria Santos', '2025-02-01', 'Barangay A', 'Municipality X', 10000.00, 2000.00, 12000.00),
(100002, 'Ana Reyes', 'Jose Ramirez', '2025-02-02', 'Barangay B', 'Municipality Y', 15000.00, 3000.00, 18000.00),
(100003, 'Pedro Mendoza', 'Liza Dizon', '2025-02-03', 'Barangay C', 'Municipality Z', 12000.00, 2500.00, 14500.00),
(100004, 'Maria Lopez', 'Mark Villanueva', '2025-02-04', 'Barangay D', 'Municipality X', 8000.00, 1500.00, 9500.00),
(100005, 'Josefa Santos', 'Carlos Mendoza', '2025-02-05', 'Barangay E', 'Municipality Y', 9500.00, 1800.00, 11300.00);

-- Insert into FamilyProfile (Multiple rows per surveyID)
INSERT INTO FamilyProfile (surveyID, firstName, middleName, lastName, suffix, birthdate, age, civilStatus, relationToFamilyHead, educationalAttainment, occupation, skillsTraining, employmentType, philhealthNumber, monthlyIncome, healthStatus, remarks)
VALUES 
(100001, 'Carlos', 'Santos', 'Dela Cruz', '', '1980-05-12', 44, 'Married', 'Head', 'College Graduate', 'Teacher', 'First Aid', 'Employed', 'PH123456', 10000.00, 'Healthy', ''),
(100002, 'Luis', 'Reyes', 'Gomez', '', '1990-03-15', 35, 'Single', 'Head', 'Vocational Graduate', 'Electrician', 'Wiring Installation', 'Self-Employed', 'PH789123', 15000.00, 'Healthy', ''),
(100003, 'Miguel', 'Torres', 'Mendoza', '', '1975-07-25', 49, 'Married', 'Head', 'High School Graduate', 'Farmer', 'Organic Farming', 'Self-Employed', '', 12000.00, 'Healthy', ''),
(100004, 'Rosa', 'Gomez', 'Lopez', '', '1982-09-10', 42, 'Married', 'Head', 'Elementary Graduate', 'Vendor', 'Cooking', 'Self-Employed', '', 8000.00, 'Healthy', ''),
(100005, 'Esteban', 'Santos', 'Cruz', '', '1995-04-05', 29, 'Single', 'Head', 'College Graduate', 'IT Technician', 'Web Development', 'Employed', 'PH456789', 9500.00, 'Healthy', ''),
(100001, 'Maria', 'Santos', 'Dela Cruz', '', '1982-08-20', 42, 'Married', 'Wife', 'College Graduate', 'Nurse', 'Basic Life Support', 'Employed', 'PH654321', 12000.00, 'Healthy', ''),
(100001, 'Juan', 'Santos', 'Dela Cruz', 'Jr.', '2010-09-10', 14, 'Single', 'Son', 'High School', 'Student', NULL, 'Dependent', NULL, 0.00, 'Healthy', ''),
(100002, 'Lucia', 'Garcia', 'Reyes', '', '1988-11-25', 36, 'Married', 'Wife', 'High School Graduate', 'Housewife', 'Cooking', 'Unemployed', NULL, 0.00, 'Healthy', ''),
(100002, 'Miguel', 'Reyes', 'Gomez', '', '2012-06-18', 12, 'Single', 'Son', 'Elementary', 'Student', NULL, 'Dependent', NULL, 0.00, 'Healthy', ''),
(100003, 'Elena', 'Torres', 'Mendoza', '', '1978-04-08', 46, 'Married', 'Wife', 'College Graduate', 'Business Owner', 'Entrepreneurship', 'Self-Employed', 'PH998877', 15000.00, 'Healthy', '');

-- Insert into Expenses (Multiple rows per surveyID)
INSERT INTO Expenses (surveyID, expenses, expensesType, amount)
VALUES 
(100001, 'Food', 'Necessity', 5000.00),
(100001, 'Electricity', 'Utility', 1200.00),
(100002, 'Water', 'Utility', 1000.00),
(100003, 'Transportation', 'Miscellaneous', 1500.00),
(100004, 'Healthcare', 'Necessity', 2000.00),
(100005, 'Internet', 'Utility', 800.00);

-- Insert into HouseInformation (One row per surveyID)
INSERT INTO HouseInformation (surveyID, houseCondition, houseStructure)
VALUES 
(100001, 'Good', 'Concrete'),
(100002, 'Fair', 'Wood'),
(100003, 'Poor', 'Bamboo'),
(100004, 'Good', 'Mixed'),
(100005, 'Fair', 'Concrete');

-- Insert into WaterInformation (One row per surveyID)
INSERT INTO WaterInformation (surveyID, waterAccess, potableWater, waterSources)
VALUES 
(100001, 'Yes', 'Yes', 'Deep Well'),
(100002, 'Yes', 'No', 'Spring'),
(100003, 'No', 'No', 'Rainwater'),
(100004, 'Yes', 'Yes', 'Water District'),
(100005, 'No', 'Yes', 'Bottled Water');

-- Insert into Livestock (Multiple rows per surveyID)
INSERT INTO Livestock (surveyID, livestock, totalNumber, own, dispersal)
VALUES 
(100001, 'Chicken', 10, 8, 2),
(100002, 'Pig', 3, 3, 0),
(100003, 'Goat', 5, 4, 1),
(100004, 'Duck', 8, 6, 2),
(100005, 'Cow', 2, 2, 0),
(100001, 'Goat', 6, 5, 1),
(100001, 'Pig', 4, 4, 0),
(100002, 'Chicken', 15, 12, 3),
(100002, 'Duck', 7, 5, 2),
(100003, 'Carabao', 2, 2, 0),
(100003, 'Pig', 3, 3, 0),
(100004, 'Chicken', 10, 8, 2),
(100004, 'Goat', 4, 3, 1),
(100005, 'Duck', 5, 4, 1),
(100005, 'Pig', 6, 6, 0);

-- Insert into CropsPlanted (Multiple rows per surveyID)
INSERT INTO CropsPlanted (surveyID, crops, size)
VALUES 
(100001, 'Rice', 2),
(100002, 'Vegetables', 1),
(100003, 'Corn', 3),
(100004, 'Cassava', 4),
(100005, 'Sweet Potato', 2);

-- Insert into FruitBearingTree (Multiple rows per surveyID)
INSERT INTO FruitBearingTree (surveyID, tree, totalNumber)
VALUES 
(100001, 'Mango', 5),
(100002, 'Banana', 10),
(100003, 'Coconut', 15),
(100004, 'Guava', 6),
(100005, 'Papaya', 8),
(100001, 'Coconut', 8),
(100001, 'Guava', 5),
(100002, 'Mango', 4),
(100002, 'Papaya', 6),
(100003, 'Avocado', 3),
(100003, 'Banana', 12),
(100004, 'Jackfruit', 2),
(100004, 'Lanzones', 3),
(100005, 'Guava', 6),
(100005, 'Santol', 4);

-- Insert into FamilyResources (Multiple rows per surveyID)
INSERT INTO FamilyResources (surveyID, resources, amount)
VALUES 
(100001, 'Savings', 5000.00),
(100002, 'Remittances', 7000.00),
(100003, 'Pension', 9000.00),
(100004, 'Side Business', 4000.00),
(100005, 'Freelancing', 3000.00),
(100001, 'Agriculture', 12000.00),
(100001, 'Small Business', 8000.00),
(100002, 'Fisheries', 6000.00),
(100002, 'Remittances', 10000.00),
(100003, 'Livestock Sales', 5000.00),
(100003, 'Farm Produce', 9000.00),
(100004, 'Handicrafts', 3000.00),
(100004, 'Side Job', 4000.00),
(100005, 'Pension', 7000.00),
(100005, 'Freelancing', 5000.00);

-- Insert into AppliancesOwn (Multiple rows per surveyID)
INSERT INTO AppliancesOwn (surveyID, appliances, totalAppliances)
VALUES 
(100001, 'Television', 1),
(100002, 'Washing Machine', 1),
(100003, 'Radio', 2),
(100004, 'Refrigerator', 1),
(100005, 'Laptop', 1),
(100001, 'Electric Fan', 2),
(100001, 'Rice Cooker', 1),
(100002, 'Gas Stove', 1),
(100002, 'Blender', 1),
(100003, 'Microwave', 1),
(100003, 'Electric Kettle', 1),
(100004, 'Smartphone', 3),
(100004, 'Speakers', 1),
(100005, 'Computer', 1),
(100005, 'Air Conditioner', 1);

-- Insert into Amenities (Multiple rows per surveyID)
INSERT INTO Amenities (surveyID, amenities, totalAmenities)
VALUES 
(100001, 'Toilet', 1),
(100002, 'Electricity', 1),
(100003, 'Solar Power', 1),
(100004, 'Internet Connection', 1),
(100005, 'Cable TV', 1),
(100001, 'Bathroom', 1),
(100001, 'Garden', 1),
(100002, 'Well Water', 1),
(100002, 'Backup Generator', 1),
(100003, 'Solar Panel', 1),
(100003, 'Septic Tank', 1),
(100004, 'Play Area', 1),
(100004, 'Kitchen Sink', 1),
(100005, 'CCTV', 2),
(100005, 'Bicycle Rack', 1);

-- Insert into CommunityIssues (One row per surveyID)
INSERT INTO CommunityIssues (surveyID, issues)
VALUES 
(100001, 'Lack of clean water'),
(100002, 'Unemployment'),
(100003, 'Limited healthcare access'),
(100004, 'Lack of public transport'),
(100005, 'Poor road conditions');

-- Insert more ServiceAvailed data (Multiple rows per surveyID)
INSERT INTO ServiceAvailed (surveyID, dateServiceAvailed, ngoName, serviceAvailed, maleServed, femaleServed, totalServed, howServiceHelp)
VALUES 
(100001, '2024-01-15', 'Red Cross', 'Medical Mission', 5, 8, 13, 'Provided free check-ups and medicines'),
(100001, '2024-02-20', 'DSWD', 'Financial Assistance', 2, 3, 5, 'Helped with daily expenses'),
(100002, '2023-12-10', 'World Vision', 'Livelihood Training', 3, 4, 7, 'Taught sewing and crafting skills'),
(100002, '2024-01-05', 'LGU Support', 'Food Assistance', 10, 12, 22, 'Distributed food packs to families'),
(100003, '2023-11-18', 'UNICEF', 'Education Support', 7, 9, 16, 'Provided school materials and books'),
(100003, '2024-02-28', 'Local Health Office', 'Vaccination Program', 4, 6, 10, 'Administered flu vaccines'),
(100004, '2023-10-22', 'TESDA', 'Skills Training', 6, 5, 11, 'Training in carpentry and welding'),
(100004, '2024-01-15', 'Barangay Health Unit', 'Dental Checkup', 3, 2, 5, 'Provided free dental cleaning'),
(100005, '2023-09-14', 'Non-Profit Org', 'Microfinance Loan', 2, 2, 4, 'Offered small business loans'),
(100005, '2024-02-10', 'Red Cross', 'Blood Donation', 5, 6, 11, 'Collected and supplied blood to hospitals');


-- Insert into GovernmentAffiliation (Multiple rows per surveyID)
INSERT INTO GovernmentAffiliation (surveyID, nameAffiliated, asOfficer, asMember, organizationName)
VALUES 
(100001, 'Barangay Council', '2023-01-10', NULL, 'Barangay A'),
(100002, 'Farmers Association', NULL, '2022-08-15', 'Local Farmers Group'),
(100003, 'Senior Citizens Club', NULL, '2020-10-12', 'Elderly Welfare'),
(100004, 'Women’s Cooperative', NULL, '2021-06-18', 'Barangay Women’s Group'),
(100005, 'Youth Organization', '2024-02-05', NULL, 'Local Youth Association');

-- Insert into NonIvatan (Multiple rows per surveyID)
INSERT INTO NonIvatan (surveyID, ipulaName, settlementDetails, ethnicity, placeOfOrigin, isTransient, houseOwner, isRegistered, dateRegistered)
VALUES 
(100001, 'Juan Perez', 'Settled for 5 years', 'Tagalog', 'Manila', 'No', 'Self-owned', 'Yes', '2020-06-15'),
(100002, 'Maria Gonzales', 'New Migrant', 'Ilocano', 'Pangasinan', 'Yes', 'Relative-owned', 'No', NULL),
(100003, 'Antonio Cruz', 'Temporary Worker', 'Bicolano', 'Legazpi', 'Yes', 'Rental', 'No', NULL),
(100004, 'Jose Ramirez', 'Permanent Resident', 'Kapampangan', 'Pampanga', 'No', 'Self-owned', 'Yes', '2018-11-22'),
(100005, 'Anna Mendoza', 'Seasonal Worker', 'Waray', 'Samar', 'Yes', 'Employer-owned', 'No', NULL);
