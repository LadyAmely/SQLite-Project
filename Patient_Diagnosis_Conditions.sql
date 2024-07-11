SELECT p.FirstName, p.LastName, pc.DiagnosisDate, mc.ConditionName
FROM Patients p
INNER JOIN PatientConditions pc ON p.PatientID = pc.PatientID
INNER JOIN MedicalConditions mc ON pc.ConditionID = mc.ConditionID
UNION ALL
SELECT p.FirstName, p.LastName, 'No Condition' AS ConditionName, 'No Date' AS DiagnosisDate
FROM Patients p
LEFT JOIN PatientConditions pc ON p.PatientID = pc.PatientID
LEFT JOIN MedicalConditions mc ON pc.ConditionID = mc.ConditionID
WHERE mc.ConditionID IS NULL
ORDER BY p.LastName, p.FirstName;
