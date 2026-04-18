-- Find most consulted doctors

SELECT D.doctor_id, D.name,COUNT(A.appointment_id) as Number_of_appointments
FROM  doctors as D
JOIN appointments as A 
ON D.doctor_id=A.doctor_id
GROUP BY D.doctor_id, D.name
ORDER BY Number_of_appointments  DESC;


-- Calculate total revenue per month 
SELECT MONTH(A.appointmentdate) as Month ,SUM(T.cost) as Total_Revenue
FROM appointments as A 
JOIN treatments as T 
ON A.appointment_id = T.appointment_id
group by MONTH(A.appointmentdate)
order by Month ;


SELECT DATE_FORMAT(A.appointmentdate, '%Y-%m') as Year__Month,
       SUM(T.cost) AS Total_Revenue
FROM appointments A
JOIN treatments T
ON A.appointment_id = T.appointment_id
GROUP BY Year__Month
ORDER BY Year__Month;


-- Identify most common diseases 
SELECT diagnosis , Count(*) as total_count
From treatments
GROUP by diagnosis
ORDER BY total_count DESC;


-- find patient visiting frequency
SELECT P.patient_id, P.name,COUNT(A.appointment_id) as Visit_Frequency
FROM  patients as P
JOIN appointments as A 
ON P.patient_id=A.Patient_id
GROUP BY P.patient_id, P.name
ORDER BY Visit_Frequency  DESC;

--  Doctor Revenue
SELECT D.doctor_id, D.name, SUM(T.cost) as Total_Revenue
FROM doctors D
JOIN appointments A 
ON D.doctor_id = A.doctor_id
JOIN treatments T 
ON A.appointment_id = T.appointment_id
GROUP BY D.doctor_id, D.name
ORDER BY Total_Revenue DESC;


