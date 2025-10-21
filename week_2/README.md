# ATL

## Overview

Welcome to the ATL project! In this task, you will create a SQLite database to help Hartsfield-Jackson International Airport (ATL) keep track of its passengers and their flights. The data is essential for managing passenger information, check-ins, airlines, and flights efficiently.

## Specification 

Create a folder named `atl` and within it, a file called `schema.sql`. Use this file to write the necessary SQL statements to design the ATL database according to the specified requirements.

### Passengers

- Store first name, last name, and age for each passenger.

### Check-Ins

- Log the exact date and time of passenger check-ins.
- Record the associated flight for each check-in.

### Airlines

- Track the name of each airline operating at ATL.
- Include the concourse (section) where the airline operates.

### Flights

- Capture flight details, including flight number, operating airline, departure airport code, destination airport code, expected departure date and time, and expected arrival date and time.

## Sample Data

Ensure your database can represent the following sample data:

- A passenger, Amelia Earhart, who is 39 years old.
- An airline, Delta, operating out of concourses A, B, C, D, and T.
- A flight, Delta Flight 300, departing from ATL on August 3rd, 2023, at 6:46 PM, and arriving at BOS on August 3rd, 2023, at 9:09 PM.
- A check-in for Amelia Earhart, for Delta Flight 300, on August 3rd, 2023, at 3:03 PM.

# Happy To Connect

## Overview

Welcome to the Happy to Connect project! In this task, you will create a SQLite database to help LinkedIn manage its users, schools, companies, and connections efficiently. The data is essential for facilitating professional networking and connections on the platform.

## Specification

### Users

- Store first name, last name, username, and password for each user.

### Schools

- Capture the name, type, location, and founding year for each school.

### Companies

- Track the name, industry, and location for each company.

### Connections

- Facilitate connections between users, schools, and companies.

## Sample Data

Ensure your database can represent the following sample data:

- User: Claudine Gay, with the username "claudine" and password "password".
- User: Reid Hoffman, with the username "reid" and password "password".
- School: Harvard University, a university located in Cambridge, Massachusetts, founded in 1636.
- Company: LinkedIn, a technology company headquartered in Sunnyvale, California.
- Connection: Claudine Gay's connection with Harvard, pursuing a PhD from January 1st, 1993, to December 31st, 1998.
- Connection: Reid Hoffman's connection with LinkedIn, with the title "CEO and Chairman," from January 1st, 2003, to February 1st, 2007.

# Union Square Donuts 

## Overview

Welcome to the Union Square Donuts project! In this task, you will create a SQLite database for Union Square Donuts, a popular donut shop in Boston, Brookline, and Somerville. The goal is to design a database that can efficiently manage day-to-day operations, including ingredients, donuts, orders, and customer information.

## Specification

### Ingredients

- Track various ingredients such as flour, yeast, oil, butter, and sugar.
- Include the price Union Square Donuts pays per unit of each ingredient.

### Donuts

- Include information about each donut, such as its name, gluten-free status, and price.
- Associate each donut with the ingredients used in its preparation.

### Orders

- Keep track of both in-person and online orders.
- Store an order number, the donuts included in the order, and the customer who placed the order.

### Customers

- Maintain information about customers, including their first and last names.
- Keep a history of the orders each customer has made.

## Sample Data

Ensure your database can represent the following sample data:

- Ingredients: Cocoa (cost: $5.00 per pound), Sugar (cost: $2.00 per pound).
- Donuts: "Belgian Dark Chocolate" (not gluten-free, $4.00 per donut) with ingredients Cocoa, Flour, Buttermilk, Sugar. "Back-To-School Sprinkles" (not gluten-free, $4.00 per donut) with ingredients Flour, Buttermilk, Sugar, Sprinkles.
- Order 1 from Luis Singh for 3 Belgian Dark Chocolate donuts and 2 Back-To-School Sprinkles donuts.
