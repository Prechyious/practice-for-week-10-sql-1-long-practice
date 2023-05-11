-- Your code here
INSERT INTO customers (name, phone)
VALUES
    ("Rachel", 111111111);

UPDATE customers
SET points = points + 1
    WHERE name = "Rachel";
INSERT INTO coffee_orders DEFAULT VALUES;


INSERT INTO customers (name, email, phone)
VALUES
    ("Monica", "monica@friends.show", 222222222),
    ("Phoebe", "phoebe@friends.show", 333333333);

-- Phoebe purchases three coffees.
UPDATE customers
    SET points = points + 3
    WHERE name = "Phoebe";
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;

-- Rachel and Monica each purchase four coffees.
UPDATE customers
    SET points = points + 4
    WHERE name = "Monica";
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;

UPDATE customers
    SET points = points + 4
    WHERE name = "Rachel";
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;

-- Monica wants to know her new point total
SELECT name, points FROM customers WHERE name = "Monica";

SELECT name, points FROM customers WHERE name = "Rachel";
UPDATE customers
    SET points = points - 10
    WHERE name = "Rachel";
INSERT INTO coffee_orders (is_redeemed)
    VALUES (1);

-- Three new customers joined the loyalty program
INSERT INTO customers (name, email)
VALUES
    ("Joey", "joey@friends.show"),
    ("Chandler", "chandler@friends.show"),
    ("Ross", "ross@friends.show");

-- Ross purchases six coffees.
UPDATE customers
    SET points = points + 6
    WHERE name = "Ross";
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;

-- Monica purchases three coffees.
UPDATE customers
    SET points = points + 3
    WHERE name = "Monica";
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;

SELECT name, points FROM customers WHERE name = "Phoebe";
UPDATE customers
    SET points = points + 1
    WHERE name = "Phoebe";
INSERT INTO coffee_orders DEFAULT VALUES;

DELETE FROM coffee_orders WHERE id = 18;
DELETE FROM coffee_orders WHERE id = 19;
UPDATE customers
    SET points = points - 2
    WHERE name = "Ross";

-- Joey purchases two coffees
UPDATE customers
    SET points = points + 2
    WHERE name = "Joey";
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;

SELECT name, points FROM customers WHERE name = "Monica";
UPDATE customers
    SET points = points - 10
    WHERE name = "Monica";
INSERT INTO coffee_orders (is_redeemed)
    VALUES (1);

-- Chandler wants to delete his loyalty program account.
DELETE FROM customers WHERE name = "Chandler";

SELECT name, points FROM customers WHERE name = "Ross";
UPDATE customers
    SET points = points + 1
    WHERE name = "Ross";
INSERT INTO coffee_orders DEFAULT VALUES;

SELECT name, points FROM customers WHERE name = "Joey";
UPDATE customers
    SET points = points + 1
    WHERE name = "Joey";
INSERT INTO coffee_orders DEFAULT VALUES;

-- Phoebe wants to change her email
UPDATE customers
    SET email = "p_as_in_phoebe@friends.show"
    WHERE name = "Phoebe";

SELECT * FROM customers;
SELECT * FROM coffee_orders;
