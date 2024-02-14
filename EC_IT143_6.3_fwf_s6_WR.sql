Step 6 - Compare udf results to ad hoc query results


SELECT 
    ContactName,
    dbo.InitialName(ContactName) AS InitialNameFromUDF
FROM 
    dbo.v_w3_schools_customers;

-- Ad hoc query
SELECT 
    ContactName,
    LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS InitialNameFromAdHoc
FROM 
    dbo.v_w3_schools_customers;