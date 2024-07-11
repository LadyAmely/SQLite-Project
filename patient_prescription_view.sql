CREATE VIEW PatientPrescriptionsView AS
SELECT p.FirstName, p.LastName, m.MedicationName, pr.PrescriptionDate, pr.Dosage, pr.Frequency, pr.Duration
FROM Patients p
INNER JOIN Prescriptions pr ON p.PatientID = pr.PatientID
INNER JOIN MedicationRecommendations mr ON p.PatientID = mr.PatientID
INNER JOIN Medications m ON mr.MedicationID = m.MedicationID;