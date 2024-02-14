Step 3 - Create an Ad Hoc SQL query

SELECT 
    LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS InitialName
FROM 
    dbo.v_w3_schools_customers;
