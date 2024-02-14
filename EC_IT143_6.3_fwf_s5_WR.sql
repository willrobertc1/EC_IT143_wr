Step 5 - Create a user-defined scalar function

https://www.ibm.com/docs/en/db2/10.5?topic=functions-creating-sql-scalar

CREATE FUNCTION InitialName(@FullName NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @FirstName NVARCHAR(MAX);
    SET @FirstName = LEFT(@FullName, CHARINDEX(' ', @FullName + ' ') - 1);
    RETURN @FirstName;
END;
