CREATE TABLE Patient (Patient_ID Varchar(25) PRIMARY KEY, Aadhar_No Varchar(10) NOT NULL, Full_Name Varchar(25), Address Varchar(100), Gender Varchar(2), Age number(3), Blood_Group Varchar(2), Phone_Number Number(12));
CREATE TABLE Doctor (Doctor_ID Varchar (25) PRIMARY KEY, Full_Name_Doc Varchar(25), Primary_Phone_Number Number(12), Years_of_Experience Number(2), Speciality Varchar(10));
CREATE TABLE Appointment(Appointment_Number Number(10) PRIMARY KEY, Date_of_appointment Date, Time_of_appointment Varchar(10), Doctor_ID Varchar(25) FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID));
CREATE TABLE Pharmacy (Pharmacy_ID Varchar(25) PRIMARY KEY, Pharmacy_Name Varchar(15) NOT NULL, Pharmacy_Address Varchar (100));
CREATE TABLE Drugs (Med_Number Number (15) PRIMARY KEY, Trade_Name Varchar(25), Cost Number (15), MFG_Date Date, Expiry_Date DATE);
CREATE TABLE Pharmacy_Inventory(Pharmacy_ID Varchar(25), Med_Number Number(15), Quantity Number(15), FOREIGN KEY (Pharmacy_ID) REFERENCES Pharmacy(Pharmacy_ID), FOREIGN KEY(Med_Number)REFERENCES Drugs(Med_Number));
CREATE TABLE Insuarance (Insuarance_ID Varchar (25) PRIMARY KEY, Patient_ID Varchar(25), Max_Claim_Amt Number(10), Claim_History Varchar(25), FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)); -- history = null/yes/2/3 etc
CREATE TABLE Bill (Bill_Number Varchar(25) PRIMARY KEY, Bill_Date DATE, Patient_ID Varchar(25), FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID));
CREATE TABLE Bill_Amount (Bill_Number Varchar(25), Medical_Charges Number(10), Room_Charges Number(10), Medicine_Charges Number(10), Lab_Charges Number(10), Doctor_fee Number(15),FOREIGN KEY (Bill_Number) REFERENCES Bill(Bill_Number));
commit;
