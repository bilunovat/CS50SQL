-- Add new instructors
INSERT INTO instructors (first_name, last_name, started_teaching)
VALUES ('Novak', 'Djokovic', '2013-04-14');

INSERT INTO instructors (first_name, last_name, started_teaching)
VALUES ('Daniil', 'Medvedev', '2022-02-21');

INSERT INTO instructors (first_name, last_name, started_teaching, finished_teaching)
VALUES ('Serena', 'Williams', '2007-12-31', '2015-01-01');

-- Add new students
INSERT INTO students (university_id, first_name, last_name, major,
                        start_date, level_of_play, balance)
VALUES ('123456789', 'Tany', 'Bilunova', 'Computer Science',
                        '2025-09-22', 'none', 0.00);

INSERT INTO students (university_id, first_name, last_name, major,
                        start_date, end_date, level_of_play, balance)
VALUES ('987654321', 'Mario', 'Mario', 'Mathematics',
                        '2005-10-11', '2006-10-01', 'second', 0.00);

INSERT INTO students (university_id, first_name, last_name, major,
                        start_date, level_of_play, balance)
VALUES ('999999999', 'Laura', 'Hudson', 'Biology',
                        '2025-10-12', 'first', 12.50);
-- Add a lesson
INSERT INTO lessons (instructor_id, date, court_name)
VALUES (1, CURDATE(), 'Leases Court');

-- Add attendance
INSERT INTO attendances (student_id, lesson_id)
VALUES ('123456789', 1);

-- Add a payment
INSERT INTO payments (student_id, amount)
VALUES ('123456789', 50.00);

INSERT INTO payments (student_id, amount)
VALUES ('999999999', -2.00);

-- Find all instructors that currently work
SELECT *
FROM instructors
WHERE finished_teaching IS NULL;

-- Find all students whose account balance is zero
SELECT *
FROM students
WHERE balance = 0.00;

-- Find all students who don't have experience plating tennis and still participating
SELECT *
FROM students
WHERE level_of_play = 'none'
AND end_date IS NULL;

-- Find all students who have high level of experience in tennis and still participating
SELECT *
FROM students
WHERE level_of_play = 'third'
AND end_date IS NULL;

-- Find all payments for a certain date
SELECT *
FROM payments
WHERE payment_date LIKE '2025-11-17%';

-- Find all payments by a certain student
SELECT *
FROM payments
WHERE student_id IN (
    SELECT university_id
    FROM students
    WHERE last_name = 'Bilunova'
);

-- Find all lessons delivered by a certain instructor
SELECT *
FROM lessons
WHERE instructor_id IN (
    SELECT id
    FROM instructors
    WHERE last_name = 'Djokovic'
);

-- Find all lessons delivered on a certain court
SELECT *
FROM lessons
WHERE court_name = 'Leases Court';

-- Count how many students attended a certain lesson
SELECT COUNT(student_id)
FROM attendances
WHERE 'date' = '2025-11-17'
AND lesson_id = 1;
