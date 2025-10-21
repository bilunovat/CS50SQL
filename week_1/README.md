# Packages, Please

## Overview

In this task, I was solving mysteries of missing packages reported by customers. The database `packages.db` contains information about package deliveries, drivers, addresses, and package scans. The goal is to use SQL queries to locate the missing packages and provide details about their current location and contents.

<details>
    <summary>Schema</summary>
The `packages.db` database represents recent package deliveries in the city of Boston. It includes the following entities:

**Drivers**
- `id` : Uniquely identifies each driver
- `name` : The first name of the driver

**Packages**
- `id` : Uniquely identifies each package
- `contents` : Contains the contents of the package
- `from_address_id` : The ID of the address from which the package was sent
- `to_address_id` : The ID of the address to which the package was sent. It’s not necessarily where it ended up!

**Addresses**
- `id` : Uniquely identifies each address
- `address` : The street address itself (i.e., 7660 Sharon Street)
- `type` : The type of address (i.e., residential, commercial, etc.)

**Scans**
- `id` : Uniquely identifies each scan
- `driver_id` : The ID of the driver who created the scan
- `package_id` : The ID of the package scanned
- `address_id` : The ID of the address where the package was scanned
- `action` : Indicates whether the package was picked up (“Pick”) or dropped off (“Drop”)
- `timestamp` : The day and time at which the package was scanned

<br>
These entities are related per the entity relationship (ER) diagram provided in the project description.
</details>


## Files

- `log.sql` : Keep a log of all SQL queries used to find the missing packages. Include comments above each query to describe why it's being executed and what information is expected.
- `answers.txt` : Once a missing package is found, fill in details about the location and contents of the package in this file. Do not change existing text or add extra lines.

## Specification : Mysteries to Solve

### The Lost Letter

Anneke reports a missing congratulatory letter sent to her friend Varsha. The letter is meant for 2 Finnegan Street. Use SQL queries to find and describe the lost letter's details.

### The Devious Delivery

A mysterious person from Fiftyville reports a missing package with a unique quack factor. There's no "From" address, but it's a parcel that adds some quack to bath times. Use SQL queries to uncover the devious delivery.

### The Forgotten Gift

A grandparent reports a missing mystery gift sent to their granddaughter at 728 Maple Place. The delivery date has passed, and they can't remember what's inside, but it's filled with love. Use SQL queries to track down the forgotten gift.

# DESE

## Overview

The task was to delve into the state's public education system. The database dese.db contains valuable information about districts, schools, expenditures, staff evaluations, and graduation rates. The mission is to utilize SQL queries to gain insights into the state of education in Massachusetts.

<details>
    <summary>Schema</summary>
The database schema includes the following tables:

**Districts**:
- `id` : Uniquely identifies each district
- `name` : The name of the district
- `type` : Denotes the type of district. In Massachusetts, there are public school districts (denoted “Public School District”) and charter districts (denoted “Charter District”).
- `city` : The city in which the district is located
- `state` : The state in which the district is located
- `zip` : The ZIP-code in which the district is located

**Schools**:
- `id` : Uniquely identifies each school
- `district_id` : the ID of the district to which the school belongs
- `name` : The name of the school
- `type` : Denotes the type of school. In Massachusetts, there are public schools (denoted “Public School”) and charter schools (denoted “Charter School”).
- `city` : The city in which the school is located
- `state` : The state in which the school is located
- `zip` : The ZIP-code in which the school is located

**Graduation rates**:
- `id` : Uniquely identifies each graduation rate
- `school_id` : The ID of the school with which the graduation is associated
- `graduated` : The percentage of students, 0–100, who graduated on time
- `dropped` : The percentage of students, 0–100, who dropped out of school before graduation
- `excluded` : The percentage of students, 0–100, who were “excluded” (i.e., expelled)

**Expenditures**: 
- `id` : Uniquely identifies eachUniquely identifies each expenditure
- `district_id` : The ID of the district with which the expenditure is associated
- `pupils` : The number of pupils attending the given district
- `per_pupil_expenditure` : The amount of money spent, in dollars, on each student attending the district

**Staff evaluations**:
- `id` : Uniquely identifies each evaluation
- `district_id` : The ID of the district with which the evaluation is associated
- `evaluated` : The percentage of district staff, 0–100, formally evaluated
- `exemplary` : The percentage of district staff, 0–100, evaluated as “exemplary”
- `proficient` : The percentage of district staff, 0–100, evaluated as “proficient”
- `needs_improvement` : The percentage of district staff, 0–100, evaluated as “needing improvement”
- `unsatisfactory` : The percentage of district staff, 0–100, evaluated as “unsatisfactory” 

You might (cleverly!) note that some of these relationships could be implemented with a single table. You’d be correct, though in this case, you’ll simply have to work with what your colleagues at DESE created!
</details>

## Specification

