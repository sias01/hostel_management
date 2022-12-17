DROP TABLE IF EXISTS hostel;
CREATE TABLE hostel (
  hostel_id int NOT NULL,
  hostel_name text,
  no_of_rooms int DEFAULT NULL,
  no_of_students int DEFAULT NULL,
  student_id int DEFAULT NULL
);

ALTER TABLE hostel MODIFY hostel_id int PRIMARY KEY;

ALTER TABLE hostel ADD CONSTRAINT FOREIGN KEY(student_id) REFERENCES student(student_id);

insert into hostel (hostel_id,hostel_name,no_of_rooms,no_of_students) values(1,'A',5,5);
UPDATE hostel SET hostel_name = 'A' WHERE hostel_id = 1;
UPDATE hostel SET no_of_rooms = 5 WHERE hostel_id = 1;
insert into hostel (hostel_id,hostel_name,no_of_rooms,no_of_students) values(2,'B',5,5);
insert into hostel (hostel_id,hostel_name,no_of_rooms,no_of_students) values(3,'C',5,5);
insert into hostel (hostel_id,hostel_name,no_of_rooms,no_of_students) values(4,'D',5,5);

UPDATE hostel SET no_of_students=1 WHERE hostel_id = 4;

UPDATE hostel SET student_id=(5,11) WHERE hostel_id = 2;

SELECT * FROM hostel;