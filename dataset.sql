

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers VALUES
(1, 'Karthik', 'Vijayawada'),
(2, 'Ravi', 'Hyderabad'),
(3, 'Anita', 'Chennai');

INSERT INTO orders VALUES
(101, 1, '2024-01-10', 500),
(102, 2, '2024-01-11', 700),
(103, 1, '2024-01-15', 300),
(104, 3, '2024-01-20', 900),
(105, 2, '2024-01-25', 400);