# Happy to Connect (Sentimental)

## Overview

The task was to design a MySQL database schema for LinkedIn that can represent LinkedIn's platform specifications and handle sample data. 

## Created Database Schema

### Users

The users' table will store information about LinkedIn's users.

- `id`: Uniquely identifies each user
- `first_name`: User's first name
- `last_name`: User's last name
- `username`: User's username
- `password`: User's password

### Schools and Universities

The schools table will store information about schools and universities.

- `id`: Uniquely identifies each school
- `name`: Name of the school
- `type`: Type of school (Primary, Secondary, Higher Education)
- `location`: Location of the school
- `founded_year`: The year in which the school was founded

### Companies

The companies table will store information about companies.

- `id`: Uniquely identifies each company
- `name`: Name of the company
- `industry`: Industry of the company (Technology, Education, Business)
- `location`: Location of the company

### Connections

The connections table will represent connections between users, schools, and companies.

- `id`: Uniquely identifies each connection
- `user_id`: Foreign key referencing the Users table
- `school_id`: Foreign key referencing the Schools table
- `company_id`: Foreign key referencing the Companies table
- `title`: Title of the connection
- `start_date`: Start date of the connection
- `end_date`: End date of the connection

## Sample Data

The database should be able to represent the following sample data:

- User: Claudine Gay, username: claudine, password: password.
- User: Reid Hoffman, username: reid, password: password.
- School: Harvard University, type: Higher Education, location: Cambridge, Massachusetts, founded_year: 1636.
- Company: LinkedIn, industry: Technology, location: Sunnyvale, California.
- Connection: Claudine Gay's connection with Harvard, pursuing a PhD from January 1st, 1993, to December 31st, 1998.
- Connection: Reid Hoffman's connection with LinkedIn, title: CEO and Chairman, from January 1st, 2003, to February 1st, 2007.

# Don't Panic! (Sentimental) in Java

## Overview

In the Don't Panic! (Sentimental) in Java project the main idea was to follow walkthrough to understand the process of altering the data in a SQLite database though Java program.

## Files

- `Hack.java`: A Java file with the program to perform goal.
- `dont-panic.db`: The SQLite database containing user information.
- `reset.sql`: A set of SQL statements to reset the database to its original state.

## Specification

In `Hack.java`, the goal is to write a Java program that accomplishes the following:

1. Connect, via Java, to a SQLite database (`dont-panic.db`).
2. Alter, within the Java program, the administrator’s password.


