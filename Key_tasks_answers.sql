-- Key Task 1: Find Most Consulted Doctors
-- Display doctors based on the number of appointments
-- handled, in descending order.


SELECT D.doctor_id,
       D.name,
       COUNT(A.appointment_id) AS Number_of_appointments
FROM doctors AS D
JOIN appointments AS A
ON D.doctor_id = A.doctor_id
GROUP BY D.doctor_id, D.name
ORDER BY Number_of_appointments DESC;



-- Key Task 2: Calculate Total Revenue Per Month
-- Calculate the total treatment revenue generated
-- during each month.


SELECT MONTH(A.appointmentdate) AS Month,
       SUM(T.cost) AS Total_Revenue
FROM appointments AS A
JOIN treatments AS T
ON A.patient_id = T.patient_id
GROUP BY MONTH(A.appointmentdate)
ORDER BY Month;



-- Key Task 3: Calculate Total Revenue Per Year-Month
-- Generate monthly revenue report in YYYY-MM format.


SELECT DATE_FORMAT(A.appointmentdate, '%Y-%m') AS Year_Month,
       SUM(T.cost) AS Total_Revenue
FROM appointments AS A
JOIN treatments AS T
ON A.patient_id = T.patient_id
GROUP BY Year_Month
ORDER BY Year_Month;



-- Key Task 4: Identify Most Common Diseases
-- Find the diagnoses that occur most frequently
-- among patients.


SELECT diagnosis,
       COUNT(*) AS Total_Count
FROM treatments
GROUP BY diagnosis
ORDER BY Total_Count DESC;



-- Key Task 5: Track Patient Visit Frequency
-- Determine how many times each patient has visited
-- the hospital based on appointments.

SELECT P.patient_id,
       P.name,
       COUNT(A.appointment_id) AS Visit_Frequency
FROM patients AS P
JOIN appointments AS A
ON P.patient_id = A.patient_id
GROUP BY P.patient_id, P.name
ORDER BY Visit_Frequency DESC;

-- Key Task 6: Analyze Doctor Performance
-- Evaluate doctor performance based on the total
-- revenue generated from treatments.

SELECT D.doctor_id,
       D.name,
       SUM(T.cost) AS Total_Revenue
FROM doctors AS D
JOIN appointments AS A
ON D.doctor_id = A.doctor_id
JOIN treatments AS T
ON A.patient_id = T.patient_id
GROUP BY D.doctor_id, D.name
ORDER BY Total_Revenue DESC;