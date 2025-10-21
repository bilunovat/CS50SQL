# Census Taker

## Overview

As a census taker working for the Nepali government, the task is to process census data stored in `census.db` into views that the government can use for record-keeping.

<details>
    <summary>Schema</summary>
<br>
In `census.db` you’ll find a single table, `census`. In the `census` table, you’ll find the following columns:

- `id` : Uniquely identifies each census
- `district` : The name of the census record’s district
- `locality` : The name of the census record’s locality within the district
- `families` : The number of families associated with the census record
- `households` : The total number of households associated with the census record (multiple families may live in the same household)
- `population` : The population associated with the census record
- `male` : The number of people associated with the census record who have identified as male
- `female` : The number of people associated with the census record who have identified as female
</details>

## Specification 

In each of the corresponding `.sql` files, write SQL statements to create the following views:

### Rural

In `rural.sql`, create a view named `rural`. This view should contain all census records related to a rural municipality (identified by including “rural” in their name). Ensure the view contains all columns from the `census` table.

### Total

In `total.sql`, create a view named `total`. This view should contain the sums for each numeric column in `census`, across all districts and localities. Ensure the view contains the following columns:

- `families` : The sum of families from every locality in Nepal.
- `households` : The sum of households from every locality in Nepal.
- `population` : The sum of the population from every locality in Nepal.
- `male` : The sum of people identifying as male from every locality in Nepal.
- `female` : The sum of people identifying as female from every locality in Nepal.

### By District

In `by_district.sql`, create a view named `by_district`. This view should contain the sums for each numeric column in `census`, grouped by district. Ensure the view contains the following columns:

- `district` : The name of the district.
- `families` : The total number of families in the district.
- `households` : The total number of households in the district.
- `population` : The total population of the district.
- `male` : The total number of people identifying as male in the district.
- `female` : The total number of people identifying as female in the district.

### Most Populated

In `most_populated.sql`, create a view named `most_populated`. This view should contain, in order from greatest to least, the most populated districts in Nepal. Ensure the view contains the following columns:

- `district` : The name of the district.
- `families` : The total number of families in the district.
- `households` : The total number of households in the district.
- `population` : The total population of the district.
- `male` : The total number of people identifying as male in the district.
- `female` : The total number of people identifying as female in the district.

# The Private Eye

## Overview

Welcome to the mysterious world of the private detective! In this problem, you find yourself in the detective's study, deciphering a coded message left on their desk. The message seems to be encoded using a book cipher, and your task is to decode it.


<details>
    <summary>Schema</summary>
<br>
Within `private.db`, you’ll find a table, `sentences`. The `sentences` table contains all sentences in The Adventures of Sherlock Holmes. In particular, it contains the following columns:

- `id` : Uniquely identifies each sentence
- `sentence` : The sentence itself
</details>


## Specification

Your goal is to decode the cipher and create a view named `message` with a single column, `phrase`. The phrases in this column should represent the decoded message.

### Decoding Process

The encoding process involves triplets of numbers (e.g., 2, 1, 8), where:

1. The first number is the sentence number.
2. The second number is the character number within that sentence where the message begins.
3. The third number is the length of the message in characters.

Use the `substr` function in SQLite to extract substrings based on these triplets.

### View

In `private.sql`, write SQL statements to create a view named `message`. This view should have a single column, `phrase`. When the following SQL query is executed on `private.db`, your view should return a single column in which each row is one phrase in the message.

```sql
SELECT "phrase" FROM "message";
```

# Bed and Breakfast 

## Overview

Welcome to the Bed and Breakfast exploration! In this project, the task is to analyze data from AirBnB in the city of Boston. The data is stored in a SQLite database named `bnb.db` and includes information about listings, reviews, and availabilities.

<details>
    <summary>Schema</summary>
The database schema consists of three tables:

**Listings**
- `id` : Uniquely identifies each listing
- `property_type` : The type of the listing (e.g., “Entire rental unit”, “Private room in rental unit”, etc.)
- `host_name` : The AirBnB username of the listing’s host
- `accommodates` : The listing’s maximum number of occupants
- `bedrooms` : The listing’s number of bedrooms
- `description` : The description of the listing on AirBnB

**Reviews**
- `id` : Uniquely identifies each review
- `listing_id` : The ID of the listing which received the review
- `date` : The date the review was posted
- `reviewer_name` : The AirBnB username of the reviewer
- `commets` : The content of the review

**Availabilities**
- `id` : Uniquely identifies each 
- `listing_id` : The listing ID associated with the availability
- `date` : The date of the availability
- `available` : Whether the date is still available to be booked (`TRUE` or `FALSE`) 
- `price` : The price of staying on the given date

</details>

## Specification

The goal is to create several views that will help paint a clearer picture of AirBnB's influence on the city of Boston.

### No Descriptions

In `no_descriptions.sql`, create a view named `no_descriptions` that includes all columns from the `listings` table except for the `description` column.

### One-Bedrooms

In `one_bedrooms.sql`, create a view named `one_bedrooms` that contains all listings with exactly one bedroom. Ensure the view includes the following columns:

- `id`: Listing ID from the `listings` table.
- `property_type`: Property type from the `listings` table.
- `host_name`: Host name from the `listings` table.
- `accommodates`: Number of people accommodated from the `listings` table.

### Available

In `available.sql`, create a view named `available` that contains all dates available at all listings. Ensure the view includes the following columns:

- `id`: Listing ID from the `listings` table.
- `property_type`: Property type from the `listings` table.
- `host_name`: Host name from the `listings` table.
- `date`: Date of availability from the `availabilities` table.

### Frequently Reviewed

In `frequently_reviewed.sql`, create a view named `frequently_reviewed` that contains the 100 most frequently reviewed listings. Ensure the view includes the following columns:

- `id`: Listing ID from the `listings` table.
- `property_type`: Property type from the `listings` table.
- `host_name`: Host name from the `listings` table.
- `reviews`: Number of reviews the listing has received.

If any two listings have the same number of reviews, sort by `property_type` (in alphabetical order), followed by `host_name` (in alphabetical order).

### June Vacancies

In `june_vacancies.sql`, create a view named `june_vacancies` that contains all listings and the number of days in June 2023 that they remained vacant. Ensure the view includes the following columns:

- `id`: Listing ID from the `listings` table.
- `property_type`: Property type from the `listings` table.
- `host_name`: Host name from the `listings` table.
- `days_vacant`: Number of days in June 2023 that the listing was marked as available.
