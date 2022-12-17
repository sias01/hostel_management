DROP TABLE IF EXISTS room;
CREATE TABLE room (
  room_id int NOT NULL,
  student_id int DEFAULT NULL,
  hostel_id int DEFAULT NULL
);

ALTER TABLE room MODIFY room_id int PRIMARY KEY;

ALTER TABLE room ADD CONSTRAINT FOREIGN KEY(student_id) REFERENCES student(student_id);

ALTER TABLE room ADD CONSTRAINT FOREIGN KEY(hostel_id) REFERENCES hostel(hostel_id);

insert into room (room_id, hostel_id) values(3,1);
insert into room (room_id, hostel_id) values(2,1);
insert into room (room_id, hostel_id) values(1,1);
insert into room (room_id, hostel_id) values(4,1);
insert into room (room_id, hostel_id) values(5,1);

insert into room (room_id, hostel_id) values(6,2);
insert into room (room_id, hostel_id) values(7,2);
insert into room (room_id, hostel_id) values(8,2);
insert into room (room_id, hostel_id) values(9,2);
insert into room (room_id, hostel_id) values(10,2);

insert into room (room_id, hostel_id) values(11,3);
insert into room (room_id, hostel_id) values(12,3);
insert into room (room_id, hostel_id) values(13,3);
insert into room (room_id, hostel_id) values(14,3);
insert into room (room_id, hostel_id) values(15,3);

insert into room (room_id, hostel_id) values(16,4);
insert into room (room_id, hostel_id) values(17,4);
insert into room (room_id, hostel_id) values(18,4);
insert into room (room_id, hostel_id) values(19,4);
insert into room (room_id, hostel_id) values(20,4);

DELETE FROM room WHERE room_id=15;

SELECT * FROM room;