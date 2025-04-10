CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    category VARCHAR(255),
    price INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);


CREATE TABLE stock (
    stock_id INT PRIMARY KEY,
    product_id INT,
    wh_id INT,
    qty INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (wh_id) REFERENCES warehouse(wh_id)
);

CREATE TABLE warehouse (
    wh_id INT PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    created_at TIMESTAMP
);

CREATE TABLE transaction (
    trid INT PRIMARY KEY,
    product_id INT,
    wh_id INT,
    qty INT,
    tr_type ENNUM('IN','OUT'),
    tr_date TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (wh_id) REFERENCES warehouse(wh_id)
);

CREATE TABLE supplier (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(255),
    contact VARCHAR(255),
    phone VARCHAR(20),
    email VARCHAR(255),
    address VARCHAR(255),
    created_at TIMESTAMP
);

CREATE TABLE restock (
    res_id INT PRIMARY KEY,
    supplier_id INT,
    wh_id INT,
    qty INT,
    order_date TIMESTAMP,
    deliv_date TIMESTAMP,
    status ENUM('PENDING', 'DELIVERED', 'ARRIVED'),
    FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id),
    FOREIGN KEY (wh_id) REFERENCES warehouse(wh_id)
);