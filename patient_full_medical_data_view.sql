CREATE VIEW PatientFullMedicalDataView AS
SELECT p.FirstName, p.LastName, mc.ConditionName, a.AllergyName, m.MedicationName, s.SymptomName
FROM Patients p
INNER JOIN PatientConditions pc ON p.PatientID = pc.PatientID
INNER JOIN MedicalConditions mc ON pc.ConditionID = mc.ConditionID
INNER JOIN PatientSymptoms ps ON p.PatientID = ps.PatientID
INNER JOIN Symptoms s ON ps.SymptomID = s.SymptomID
INNER JOIN Prescriptions pr ON p.PatientID = pr.PatientID
INNER JOIN Medications m ON pr.MedicationID = m.MedicationID
INNER JOIN Allergies a ON p.PatientID = a.PatientID;
