CREATE TRIGGER prevent_medication_deletion
BEFORE DELETE ON Medications
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Cannot delete medication with active prescriptions')
    WHERE EXISTS (SELECT 1 FROM Prescriptions WHERE MedicationID = OLD.MedicationID);
END;
