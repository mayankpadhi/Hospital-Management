drop schema hospManage cascade;
create schema hospManage;
SET search_path TO hospManage;

create table Employee(
	EID int primary key,
	EName varchar NOT NULL,
	DOB Date NOT NULL,
	DOJ Date NOT NULL,
	Salary int NOT NULL,
	Qualification varchar NOT NULL
);

create table Contact(
	EID int primary key,
	Contact varchar,
	FOREIGN KEY(EID) references Employee(EID)
);

create table Doctor_Type(
	D_type varchar primary key, 
	Fee int NOT NULL
);

create table Ward(
	Ward_Capacity int NOT NULL,
	Ward_Number int primary key,
	Charges int NOT NULL
);

create table Patient(
	patient_Type varchar NOT NULL,
	P_Name varchar NOT NULL,
	Ward_No int NOT NULL,
	Gender char NOT NULL,
	Admit_From Date,
	Admit_To Date,
	PID int primary key,
	Age int NOT NULL,
	FOREIGN KEY(Ward_No) references Ward(Ward_Number)
);

create table Operations_Advisory(
	Ops_Date Date,
	PID int NOT NULL,
	OID int NOT NULL,
	Operations_AdvisoryID int primary key,
	FOREIGN KEY(PID) references Patient(PID)
);

create table Doctor(
	EID int NOT NULL,
	DID int primary key,
	D_type varchar,
	Operation_AdvisoryID int NOT NULL,
	FOREIGN KEY(EID) references Employee(EID),
	FOREIGN KEY(D_type) references Doctor_Type(D_type),
	FOREIGN KEY(Operation_AdvisoryID) references Operations_Advisory(Operations_AdvisoryID)
);

create table Appointment(
	Appointment_No int primary key,
	Appointment_Date Date NOT NULL
);

create table Appointment_with(
	Appointment_No int primary key,
	DID int NOT NULL,
	FOREIGN KEY(DID) references Doctor(DID),
	FOREIGN KEY(Appointment_No) references Appointment(Appointment_No)
);

create table Treated_By(
	PID int,
	DID int,
	FOREIGN KEY(DID) references Doctor(DID),
	FOREIGN KEY(PID) references Patient(PID),
	PRIMARY KEY(PID, DID)
);

create table Available_Medicine(
	Medicine_ID int primary key,
	M_Rate int NOT NULL,
	M_Name varchar NOT NULL
);

create table Available_Test(
	T_ID int primary key,
	T_Rate int NOT NULL,
	T_Name varchar NOT NULL
);

create table Available_Operation(
	OP_ID int primary key,
	OP_Rate int NOT NULL,
	OP_Name varchar NOT NULL
);

create table Test_Advisory(
	Test_Date Date NOT NULL unique,
	PID int NOT NULL,
	DID int NOT NULL,
	TID int NOT NULL,
	Test_Report varchar NOT NULL,
	FOREIGN KEY(DID) references Doctor(DID),
	FOREIGN KEY(PID) references Patient(PID),
	FOREIGN KEY(TID) references Available_Test(T_ID),
	PRIMARY KEY(Test_Date, PID, TID)
);

create table Medicine_Advisory(
	Med_Qty int,
	PID int NOT NULL,
	DID int NOT NULL,
	Med_ID int NOT NULL,
	Prescription_Date DATE NOT NULL unique,
	FOREIGN KEY(PID) references Patient(PID),
	FOREIGN KEY(DID) references Doctor(DID),
	FOREIGN KEY(Med_ID) references Available_Medicine(Medicine_ID),
	PRIMARY KEY(PID, Med_ID, Prescription_Date)
);

create table Visitor(
	Stay_From Date NOT NULL,
	Stay_To Date NOT NULL,
	Visitor_Name varchar NOT NULL,
	VisitorID int primary key
);

create table to_meet(
	VisitorID int,
	PID int NOT NULL,
	FOREIGN KEY(PID) references Patient(PID),
	FOREIGN KEY(VisitorID) references Visitor(VisitorID),
	PRIMARY KEY(PID, VisitorID)
);

create table Reports(
	Remarks varchar,
	Report_date Date,
	DID int NOT NULL,
	PID int NOT NULL,
	Operation_AdvisoryID int,
	FOREIGN KEY(PID) references Patient(PID),
	FOREIGN KEY(DID) references Doctor(DID),
	FOREIGN KEY(Operation_AdvisoryID) references Operations_Advisory(Operations_AdvisoryID),
	PRIMARY KEY(Report_date, DID, PID)
);

create table Bill(
	Bill_No int primary key,
	Bill_Date Date NOT NULL,
	Amount int NOT NULL
);

create table Test_Bill(
	Test_Date Date NOT NULL,
	PID int NOT NULL,
	Test_Amount int NOT NULL,
	Bill_No int NOT NULL,
	FOREIGN KEY(Test_Date) references Test_Advisory(Test_Date),
	FOREIGN KEY(Bill_No) references Bill(Bill_No)
);

create table Medicine_Bill(
	Prescription_Date Date NOT NULL,
	PID int NOT NULL,
	Medicine_Amount int NOT NULL,
	Bill_No int NOT NULL,
	FOREIGN KEY(Bill_No) references Bill(Bill_No),
	FOREIGN KEY(Prescription_Date) references Medicine_Advisory(Prescription_Date),
	PRIMARY KEY(Prescription_Date, PID)
);

create table Operation_Bill(
	Operation_Bill_Date Date NOT NULL,
	Operation_AdvisoryID int NOT NULL,
	PID int NOT NULL,
	Bill_No int NOT NULL,
	FOREIGN KEY(Operation_AdvisoryID) references Operations_Advisory(Operations_AdvisoryID),
	FOREIGN KEY(Bill_No) references Bill(Bill_No),
	PRIMARY KEY(Operation_AdvisoryID)
);

create table Stay_Charges(
	PID int NOT NULL,
	Stay_Charge int NOT NULL,
	Ward_No int NOT NULL,
	Bill_No int NOT NULL,
	FOREIGN KEY(Bill_No) references Bill(Bill_No)
);
