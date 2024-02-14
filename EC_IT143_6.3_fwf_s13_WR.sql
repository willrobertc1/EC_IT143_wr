Step 6 - Compare udf results to ad hoc query results

SELECT 
    column1 AS UDF_LastName,
    SUBSTRING(column1, CHARINDEX(' ', column1) + 1, LEN(column1) - CHARINDEX(' ', column1)) AS LastName
FROM 
    [dbo.v_w3_schools_customers];
