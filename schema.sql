/* 
  <-- What this document is all about -->
  1. Create Database using tools within PostgreSQL
  2. Create Tables using SQL
  3. Inserting Data into the tables using SQL

  <-- In order to run these scripts as according to our project, download PostgreSQL. -->

  1. Once you're in Postgre, login to your server
  2. Right click "Databases", then click on "Create" -> "Database..."
  3. Name the database "BCWellnessDB"
  4. Click Save.

  <-- Now We'll be getting into the SQL -->
  1. Start by right-clicking the "BCWellnessDB" -> Click "Query Tool"
  Creating a SCHEMA First, then creating the tables, within the schema
*/
CREATE SCHEMA student_services; 

CREATE TABLE student_services.tblUsers (
    StudentID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    Surname VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Password VARCHAR(100)
);

CREATE TABLE student_services.tblRequests (
    RequestID SERIAL PRIMARY KEY,
    Service VARCHAR(50),
    Description VARCHAR(100),
    StudentID VARCHAR(10) REFERENCES student_services.tblUsers(StudentID),
    RequestDate TIMESTAMP WITHOUT TIME ZONE
);
/* 
  <-- Awesome! Now put some random, binding demo data into the tables. -->
*/
INSERT INTO student_services.tblUsers (StudentID, Name, Surname, Email, Phone, Password)
VALUES
('600166','Iwan','Rademan','iwanrademan@gmail.com','0720836159','pass'),
('330167','Liam','Van Dyk','liam.vandyk@gmail.com','0721234561','pass'),
('600168','Emily','Smith','emily.smith@gmail.com','0731234562','pass'),
('655169','Noah','Brown','noah.brown@gmail.com','0741234563','pass'),
('600170','Ava','Jones','ava.jones@gmail.com','0751234564','pass'),
('500371','Oliver','Williams','oliver.williams@entelect.com','0761234565','pass'),
('687572','Mia','Taylor','mia.taylor@gmail.com','0771234566','pass'),
('900173','Lucas','Mokoena','lucas.mokoena@gmail.com','0781234567','pass'),
('850274','Sophia','Ngwenya','sophia.ngwenya@outlook.com','0791234568','pass'),
('401075','Ethan','Naidoo','ethan.naidoo@gmail.com','0601234569','pass'),
('600176','Isabella','Fourie','isabella.fourie@gmail.com','0611234570','pass'),
('600177','Logan','Pretorius','logan.pretorius@outlook.com','0621234571','pass'),
('603338','Harper','Du Plessis','harper.duplessis@gmail.com','0631234572','pass'),
('606739','Aiden','Botha','aiden.botha@gmail.com','0641234573','pass'),
('590180','Ella','Jansen','ella.jansen@gmail.com','0651234574','pass'),
('599999','Leo','De Villiers','leo.devilliers@student.belgiumcampus.com','0661234575','pass'),
('600000','Lily','Steyn','lily.steyn@gmail.com','0671234576','pass'),
('600462','James','Coetzee','james.coetzee@gmaily.com','0681234577','pass'),
('604444','Chloe','Kruger','chloe.kruger@gmail.com','0691234578','pass'),
('820185','Benjamin','Olivier','benjamin.olivier@yahoo.com','0701234579','pass'
  );

INSERT INTO student_services.tblRequests (Service, Description, StudentID, RequestDate)
VALUES
('Appointment', 'Need help choosing modules', '600166', '2025-07-09 09:00:00'),
('Counsellors', 'Struggling with anxiety lately', '330167', '2025-07-08 14:15:00'),
('Feedback', 'Great support from staff!', '600168', '2025-07-07 11:45:00'),
('Appointment', 'Need academic consultation', '655169', '2025-07-06 10:30:00'),
('Feedback', 'Library booking system is slow', '600170', '2025-07-05 12:20:00'),
('Counsellors', 'Looking for emotional support', '500371', '2025-07-04 16:00:00'),
('Appointment', 'Schedule career guidance session', '687572', '2025-07-03 13:00:00'),
('Feedback', 'Love the new cafeteria food', '900173', '2025-07-02 09:15:00'),
('Counsellors', 'Feeling overwhelmed with studies', '850274', '2025-07-01 10:00:00'),
('Appointment', 'Need help planning semester', '401075', '2025-06-30 11:00:00'),
('Feedback', 'Online portal looks outdated', '600176', '2025-06-29 14:30:00'),
('Counsellors', 'Need to talk about personal issues', '600177', '2025-06-28 15:45:00'),
('Appointment', 'Requesting study timetable help', '603338', '2025-06-27 08:30:00'),
('Feedback', 'Wi-Fi is unstable in dorms', '606739', '2025-06-26 12:00:00'),
('Counsellors', 'Need help adjusting to campus life', '590180', '2025-06-25 13:45:00'),
('Appointment', 'Discuss exam readiness', '599999', '2025-06-24 10:15:00'),
('Feedback', 'Lecture halls are too cold', '600000', '2025-06-23 11:50:00'),
('Counsellors', 'Going through a breakup', '600462', '2025-06-22 09:35:00'),
('Appointment', 'Want to switch majors', '604444', '2025-06-21 14:05:00'),
('Feedback', 'Thank you for quick responses', '820185', '2025-06-20 10:40:00');

/*
 * Author:  Iwan Groenewald(600166)
 * Created: Jul 8, 2025
 */

