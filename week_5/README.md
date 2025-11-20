# In a Snap

## Overview

This problem's task was to implement queries making sure they use custom indexes.

<details>
    <summary>Schema</summary>
The `snap.db` database has the following tables:

**Users**
- `id` : Uniquely identifies each user
- `username` : The user’s username
- `phone_number` : The user’s phone number
- `joined_date` : The date the user joined the app
- `last_login_date` : The date the user last logged in

**Friends**
- `user_id` : Uniquely identifies each user
- `friend_id` : The ID of the user with whom the given user is friends 
- `friendship_date` : The date the friendship began. Can be one-way or two-way

**Messages**
- `id` : Uniquely identifies each message
- `from_user_id` : The ID of the user who sent the message
- `to_user_id` : The ID of the user to whom the message was sent
- `picture` : The filename of the picture that was sent in the message
- `sent_timestamp` : The timestamp at which the message was sent
- `viewed_timestamp` : The timestamp at which the message was viewed
- `expires_timestamp` : The timestamp at which the message was expired

<br>
These entities are related per the entity relationship (ER) diagram provided in the project description.
</details>

## Specifications

- `1.sql` : Find the names and cities of all public schools in Massachusetts.
- `2.sql` : Find the names of districts that are no longer operational.
- `3.sql` : Find the average per-pupil expenditure across all districts last year.
- `4.sql` : Find the 10 cities with the most public schools, ordered by the number of public schools and alphabetically for ties.
- `5.sql` : Find cities with 3 or fewer public schools, ordered by the number of public schools and alphabetically for ties.


# your.harvard

## Overview

In this task I was optimizing the `harvard.db` database, which is used for course registration at Harvard. The goal is to create indexes that improve the performance of typical queries and make the system more responsive.

<details>
    <summary>Schema</summary>
The `harvard.db` database has the following tables:

**Students**
- `id` : Uniquely identifies each student
- `name` : The student’s name

**Courses**
- `id` : Uniquely identifies each course
- `department` : The department in which the course is taught
- `number` : The course number
- `semester` : The semester in which the class was taught
- `title` : The title of the course

**Enrollments**
- `id` : Uniquely identifies each message
- `student_id` : The ID of the student enrolled
- `course_id` : The ID of the course in which the student is enrolled

**Requirements**
- `id` : Uniquely identifies each requirement
- `name` : The name of the requirement

**Satisfies**
- `id` : Uniquely identifies each course-requirement pair
- `course_id` : The ID of a given course
- `requirement_id` : The ID of the requirement which the given course satisfies

<br>
These entities are related per the entity relationship (ER) diagram provided in the project description.
</details>

## Specifications

In `indexes.sql`, the task is to write SQL statements that create indexes to improve the performance of typical queries on the my.harvard database. Keeping in mind space and time trade-offs, creating indexes that balance efficiency.

Typical queries run on harvard.db include:

1. Finding a student’s historical course enrollments based on their ID.
2. Identifying all students who enrolled in a specific course in a particular semester.
3. Sorting courses by most- to least-enrolled in a given semester.
4. Finding all courses of a specific department taught in a particular semester.
5. Finding the requirement satisfied by a specific course in a given semester.
6. Determining how many courses in each requirement a student has satisfied.
7. Searching for a course by title and semester.
