Step 4 - Research and test a solution

https://www.sqlshack.com/substring-patindex-and-charindex-string-functions-in-sql-queries/

https://stackoverflow.com/questions/62710693/extract-part-of-name-with-substring-and-charindex

SELECT 
    ContactName AS FullContatcName,
    SUBSTRING(ContactName, CHARINDEX(' ', ContactName) + 1, LEN(ContactName) - CHARINDEX(' ', ContactName)) AS ContactLastName
FROM 
    dbo.v_w3_schools_customers;