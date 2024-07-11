SELECT p.FirstName, p.LastName, mc.ConditionName, s.SymptomName, m.MedicationName, mr.Recommendation
FROM Patients p
JOIN PatientConditions pc ON p.PatientID = pc.PatientID
JOIN MedicalConditions mc ON pc.ConditionID = mc.ConditionID
JOIN PatientSymptoms ps ON p.PatientID = ps.PatientID
JOIN Symptoms s ON ps.SymptomID = s.SymptomID
JOIN MedicationRecommendations mr ON p.PatientID = mr.PatientID AND pc.ConditionID = mr.ConditionID
JOIN Medications m ON mr.MedicationID = m.MedicationID;

