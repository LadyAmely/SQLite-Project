CREATE TRIGGER validate_symptom_before_insert
BEFORE INSERT ON PatientSymptoms
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Symptom not recognized')
    WHERE NOT EXISTS (SELECT 1 FROM Symptoms WHERE SymptomID = NEW.SymptomID);
END;
