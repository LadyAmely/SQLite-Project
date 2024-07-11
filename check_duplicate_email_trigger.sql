CREATE TRIGGER check_duplicate_email_before_insert
BEFORE INSERT ON Patients
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'A patient with this email already exists')
    WHERE EXISTS (SELECT 1 FROM Patients WHERE Email = NEW.Email);
END;
