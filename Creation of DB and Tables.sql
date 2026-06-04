CREATE DATABASE IF NOT EXISTS hospital;
USE hospital;
 
CREATE TABLE patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(15) NOT NULL
);
 
CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    specialization VARCHAR(50) NOT NULL
);
 
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointmentdate DATE NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);
 
CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY,
    patient_id INT NOT NULL,
    diagnosis VARCHAR(100) NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);