- `1.sql` : Find the names and cities of all public schools in Massachusetts.
- `2.sql` : Find the names of districts that are no longer operational.
- `3.sql` : Find the average per-pupil expenditure across all districts last year.
- `4.sql` : Find the 10 cities with the most public schools, ordered by the number of public schools and alphabetically for ties.
- `5.sql` : Find cities with 3 or fewer public schools, ordered by the number of public schools and alphabetically for ties.
- `6.sql` : Find the names of schools that reported a 100% graduation rate.
- `7.sql` : Find the names of all schools in the Cambridge school district.
- `8.sql` : Display the names of all school districts and the number of pupils enrolled in each.
- `9.sql` : Find the name(s) of the school district(s) with the least number of pupils.
- `10.sql` : Find the 10 public school districts with the highest per-pupil expenditures, including the names and per-pupil expenditure.
- `11.sql` : Display the names of schools, their per-pupil expenditure, and their graduation rate, sorted by per-pupil expenditure and school name for ties.
- `12.sql` : Find public school districts with above-average per-pupil expenditures and an above-average percentage of teachers rated “exemplary”. Sort by the percentage of teachers rated exemplary and per-pupil expenditure.
- `13.sql` : Pose a question about the data and answer it using at least one JOIN or subquery.

# Moneyball 

## Overview

In this mission, the task is assisting the Oakland Athletics baseball team in optimizing their player budget by analyzing player performances, salaries, and historical data. The data is stored in a SQLite database named `moneyball.db`. Through the use of SQL queries, valuable insights will be uncovered that could help the A's make strategic decisions in building their team.

<details>
    <summary>Schema</summary>
The database schema includes the following tables:

**Players**:
- `id` : Uniquely identifies each player
- `first_name` : The first name of the player
- `last_name` : The last name of the player
- `bats` : The side (“R” for right or “L” for left) the player bats on
- `throws` : The hand (“R” for right or “L” for left) the player throws with
- `weight` : The player’s weight in pounds
- `height` : The player’s height in inches
- `debut` : The date (expressed as YYYY-MM-DD) the player began their career in the MLB
- `final_game` : The date (expressed as YYYY-MM-DD) the player played their last game in the MLB
- `birth_year` : The year the player was born
- `birth_month` : The month (expressed as an integer) the player was born
- `birth_day` : The day the player was born
- `birth_city` : The city in which the player was born
- `birth_state` : The state in which the player was born
- `birth_country` : The country in which the player was born

**Teams**:
- `id` : Uniquely identifies each team
- `year` : The year the team was founded
- `name` : The name of the team
- `park` : Name of the park at which the team plays (or played)

**Performances**:
- `id` : Uniquely identifies each performance
- `player_id` : The ID of the player who generated the performance
- `team_id` : The ID of the team for which the player generated the performance
- `year` : The year in which the player generated the performance
- `G` : The number of games played by the player, for the given team, in the given year
- `AB` : The player’s number of “at bats” (i.e., times they went up to bat), for the given team, in the given year
- `H` : The player’s number of hits, for the given team, in the given year
- `2B` : The player’s number of doubles (two-base hits), for the given team, in the given year
- `3B` : The player’s number of doubles (three-base hits), for the given team, in the given year
- `HR` : The player’s number of home runs, for the given team, in the given year
- `RBI` : The player’s number of “runs batted in” (i.e., runs scored), for the given team, in the given year
- `SB` : The player’s number of stolen bases, for the given team, in the given year

**Salaries**:
- `id` : Uniquely identifies each salary 
- `player_id` : The ID of the player earning the salary
- `team_id` : The ID of the team paying the salary
- `year` : The year during which the salary was paid
- `salary` : The salary itself in US dollars (not adjusted for inflation)
</details>

## Specification

- `1.sql` : Find the average player salary by year, sorted in descending order.
- `2.sql` : Retrieve Cal Ripken Jr.'s salary history, sorted by year in descending order.
- `3.sql` : Find Ken Griffey Jr.'s home run history, sorted by year in descending order.
- `4.sql` : Find the 50 players paid the least in 2001, sorted by salary (lowest to highest), and alphabetically by name in case of ties.
- `5.sql` : Find all teams that Satchel Paige played for.
- `6.sql` : Return the top 5 teams in 2001, sorted by the total number of hits by players.
- `7.sql` : Find the player who's been paid the highest salary of all time in Major League Baseball.
- `8.sql` : Find the 2001 salary of the player who hit the most home runs in 2001.
- `9.sql` : Find the 5 lowest paying teams (by average salary) in 2001, sorted from least to greatest.
- `10.sql` : Retrieve a report detailing each player's name, salary for each year, and number of home runs for each year they've been playing.
- `11.sql` : Find the 10 least expensive players per hit in 2001, considering salary and number of hits.
- `12.sql` : Find players among the 10 least expensive per hit and per RBI in 2001.
