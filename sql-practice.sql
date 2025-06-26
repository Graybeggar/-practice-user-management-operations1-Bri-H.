CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(20),
  firstName VARCHAR(20),
  lastName VARCHAR(20),
  age INT
);

-- Insert new user data
insert into users (username, firstName, lastName, age)
values
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 
 -- Update existing records
 SELECT id, username FROM users WHERE username = 'asmith';
 -- Update age of 'id 1' to 28
UPDATE users
SET age = 28
WHERE id = 1;
-- Update lastName to 'Roberts'.
UPDATE users
SET lastName = 'Roberts'
WHERE id = 1;

-- Delete specific rows
DELETE FROM users
WHERE id = 1;

-- Write SELECT queries with conditions, sorting, and limits
-- Select all users with last name 'Doe'
SELECT * FROM users
WHERE lastName = 'Doe';
-- Select users older than 60, ordered by age descending
SELECT * FROM users
WHERE age > 60
ORDER BY age DESC;
-- Select first 5 users ordered by lastName ascending
SELECT * FROM users
ORDER BY lastName ASC
LIMIT 5;