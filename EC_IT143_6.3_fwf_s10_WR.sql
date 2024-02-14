Step 3 - Create an Ad Hoc SQL query

SELECT 
    RIGHT(ContactName, CHARINDEX(' ', REVERSE(ContactName) + ' ') - 1) AS ContactLastName
FROM 
    dbo.v_w3_schools_customers;
