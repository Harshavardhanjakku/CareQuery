# Hospital Management & Patient Analytics System

## Problem Statement

Hospitals require an efficient system to manage patient records, doctor information, appointments, and treatment details. Manual management of hospital data can lead to inefficiencies, data redundancy, and difficulty in generating analytical insights.

The objective of this project is to design and implement a relational database system that stores hospital data and supports analytical queries for operational decision-making. The system enables hospitals to maintain accurate records and derive meaningful insights regarding patient visits, doctor performance, treatment trends, and revenue generation.

---

## Objectives

* Design a database to store patient, doctor, appointment, and treatment information.
* Maintain relationships between patients, doctors, appointments, and treatments.
* Perform analytical queries on hospital operations.
* Generate reports that assist in decision-making and performance evaluation.

---

## Database Tables

### Patients

Stores patient information.

| Column Name | Description               |
| ----------- | ------------------------- |
| patient_id  | Unique patient identifier |
| name        | Patient name              |
| age         | Patient age               |
| gender      | Patient gender            |

### Doctors

Stores doctor information.

| Column Name    | Description              |
| -------------- | ------------------------ |
| doctor_id      | Unique doctor identifier |
| name           | Doctor name              |
| specialization | Doctor specialization    |

### Appointments

Stores appointment details.

| Column Name     | Description                   |
| --------------- | ----------------------------- |
| appointment_id  | Unique appointment identifier |
| patient_id      | Patient reference             |
| doctor_id       | Doctor reference              |
| appointmentdate | Appointment date              |

### Treatments

Stores treatment records.

| Column Name  | Description                 |
| ------------ | --------------------------- |
| treatment_id | Unique treatment identifier |
| patient_id   | Patient reference           |
| diagnosis    | Diagnosis details           |
| cost         | Treatment cost              |

---

## Key Tasks

### 1. Find Most Consulted Doctors

Identify doctors who have handled the highest number of appointments.

### 2. Calculate Total Revenue Per Month

Determine the total revenue generated from treatments on a monthly basis.

### 3. Calculate Revenue by Year and Month

Generate revenue reports grouped by year and month.

### 4. Identify Most Common Diseases

Analyze treatment records to determine the most frequently diagnosed diseases.

### 5. Track Patient Visit Frequency

Calculate the number of hospital visits made by each patient.

### 6. Analyze Doctor Performance

Evaluate doctor performance based on patient consultations and revenue generated.

---

## Expected Outcome

The project delivers a robust Hospital Management and Patient Analytics System capable of:

* Managing hospital records efficiently.
* Maintaining data integrity through relational database design.
* Tracking patient visits and treatment history.
* Identifying common diseases and treatment patterns.
* Monitoring doctor performance.
* Generating revenue analysis reports.
* Supporting data-driven decision-making in hospital operations.

---

## Technologies Used

* MySQL
* SQL (DDL, DML, Joins, Aggregate Functions, Group By, Order By)
* MySQL Workbench
