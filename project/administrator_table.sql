DROP TABLE IF EXISTS administrator;
CREATE TABLE administrator (
  id int NOT NULL,
  fname text,
  lname text,
  phno int DEFAULT NULL,
  hostel_id int NOT NULL
);

ALTER TABLE administrator MODIFY id int PRIMARY KEY;

ALTER TABLE administrator ADD CONSTRAINT FOREIGN KEY(hostel_id) REFERENCES hostel(hostel_id);