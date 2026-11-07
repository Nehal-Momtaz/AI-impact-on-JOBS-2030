SELECT * from AI_DB

USE [AI Data]
SELECT COUNT( distinct Employee_ID) as Total_no_of_employees FROM AI_DB 

--DECLARE @Total_no_of_employees INT;

--SELECT @Total_no_of_employees = COUNT(DISTINCT Employee_ID)
--FROM AI_DB;

Select Concat (round (AVG (AI_Replacement_Risk),2)*100,'%') 
as AVG_AI_Replacement_Risk FROM AI_DB 

Select Concat (round (AVG (Future_Demand_Score),2)*100,'%') 
as AVG_Future_Demand_Score FROM AI_DB 

Select round (AVG (Work_Hours_Per_Week),2) 
as AVG_Working_hours FROM AI_DB

Select Company_Size, COUNT( distinct Employee_ID) as from AI_DB
group by Company_Size


SELECT 
    Remote_Work_Possibility,
    CONCAT(Cast(COUNT(*)*100.0/SUM(COUNT(*)) over() As Decimal(5,2)),'%') AS percentage_Remote_Possibility
FROM AI_DB
GROUP BY Remote_Work_Possibility;

