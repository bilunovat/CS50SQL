# Cyberchase

## Overview

In this project, the task was to interact with a SQLite database named `cyberchase.db`. The database contains information about the episodes of the educational children's television series Cyberchase.

<details>
    <summary>Schema</summary>
    The database has a single table called `episodes` with the following columns:

- `id` : Uniquely identifies each episode.
- `season` : The season number in which the episode aired.
- `episode_in_season` : The episode's number within its given season.
- `title` : The episode's title.
- `topic` : Identifies the ideas the episode aimed to teach.
- `air_date` : The date (YYYY-MM-DD) on which the episode aired or was published.
- `production_code` : The unique ID used by PBS to refer to each episode internally.
</details>



## Specification

- `1.sql` : List the titles of all episodes in Cyberchase’s original season, Season 1.
- `2.sql` : List the season number and title of the first episode of every season.
- `3.sql` : Find the production code for the episode “Hackerized!”.
- `4.sql` : Find the titles of episodes that do not yet have a listed topic.
- `5.sql` : Find the title of the holiday episode that aired on December 31st, 2004.
- `6.sql` : List the titles of episodes from season 6 (2008) that were released early, in 2007.
- `7.sql` : List the titles and topics of all episodes teaching fractions.
- `8.sql` : Count the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.
- `9.sql` : Count the number of episodes released in Cyberchase’s first 6 years, from 2002 to 2007, inclusive.
- `10.sql` : List the ids, titles, and production codes of all episodes. Order the results by production code, from earliest to latest.
- `11.sql` : List the titles of episodes from season 5, in reverse alphabetical order.
- `12.sql` : Count the number of unique episode titles.
- `13.sql` : Custom query for exploring a specific question involving at least one condition.

# 36 Views

## Overview

This repository contains SQL queries to retrieve information from the 36 Views database (`views.db`). The database contains details on 72 woodblock prints created by Japanese artists Katsushika Hokusai and Utagawa Hiroshige, each depicting different views of Mount Fuji. The prints include statistics such as average color, brightness, contrast, and entropy.

<details>
    <summary>Schema</summary>
In `views.db`, you'll find a single table, `views`, with the following columns:

- `id` : Uniquely identifies each row (print) in the table.
- `print_number` : Identifies the number of the print in either Hokusai’s or Hiroshige’s series.
- `english_title` : English title of the print.
- `japanese_title` : Japanese title of the print.
- `artist` : Last name of the print’s artist.
- `average_color` : Hexadecimal representation of the color found by averaging the colors of each pixel in the image.
- `brightness` : Number corresponding to the overall lightness or darkness of the image.
- `contrast` : Number representing the extent of the difference between light and dark areas of the image.
- `entropy` : Measure used to quantify the complexity of the artwork.
</details>

## Specification

- `1.sql` : List the Japanese and English titles of each print side by side.
- `2.sql` : List the average colors of prints by Hokusai that include "river" in the English title.
- `3.sql` : Count how many prints by Hokusai include "Fuji" in the English title.
- `4.sql` : Count how many prints by Hiroshige have English titles that refer to the "Eastern Capital."
- `5.sql` : Find the highest contrast value of prints by Hokusai.
- `6.sql` : Find the average entropy of prints by Hiroshige, rounded to two decimal places.
- `7.sql` : List the English titles of the 5 brightest prints by Hiroshige, from most to least bright.
- `8.sql` : List the English titles of the 5 prints with the least contrast by Hokusai, from least to highest contrast.
- `9.sql` : Find the English title and artist of the print with the highest brightness.
- `10.sql` : Custom query involving AS, WHERE condition, and ORDER BY for additional insights.

# Normals 

## Overview

In this project, the task was to explore Climate Normal data related to ocean temperatures around the world. The data is stored in a SQLite database named `normals.db` and includes information about ocean surface temperatures at various depths for different coordinates.

<details>
    <summary>Schema</summary>
The database schema consists of a single table called `normals` with the following columns:

