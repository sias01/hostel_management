DROP TABLE IF EXISTS visitors;
CREATE TABLE visitors(
  visitor_id int NOT NULL,
  visitor_name text,
  visit_date text,
  in_time int DEFAULT NULL,
  out_time int DEFAULT NULL,
  student_id int DEFAULT NULL
);

ALTER TABLE visitors MODIFY visitor_id int PRIMARY KEY;

ALTER TABLE visitors ADD CONSTRAINT FOREIGN KEY(student_id) REFERENCES student(student_id);

