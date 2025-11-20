
-- *** The Lost Letter ***

-- To get the package ids sent from 900 Somerville Avenue : 384 Congratulatory letter
SELECT id, contents
FROM packages
WHERE from_address_id = (
    SELECT id
    FROM addresses
    WHERE address = "900 Somerville Avenue");

-- To get info from scans of he letter : 54 - pick - 1, 94 - drop - 1
SELECT id, action
FROM scans
WHERE package_id = 384;

-- To get address of a drop
SELECT address, type
FROM addresses
WHERE id = (
    SELECT address_id
    FROM scans
    WHERE id = 94
);

-- OR --

SELECT addr_2.address
FROM addresses
JOIN packages ON addresses.id = packages.from_address_id
JOIN addresses AS addr_2 ON packages.to_address_id = addr_2.id
WHERE addresses.address = "900 Somerville Avenue" AND packages.contents = "Congratulatory letter";

-- OR --

SELECT address
FROM addresses
WHERE id = (
    SELECT to_address_id
    FROM packages
    WHERE contents = "Congratulatory letter" AND from_address_id = (
        SELECT id
        FROM addresses
        WHERE address = "900 Somerville Avenue"
    )
);

-- *** The Devious Delivery ***
-- Find addresses that have no from address, get id, content and to address : 5098, duck debugger, 50
SELECT id, contents, to_address_id
FROM packages
WHERE from_address_id IS NULL;

-- Check where was the packege at drop action
SELECT address_id, action
FROM scans
WHERE package_id = 5098

-- Check address and type
SELECT address, type
FROM addresses
WHERE id = 348;

-- *** The Forgotten Gift ***
-- To know the contents and package id : Flowers, 9523
SELECT *
FROM packages
JOIN addresses ON packages.from_address_id = addresses.id
WHERE packages.from_address_id = (
    SELECT id
    FROM addresses
    WHERE address = "109 Tileston Street"
);

-- Check what happened to the package
SELECT *
FROM scans
WHERE package_id = 9523;

-- To see the driver's name who picked it up last
SELECT name
FROM drivers
WHERE id = 17;