- `id` : Uniquely identifies each row (coordinate) in the table.
- `latitude` : The degree of latitude (expressed in decimal format) for the coordinate.
- `longitude` : The degree of longitude (expressed in decimal format) for the coordinate.
- `0m` : The normal ocean surface temperature (in degrees Celsius) at 0 meters of depth.
- `5m` : The normal ocean temperature at 5 meters of depth.
- `10m` : The normal ocean temperature at 10 meters of depth.
- And observations continue until `5500m`, representing 5500 meters of depth for some coordinates.
</details>

## Specification

- `1.sql` : Find the normal ocean surface temperature in the Gulf of Maine, off the coast of Massachusetts. Look at the data associated with 42.5° latitude and -69.5° longitude.
- `2.sql` : Find the normal temperature of the deepest sensor near the Gulf of Maine, at the same coordinate above (225 meters of depth).
- `3.sql` : Choose a location of your own and find the normal temperature at 0 meters, 100 meters, and 200 meters.
- `4.sql` : Find the lowest normal ocean surface temperature.
- `5.sql` : Find the highest normal ocean surface temperature.
- `6.sql` : Return all normal ocean temperatures at 50m of depth, along with their respective coordinates, within the Arabian Sea.
- `7.sql` : Find the average ocean surface temperature along the equator.
- `8.sql` : Find the 10 locations with the lowest normal ocean surface temperature, sorted coldest to warmest.
- `9.sql` : Find the 10 locations with the highest normal ocean surface temperature, sorted warmest to coldest.
- `10.sql` : Determine how many points of latitude have at least one data point.

# Players 

## Overview

In this project, in database `players.db` there's information about Major League Baseball (MLB) players who have played from 1871 to 2023. It includes details about players' names, batting and throwing preferences, physical attributes, debut and final game dates, and birth information.

<details>
    <summary>Schema</summary>
In the `players.db` database, you will find a single table called `players` with the following columns:

- `id` : Uniquely identifies each row (player) in the table.
- `first_name` : The first name of the player.
- `last_name` : The last name of the player.
- `bats` : The side the player bats on (R for right or L for left).
- `throws` : The hand the player throws with (R for right or L for left).
- `weight` : The player’s weight in pounds.
- `height` : The player’s height in inches.
- `debut` : The date the player began their career in the MLB (expressed as YYYY-MM-DD).
- `final_game` : The date the player played their last game in the MLB (expressed as YYYY-MM-DD).
- `birth_year` : The year the player was born.
- `birth_month` : The month (expressed as an integer) the player was born.
- `birth_day` : The day the player was born.
- `birth_city` : The city in which the player was born.
- `birth_state` : The state in which the player was born.
- `birth_country` : The country in which the player was born.
</details>

## Specification

- `1.sql` : Find the hometown (including city, state, and country) of Jackie Robinson.
- `2.sql` : Find the side (e.g., right or left) Babe Ruth hit.
- `3.sql` : Find the ids of rows for which a value in the column debut is missing.
- `4.sql` : Find the first and last names of players who were not born in the United States. Sort the results alphabetically by first name, then by last name.
- `5.sql` : Return the first and last names of all right-handed batters. Sort the results alphabetically by first name, then by last name.
- `6.sql` : Return the first name, last name, and debut date of players born in Pittsburgh, Pennsylvania (PA). Sort the results first by debut date—from most recent to oldest—then alphabetically by first name, followed by last name.
- `7.sql` : Count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.
- `8.sql` : Find the average height and weight, rounded to two decimal places, of baseball players who debuted on or after January 1st, 2000. Return the columns with the name “Average Height” and “Average Weight”, respectively.
- `9.sql` : Find the players who played their final game in the MLB in 2022. Sort the results alphabetically by first name, then by last name.
- `10.sql` : Answer a custom question. This query should make use of AS to rename a column, involve at least one condition using WHERE, and sort by at least one column using ORDER BY.