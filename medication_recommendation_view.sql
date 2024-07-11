CREATE VIEW MedicationRecommendationsView AS
SELECT p.FirstName, p.LastName, mc.ConditionName, m.MedicationName, mr.Recommendation, mr.Rationale
FROM Patients p
LEFT JOIN PatientConditions pc ON p.PatientID = pc.PatientID
LEFT JOIN MedicalConditions mc ON pc.ConditionID = mc.ConditionID
LEFT JOIN Prescriptions pr ON p.PatientID = pr.PatientID
LEFT JOIN Medications m ON pr.MedicationID = m.MedicationID
LEFT JOIN MedicationRecommendations mr ON p.PatientID = mr.PatientID;