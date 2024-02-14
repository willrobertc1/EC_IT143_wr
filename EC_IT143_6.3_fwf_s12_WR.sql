Step 5 - Create a user-defined scalar function

CREATE FUNCTION dbo.ReturnTheLastName
(
    @FullName NVARCHAR(150)
)
RETURNS NVARCHAR(150)
AS
BEGIN
    DECLARE @LastName NVARCHAR(150);
    DECLARE @LastSpaceIndex INT;

    SET @LastSpaceIndex = LEN(@FullName) - CHARINDEX(' ', REVERSE(@FullName)) + 2;
    SET @LastName = SUBSTRING(@FullName, @LastSpaceIndex, LEN(@FullName) - @LastSpaceIndex + 1);

    RETURN @LastName;
END;