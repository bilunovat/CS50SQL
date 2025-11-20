-- Represent tennis instructors
CREATE TABLE IF NOT EXISTS instructors (
    id INT UNSIGNED AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    started_teaching DATE NOT NULL,
    finished_teaching DATE,
    PRIMARY KEY (id)
);

-- Represents each lesson
CREATE TABLE IF NOT EXISTS lessons (
    id INT UNSIGNED AUTO_INCREMENT,
    instructor_id INT UNSIGNED,
    date DATE NOT NULL,
    court_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(instructor_id) REFERENCES instructors(id)
);

-- Represent students attending university tennis lessons
CREATE TABLE IF NOT EXISTS students (
    university_id CHAR(9),
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    major ENUM('Computer Science',
                'Mathematics',
                'Arts',
                'Economy',
                'Biology',
                'Linguistics') NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    level_of_play ENUM('none', 'first', 'second', 'third') DEFAULT 'none',
    balance DECIMAL(5,2) DEFAULT 0.00 NOT NULL,
    PRIMARY KEY(university_id)
);

-- Represent attendance of a student on a lesson
CREATE TABLE IF NOT EXISTS attendances (
    id INT UNSIGNED AUTO_INCREMENT,
    student_id CHAR(9),
    lesson_id INT UNSIGNED,
    PRIMARY KEY(id),
    FOREIGN KEY(student_id) REFERENCES students(university_id),
    FOREIGN KEY(lesson_id) REFERENCES lessons(id)
);

-- Represent students' payments for lessons
CREATE TABLE IF NOT EXISTS payments (
    id INT UNSIGNED AUTO_INCREMENT,
    student_id CHAR(9),
    amount DECIMAL(5,2) NOT NULL,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY(id),
    FOREIGN KEY(student_id) REFERENCES students(university_id)
);


-- Create indexes to speed common searches
CREATE INDEX student_levels
ON students (level_of_play);

CREATE INDEX students_ids
ON payments (student_id);

-- Create trigger to automate withdrawals and inserting to a student account
DELIMITER //

CREATE TRIGGER balance_update
AFTER INSERT ON payments
FOR EACH ROW
BEGIN
    UPDATE students
    SET balance = balance + NEW.amount
    WHERE university_id = NEW.student_id;
END//

DELIMITER ;
