DROP TABLE IF EXISTS furniture;
CREATE TABLE furniture (
  furniture_id int NOT NULL,
  furniture_type text,
  room_number int DEFAULT NULL
);

ALTER TABLE furniture MODIFY furniture_id int PRIMARY KEY;

ALTER TABLE furniture ADD CONSTRAINT FOREIGN KEY(room_number) REFERENCES room(room_id);