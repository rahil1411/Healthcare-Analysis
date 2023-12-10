USE Healthcare_data
SELECT*FROM healthcare_dataset

--Count the Number of Male and Female Patient

SELECT Gender,COUNT(Gender) AS TotalGender 
FROM healthcare_dataset 
GROUP BY Gender 
Order by TotalGender

-- Count the Number of patient with particular disease 

SELECT Medical_Condition,COUNT(Medical_Condition) AS Total_Patients
FROM healthcare_dataset 
GROUP BY Medical_Condition
ORDER BY COUNT(Medical_Condition) DESC

--Count the Number of Patient with Particular Blood Type

SELECT Blood_Type, COUNT(Blood_Type) AS Patient_Count 
FROM healthcare_dataset 
GROUP BY Blood_Type

-- Seggregate according to Different Age group

SELECT Name,Age,Medical_Condition FROM healthcare_dataset WHERE Age <=30

SELECT Name,Age,Medical_Condition FROM healthcare_dataset WHERE Age >30 AND Age<=50

SELECT COUNT(Name) As Young_Patients FROM healthcare_dataset WHERE Age <=30
SELECT Count(Name) AS Middle_Age_Patients FROM healthcare_dataset WHERE Age >30 AND Age<=50
SELECT COUNT(Name) AS Pre_OldAge_patients FROM healthcare_dataset WHERE Age >50 AND Age<=60
SELECT COUNT(Name) AS OldAge_patients FROM healthcare_dataset WHERE Age>60



SELECT COUNT(Doctor) FROM healthcare_dataset

--How many patients treated in each hospital 

SELECT Hospital,COUNT(Name) As Patients_Treated 
FROM healthcare_dataset
GROUP BY Hospital

-- Count the patients according to the type of Admission

SELECT Admission_Type,COUNT(Admission_Type) AS Emergency_patient 
FROM healthcare_dataset 
GROUP BY Admission_Type

--Count the patients according to the type of Test_results

SELECT Test_Results,COUNT(Test_Results) AS Types_of_Test_Results 
FROM healthcare_dataset 
GROUP BY Test_Results

--Count the Number of patients who use particular Insurance

SELECT Insurance_Provider, COUNT(Name) AS Insurance_User FROM healthcare_dataset GROUP BY Insurance_Provider

-- Count the Patients in Particular Year

SELECT YEAR(Date_of_Admission) AS Year_of_Record,COUNT(Name) AS No_of_patient 
FROM healthcare_dataset
GROUP BY YEAR(Date_of_Admission)

--Number of Distinct Hospital 

SELECT COUNT(DISTINCT(Hospital)) FROM healthcare_dataset

-- Get the Round Figure Bill Amount

SELECT Name, ROUND(Billing_Amount,0) AS BillingAmount  FROM healthcare_dataset

-- Year Wise Billing Ammount

SELECT YEAR(Date_of_Admission) AS Year_of_Record,SUM(ROUND(Billing_Amount,0)) AS TotalBill 
FROM healthcare_dataset
GROUP BY YEAR(Date_of_Admission)

-- Which disease treatment cost the most

SELECT Medical_Condition,SUM(ROUND(Billing_Amount,0)) AS TotalBill 
FROM healthcare_dataset
GROUP BY Medical_Condition
Order BY TotalBill DESC

--Records of Patients in Months

SELECT MONTH(Date_of_Admission) AS Months_of_Record,COUNT(Name) AS No_of_patient 
FROM healthcare_dataset
GROUP BY MONTH(Date_of_Admission)
ORDER BY MONTH(Date_of_Admission)


SELECT DISTINCT(Blood_Type),COUNT(Medical_Condition) AS Cancer_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Cancer' GROUP BY Blood_Type
SELECT DISTINCT(Blood_Type),COUNT(Medical_Condition) AS Diabetes_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Diabetes' GROUP BY Blood_Type
SELECT DISTINCT(Blood_Type),COUNT(Medical_Condition) AS Arthritis_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Arthritis' GROUP BY Blood_Type
SELECT DISTINCT(Blood_Type),COUNT(Medical_Condition) AS Asthma_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Asthma' GROUP BY Blood_Type
SELECT DISTINCT(Blood_Type),COUNT(Medical_Condition) AS Hypertension_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Hypertension' GROUP BY Blood_Type
SELECT DISTINCT(Blood_Type),COUNT(Medical_Condition) AS Obesity_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Obesity' GROUP BY Blood_Type

SELECT DISTINCT(Medical_Condition) FROM healthcare_dataset


SELECT Gender,COUNT(Medical_Condition) AS Cancer_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Cancer' GROUP BY Gender
SELECT Gender,COUNT(Medical_Condition) AS Diabetes_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Diabetes' GROUP BY Gender
SELECT Gender,COUNT(Medical_Condition) AS Arthritis_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Arthritis' GROUP BY Gender
SELECT Gender,COUNT(Medical_Condition) AS Asthma_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Asthma' GROUP BY Gender
SELECT Gender,COUNT(Medical_Condition) AS Hypertension_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Hypertension' GROUP BY Gender
SELECT Gender,COUNT(Medical_Condition) AS Obesity_Patient FROM healthcare_dataset WHERE Medical_Condition = 'Obesity' GROUP BY Gender

