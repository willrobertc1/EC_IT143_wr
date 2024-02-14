Step 4 - Create an after-update trigger

/
***********************************************************************************
******************************
NAME: After Trigger Solution
PURPOSE: To create an after trigger to update the reults
MODIFICATION LOG:
Ver Date Author Description
----- ---------- -----------
-------------------------------------------------------------------------------
1.0 02/13/2024 WILLIAM  1. Built this script for EC IT440
RUNTIME:
T23:41:15
NOTES:
T23:41:15
***********************************************************************************
*******************************/
-- Q1: How to keep track of who last modified a record?
-- A1: We are going to have to create an updated version which is going to store the user who last modified the record.



CREATE TRIGGER CTUpdated
ON SpiceGirls
AFTER UPDATE
AS
BEGIN
    IF NOT UPDATE(Modified)
    BEGIN
        UPDATE SpiceGirls
        SET Modified = 'WILLIAM'
        FROM SpiceGirls AS c
        JOIN inserted AS i ON c.SpiceGirlID = i.SpiceGirlID
        WHERE c.Modified != 'WILLIAM'; -- Add this condition to prevent recursion
    END;
END;