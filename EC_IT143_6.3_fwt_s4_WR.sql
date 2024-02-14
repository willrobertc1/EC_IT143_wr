Step 4 - Create an after-update trigger

CREATE TRIGGER TriggerCreatedANDUpdated
ON SpiceGirls
AFTER UPDATE
AS
BEGIN
    UPDATE SpiceGirls
    SET lm = GETDATE()
    FROM SpiceGirls AS c
    JOIN inserted AS i ON c.SpiceGirlID = i.SpiceGirlID;
END;