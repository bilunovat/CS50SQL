CREATE TABLE IF NOT EXISTS ingredients (
    ingredient_id INTEGER,
    name TEXT NOT NULL,
    price_per_unit DOUBLE NOT NULL CHECK (price_per_unit > 0.00),
    unit TEXT NOT NULL,
    PRIMARY KEY (ingredient_id)
);

CREATE TABLE IF NOT EXISTS donuts (
    donut_id INTEGER,
    name TEXT NOT NULL,
    is_gluten_free INTEGER NOT NULL CHECK (is_gluten_free IN (1, 0)),
    price DOUBLE NOT NULL CHECK (price > 0.00),
    PRIMARY KEY (donut_id)
);

CREATE TABLE IF NOT EXISTS ingredients_in_donuts (
    ingredient_id INTEGER,
    donut_id INTEGER,
    quantity_needed DOUBLE NOT NULL CHECK (quantity_needed > 0.00),
    PRIMARY KEY (ingredient_id, donut_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients (ingredient_id),
    FOREIGN KEY (donut_id) REFERENCES donuts (donut_id)
);

CREATE TABLE IF NOT EXISTS orders (
    order_no INTEGER,
    customer_id INTEGER,
    PRIMARY KEY (order_no),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id INTEGER,
    first_name TEXT NOT NULL,
    last_name TEXT,
    PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS order_items (
    order_no INTEGER,
    donut_id INTEGER,
    quantity INTEGER NOT NULL CHECK (quantity > 0),
    PRIMARY KEY (order_no, donut_id),
    FOREIGN KEY (order_no) REFERENCES orders (order_no),
    FOREIGN KEY (donut_id) REFERENCES donuts (donut_id)
);
