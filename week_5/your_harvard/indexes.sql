CREATE INDEX IF NOT EXISTS enrolled_students
ON enrollments (student_id);

CREATE INDEX IF NOT EXISTS enrolled_courses
ON enrollments (course_id);

CREATE INDEX IF NOT EXISTS fall_23
ON courses (id)
WHERE semester = 'Fall 2023';

CREATE INDEX IF NOT EXISTS satif_course
ON satisfies (course_id);
