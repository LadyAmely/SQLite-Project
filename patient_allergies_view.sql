CREATE VIEW PatientAllergiesView AS
SELECT p.FirstName, p.LastName, a.AllergyName, a.Reaction
FROM Patients as p
JOIN Allergies a ON  p.PatientID = a.PatientID;
