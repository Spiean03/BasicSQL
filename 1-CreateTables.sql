-- CREATE tables
CREATE TABLE student (
  student_id INT PRIMARY KEY,
  name VARCHAR(40),
  major VARCHAR(40)
  -- PRIMARY KEY(student_id)
);

-- CREATE TABLE Constraints
CREATE TABLE student (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(40) NOT NULL,
  -- name VARCHAR(40) UNIQUE,
  major VARCHAR(40) DEFAULT 'undecided',
);

-- Describe the Table
DESCRIBE student;

-- Delete the Table
DROP TABLE student;
ALTER TABLE student ADD gpa DECIMAL;
ALTER TABLE student DROP COLUMN gpa;

-- Inserting DATA into the Table
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

-- Deleting from TABLE
DELETE FROM student
WHERE student_id = 4;

DELETE FROM student
WHERE major = 'Sociology' AND name = 'Kate';

-- Update entry in TABLE
UPDATE student
SET major = 'Undecided';

UPDATE student
SET name = 'Johnny'
WHERE student_id = 4;

UPDATE student
SET major = 'Biological Sciences'
WHERE major = 'Biology';

UPDATE student
SET major = 'Biosociology'
WHERE major = 'Biology' OR major = 'sociology'

UPDATE student
SET major = 'Undecided', name = 'Tom'
WHERE student_id = 4;


-- Basic Queries
SELECT *
FROM student;

SELECT student.name, student.major
FROM student;

SELECT *
FROM student
WHERE name = 'Jack';

SELECT *
FROM student
WHERE student_id > 2;

SELECT *
FROM student
WHERE major = 'Biology' AND student_id > 1;
