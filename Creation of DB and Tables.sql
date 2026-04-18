CREATE database if not exists hospital;
USE hospital;
CREATE TABLE patients 
(
patient_id INT PRIMARY KEY , 
name VARCHAR(50), 
age INT , 
gender VARCHAR(15)
);

CREATE TABLE doctors 
(doctor_id INT PRIMARY KEY ,
 name VARCHAR(50) ,
 specialization VARCHAR(50)
 );

 CREATE TABLE appointments 
 (appointment_id INT PRIMARY KEY , 
 patient_id INT , 
 doctor_id INT , 
 appointmentdate DATE ,
 FOREIGN KEY (patient_id) references patients(patient_id),
FOREIGN KEY (doctor_id) references doctors(doctor_id)
);

CREATE TABLE treatments 
(treatment_id INT PRIMARY KEY ,
 patient_id INT , 
 diagnosis VARCHAR(100),
 cost DOUBLE ,
 FOREIGN KEY (patient_id) references patients(patient_id)
 );