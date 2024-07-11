SELECT p.FirstName, p.LastName, mc.ConditionName, m.MedicationName
FROM Patients p
INNER JOIN PatientConditions pc ON p.PatientID = pc.PatientID
INNER JOIN MedicalConditions mc ON pc.ConditionID = mc.ConditionID
INNER JOIN Prescriptions pr ON p.PatientID = pr.PatientID
INNER JOIN Medications m ON pr.MedicationID = m.MedicationID
UNION ALL
SELECT p.FirstName, p.LastName, 'no condition' AS ConditionName, 'no medication' AS MedicationName
FROM Patients p
LEFT JOIN PatientConditions pc ON p.PatientID = pc.PatientID
LEFT JOIN MedicalConditions mc ON pc.ConditionID = mc.ConditionID
LEFT JOIN Prescriptions pr ON p.PatientID = pr.PatientID
LEFT JOIN Medications m ON pr.MedicationID = m.MedicationID
ORDER BY p.FirstName, p.LastName;