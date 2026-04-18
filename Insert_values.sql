INSERT INTO patients Values 
(1,"Harsha",21,"Male"),
(2,"Hari",23,"Male"),
(3,"Aravind",22,"Male"),
(4,"Navanitha",20,"Female"),
(5,"Fayaz",21,"Male"),
(6,"Shravani",22,"Female");
INSERT INTO patients values (7,"Indu",21,"Female");

SELECT * FROM patients;

INSERT INTO doctors VALUES 
(101,"Dr.Suvarna","Dermatologist"),
(102,"Dr.Vamshi","Dentist"),
(103,"Dr.Divya","Dentist"),
(104,"Dr.Kiran","Cardialogist"),
(105,"Dr.Habib Pasha","Endocrinologist");
SELECT * FROM doctors;


INSERT INTO appointments VALUES 
(201,1,104,'2026-04-08'),
(202,2,101,'2026-03-07'),
(203,3,104,'2026-04-17'),
(204,4,102,'2026-04-12'),
(205,5,103,'2026-03-10'),
(206,6,105,'2026-02-15');

INSERT INTO appointments VALUES (207,7,104,'2026-04-09') ;
INSERT INTO appointments VALUES  
(208,5,103,'2026-03-12'),
(209,5,103,'2026-03-17');
 
SELECT * FROM appointments;



INSERT INTO treatments VALUES 
(301,1,"Heart pain",1000.00),
(302,2,"Skin Allergy",800.00),
(303,3,"Low Bp",1200.00),
(304,4,"Teeth Infection",1500.00),
(305,5,"Teeth crack",1000.00),
(306,6,"Diabetes checkup",2235.00),
(307,7,"Heart Checkup",1150.00),
(308,5,"Root Canal",3000.00),
(309,5,"Teeth Insertion",15000.00);
SELECT * from treatments;