Step 7 - Perform a "0 results expected" test

WITH SchoolCustomers AS (
    -- Selecting all records from the table
    SELECT [column1]
    FROM [dbo].[dbo.v_w3_schools_customers]
)


SELECT [column1]
FROM SchoolCustomers
WHERE 1 = 0; 