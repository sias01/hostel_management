CREATE DATABASE project;

USE project;
DROP TABLE IF EXISTS student;

CREATE TABLE student (
  student_id int NOT NULL,
  fname text,
  lname text,
  phno int DEFAULT NULL,
  department text,
  year_of_study int DEFAULT NULL,
  hostel_no int DEFAULT NULL,
  room_no int DEFAULT NULL
);

ALTER TABLE student MODIFY student_id int PRIMARY KEY;

ALTER TABLE student ADD CONSTRAINT FOREIGN KEY(hostel_no) REFERENCES hostel(hostel_id);

ALTER TABLE student ADD CONSTRAINT FOREIGN KEY(room_no) REFERENCES room(room_id);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no, room_no) values (1,'Aditya','S',8789123458,'ECE',2,1,1);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no) values (2,'Vidya','Kalyandurg',8965789012,'ECE',3,3,13);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no) values (3,'Shreyas','Desai',7777267331,'ECE',3,1,2);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no) values (4,'Utkarsh','S',1782900948,'ECE',3,1,2);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no) values (5,'Ryomen','Sukuna',7461127424,'CSE',4,2,7);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no) values (6,'Antonella','R',5430546822,'EEE',2,4,20);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no) values (7,'Kagura','Yato',8864537189,'CSE',2,3,12);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no ) values (8,'Divya','F',7651098342,'CSE',2,3,11);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no ) values (9,'Lionel','Messi',7981234567,'CSE',3,1,3);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no ) values (10,'Saniya','Mirza',8765432172,'ECE',4,3,13);

insert into student (student_id,fname,lname ,phno,department,year_of_study,hostel_no ,room_no) values (11,'Cristiano','Ronaldo',8234156207,'CSE',2,2,9);

insert into student (student_id,fname,lname ,phno,department,year_of_study ,hostel_no ,room_no) values (12,'Serena','Williams',7625102696,'EEE',1,4,16);

SELECT * FROM student;

ALTER TABLE student MODIFY COLUMN phno bigint;