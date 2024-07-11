
CREATE TRIGGER delete_patient 
BEFORE DELETE ON Patients
FOR EACH ROW
BEGIN
	DELETE FROM PatientConditions WHERE PatientID = OLD.PatientID;
	DELETE FROM PatientSymptoms WHERE PatientID = OLD.PatientID;
	DELETE FROM Allergies WHERE PatientID = OLD.PatientID;
	DELETE FROM Prescriptions WHERE PatientID = OLD.PatientID;
	DELETE FROM MedicationRecommendations WHERE PatientID = OLD.PatientID;
END;

