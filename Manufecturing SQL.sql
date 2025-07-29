SELECT * FROM project2.sql;
use	project2;

-- Manufacturing Qty --
SELECT SUM(`Manufactured Qty`) AS Total_Manufactured_Qty
FROM project2.sql;

-- Rejected Qty --
SELECT SUM(`Rejected Qty`) AS Total_Rejected_Qty
FROM project2.sql;
-- Processed Qty --
SELECT SUM(`Processed Qty`) AS Total_Processed_Qty
FROM project2.sql;

-- Wastage Qty --
SELECT SUM(`Processed Qty` - `Produced Qty`) AS Total_Wastage_Qty
FROM project2.sql;
-- Employee Wise Rejected Data --
SELECT `Emp Name`, SUM(`Rejected Qty`) AS Total_Rejected_Qty
FROM project2.sql
GROUP BY `Emp Name`
ORDER BY Total_Rejected_Qty DESC;

-- Machine Wise Rejected Qty -- 
SELECT `Machine Name`, SUM(`Rejected Qty`) AS Total_Rejected_Qty
FROM project2.sql
GROUP BY `Machine Name`
ORDER BY Total_Rejected_Qty DESC;

-- Production Comparision Trend --
SELECT DATE_FORMAT(`Doc Date`, '%Y-%m') AS Month, 
       SUM(`Processed Qty`) AS Total_Processed, 
       SUM(`Produced Qty`) AS Total_Produced, 
       SUM(`Rejected Qty`) AS Total_Rejected
FROM project2.sql
GROUP BY Month
ORDER BY Month;

-- Manufactured vs Rejected -- 
SELECT 
    SUM(`Manufactured qty`) AS Total_Manufactured, 
    SUM(`Rejected Qty`) AS Total_Rejected
FROM project2.sql;

-- Department wise Manufactured vs Rejected --
SELECT 
    `Department Name`, 
    SUM(`Manufactured qty`) AS Total_Manufactured, 
    SUM(`Rejected Qty`) AS Total_Rejected
FROM project2.sql
GROUP BY `Department Name`
ORDER BY Total_Manufactured DESC;

-- Employee Wise Rejected Qty --
SELECT 
    `Emp Name`, 
    SUM(`Rejected Qty`) AS Total_Rejected_Qty
FROM project2.sql
GROUP BY `Emp Name`
ORDER BY Total_Rejected_Qty DESC;









