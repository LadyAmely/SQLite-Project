CREATE TABLE MedicationRecommendations (
    RecommendationID INTEGER PRIMARY KEY AUTOINCREMENT,
    PatientID INTEGER,
    ConditionID INTEGER,
    MedicationID INTEGER,
    Recommendation TEXT,
    Rationale TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ConditionID) REFERENCES MedicalConditions(ConditionID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

CREATE TABLE Allergies (
    AllergyID INTEGER PRIMARY KEY AUTOINCREMENT,
    PatientID INTEGER,
    AllergyName TEXT,
    Reaction TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

CREATE TABLE PatientConditions (
    PatientConditionID INTEGER PRIMARY KEY AUTOINCREMENT,
    PatientID INTEGER,
    ConditionID INTEGER,
    DiagnosisDate TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (ConditionID) REFERENCES MedicalConditions(ConditionID)
);

CREATE TABLE MedicalConditions (
    ConditionID INTEGER PRIMARY KEY AUTOINCREMENT,
    ConditionName TEXT,
    Description TEXT
);

CREATE TABLE Prescriptions (
    PrescriptionID INTEGER PRIMARY KEY AUTOINCREMENT,
    PatientID INTEGER,
    MedicationID INTEGER,
    PrescriptionDate TEXT,
    Dosage TEXT,
    Frequency TEXT,
    Duration TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

CREATE TABLE Medications (
    MedicationID INTEGER PRIMARY KEY AUTOINCREMENT,
    MedicationName TEXT,
    Description TEXT,
    Manufacturer TEXT,
    DosageForm TEXT,
    Strength TEXT
);

CREATE TABLE Patients (
    PatientID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT,
    LastName TEXT,
    DateOfBirth TEXT,
    Gender TEXT,
    Address TEXT,
    PhoneNumber TEXT,
    Email TEXT
);

CREATE TABLE Symptoms (
    SymptomID INTEGER PRIMARY KEY AUTOINCREMENT,
    SymptomName TEXT,
    Description TEXT
);

CREATE TABLE PatientSymptoms (
    PatientSymptomID INTEGER PRIMARY KEY AUTOINCREMENT,
    PatientID INTEGER,
    SymptomID INTEGER,
    SymptomDate TEXT,
    Severity TEXT,
    Notes TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (SymptomID) REFERENCES Symptoms(SymptomID)
);




