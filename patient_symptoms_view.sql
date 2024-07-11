CREATE VIEW PatientSymptomsView AS
SELECT p.FirstName, p.LastName, s.SymptomName, ps.SymptomDate, ps.Severity
FROM Patients p
JOIN PatientSymptoms ps ON p.PatientID = ps.PatientID
JOIN Symptoms s ON ps.SymptomID = s.SymptomID;

