Step 7 - Perform a "0 results expected" test

WITH LastNameTest AS (
    SELECT 
        ContactName,
        dbo.ReturnTheLastName(ContactName) AS ExtractedLastName
    FROM 
        dbo.v_w3_schools_customers
)

SELECT 
    ContactName,
    ExtractedLastName
FROM 
    LastNameTest
WHERE 
    ExtractedLastName =  NULL;
