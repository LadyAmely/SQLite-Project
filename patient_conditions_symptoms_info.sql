SELECT P.FirstName, P.LastName, COALESCE(MC.ConditionName, 'no data') AS ConditionOrSymptomName, COALESCE(PC.DiagnosisDate, 'no data') AS DateOrSeverity
FROM Patients P
LEFT JOIN PatientConditions PC ON P.PatientID = PC.PatientID
LEFT JOIN MedicalConditions MC ON PC.ConditionID = MC.ConditionID

UNION 

SELECT P.FirstName, P.LastName, COALESCE(S.SymptomName, 'no data') AS ConditionOrSymptomName, COALESCE(PS.SymptomDate, 'no data') AS DateOrSeverity
FROM Patients P
LEFT JOIN PatientSymptoms PS ON P.PatientID = PS.PatientID
LEFT JOIN Symptoms S ON PS.SymptomID = S.SymptomID

ORDER BY LastName, FirstName;



