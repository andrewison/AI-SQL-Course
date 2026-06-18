/*
I wandered lonely as a cloud that floats on high over vale and hills , 
when all at once I saw a crowd , a host of golden daffodils
*/
-- Test data script request
SELECT
	PatientId
	
	,Ps.AdmittedDate
	
	,ps.Ward
	
	,DATEADD(WEEK, -2, ps.AdmittedDate) AS ReminderDate
	
	,PS.DischargeDate
	
	,ps.Tariff
	
	,ps.Hospital
	,DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) AS LengthOfStay

FROM
	PatientStay PS
WHERE ps.Hospital IN ('Kingston','PRUH')
	AND Ps.Ward LIKE '%Surgery'
	AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-02-28'

ORDER BY ps.Tariff DESC



	



