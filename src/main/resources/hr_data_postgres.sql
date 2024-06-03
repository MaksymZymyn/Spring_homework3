BEGIN;

-- Adding companies
INSERT INTO employers (name, address)
VALUES ('Company A', 'Address A'),
       ('Company B', 'Address B'),
       ('Company C', 'Address C');

-- Adding customers
INSERT INTO customers (name, email, age, phone_number, password)
VALUES ('John Doe', 'john@example.com', 30, '123456789', 'password1'),
       ('Jane Smith', 'jane@example.com', 25, '987654321', 'password2'),
       ('Michael Johnson', 'michael@example.com', 35, '456123789', 'password3'),
       ('Sarah Brown', 'sarah@example.com', 28, '654789321', 'password4'),
       ('Chris Wilson', 'chris@example.com', 40, '123789654', 'password5'),
       ('Emma Lee', 'emma@example.com', 32, '789321654', 'password6'),
       ('David Taylor', 'david@example.com', 22, '321654987', 'password7'),
       ('Olivia Anderson', 'olivia@example.com', 29, '987321654', 'password8'),
       ('William Martinez', 'william@example.com', 27, '456987321', 'password9'),
       ('Sophia Hernandez', 'sophia@example.com', 33, '321987456', 'password10'),
       ('Daniel Thompson', 'daniel@example.com', 31, '654321987', 'password11'),
       ('Ava Gonzalez', 'ava@example.com', 38, '789654321', 'password12'),
       ('James Perez', 'james@example.com', 26, '456321987', 'password13'),
       ('Isabella Roberts', 'isabella@example.com', 24, '987654123', 'password14'),
       ('Joseph Walker', 'joseph@example.com', 36, '654123987', 'password15'),
       ('Mia Hall', 'mia@example.com', 23, '321987654', 'password16'),
       ('Alexander Young', 'alexander@example.com', 39, '987654321', 'password17'),
       ('Charlotte King', 'charlotte@example.com', 37, '456789123', 'password18'),
       ('Ethan Scott', 'ethan@example.com', 34, '789123654', 'password19'),
       ('Emily Adams', 'emily@example.com', 21, '123654987', 'password20');

-- Adding accounts for customers
INSERT INTO accounts (currency, balance, customer_id)
VALUES ('USD', 1000.00, (SELECT id FROM customers WHERE name = 'John Doe')),
       ('EUR', 500.00, (SELECT id FROM customers WHERE name = 'John Doe')),
       ('USD', 2000.00, (SELECT id FROM customers WHERE name = 'Jane Smith')),
       ('EUR', 1500.00, (SELECT id FROM customers WHERE name = 'Michael Johnson')),
       ('USD', 1000.00, (SELECT id FROM customers WHERE name = 'Sarah Brown')),
       ('EUR', 500.00, (SELECT id FROM customers WHERE name = 'Chris Wilson')),
       ('USD', 2000.00, (SELECT id FROM customers WHERE name = 'Emma Lee')),
       ('EUR', 1500.00, (SELECT id FROM customers WHERE name = 'David Taylor')),
       ('USD', 1000.00, (SELECT id FROM customers WHERE name = 'Olivia Anderson')),
       ('EUR', 500.00, (SELECT id FROM customers WHERE name = 'William Martinez')),
       ('USD', 2000.00, (SELECT id FROM customers WHERE name = 'Sophia Hernandez')),
       ('EUR', 1500.00, (SELECT id FROM customers WHERE name = 'Daniel Thompson')),
       ('USD', 1000.00, (SELECT id FROM customers WHERE name = 'Ava Gonzalez')),
       ('EUR', 500.00, (SELECT id FROM customers WHERE name = 'James Perez')),
       ('USD', 2000.00, (SELECT id FROM customers WHERE name = 'Isabella Roberts')),
       ('EUR', 1500.00, (SELECT id FROM customers WHERE name = 'Joseph Walker')),
       ('USD', 1000.00, (SELECT id FROM customers WHERE name = 'Mia Hall')),
       ('EUR', 500.00, (SELECT id FROM customers WHERE name = 'Alexander Young')),
       ('USD', 2000.00, (SELECT id FROM customers WHERE name = 'Charlotte King')),
       ('EUR', 1500.00, (SELECT id FROM customers WHERE name = 'Ethan Scott')),
       ('USD', 1000.00, (SELECT id FROM customers WHERE name = 'Emily Adams'));

-- Establishing relationships between customers and companies
INSERT INTO customer_in_employers (customer_id, employer_id)
VALUES ((SELECT id FROM customers WHERE name = 'John Doe'), (SELECT id FROM employers WHERE name = 'Company A')),
       ((SELECT id FROM customers WHERE name = 'John Doe'), (SELECT id FROM employers WHERE name = 'Company B')),
       ((SELECT id FROM customers WHERE name = 'Jane Smith'), (SELECT id FROM employers WHERE name = 'Company B')),
       ((SELECT id FROM customers WHERE name = 'Michael Johnson'), (SELECT id FROM employers WHERE name = 'Company C')),
       ((SELECT id FROM customers WHERE name = 'Sarah Brown'), (SELECT id FROM employers WHERE name = 'Company A')),
       ((SELECT id FROM customers WHERE name = 'Chris Wilson'), (SELECT id FROM employers WHERE name = 'Company B')),
       ((SELECT id FROM customers WHERE name = 'Emma Lee'), (SELECT id FROM employers WHERE name = 'Company C')),
       ((SELECT id FROM customers WHERE name = 'David Taylor'), (SELECT id FROM employers WHERE name = 'Company A')),
       ((SELECT id FROM customers WHERE name = 'Olivia Anderson'), (SELECT id FROM employers WHERE name = 'Company B')),
       ((SELECT id FROM customers WHERE name = 'William Martinez'), (SELECT id FROM employers WHERE name = 'Company C')),
       ((SELECT id FROM customers WHERE name = 'Sophia Hernandez'), (SELECT id FROM employers WHERE name = 'Company A')),
       ((SELECT id FROM customers WHERE name = 'Daniel Thompson'), (SELECT id FROM employers WHERE name = 'Company B')),
       ((SELECT id FROM customers WHERE name = 'Ava Gonzalez'), (SELECT id FROM employers WHERE name = 'Company C')),
       ((SELECT id FROM customers WHERE name = 'James Perez'), (SELECT id FROM employers WHERE name = 'Company A')),
       ((SELECT id FROM customers WHERE name = 'Isabella Roberts'), (SELECT id FROM employers WHERE name = 'Company B')),
       ((SELECT id FROM customers WHERE name = 'Joseph Walker'), (SELECT id FROM employers WHERE name = 'Company C')),
       ((SELECT id FROM customers WHERE name = 'Mia Hall'), (SELECT id FROM employers WHERE name = 'Company A')),
       ((SELECT id FROM customers WHERE name = 'Alexander Young'), (SELECT id FROM employers WHERE name = 'Company B')),
       ((SELECT id FROM customers WHERE name = 'Charlotte King'), (SELECT id FROM employers WHERE name = 'Company C')),
       ((SELECT id FROM customers WHERE name = 'Ethan Scott'), (SELECT id FROM employers WHERE name = 'Company A')),
       ((SELECT id FROM customers WHERE name = 'Emily Adams'), (SELECT id FROM employers WHERE name = 'Company B'));

-- Create indexes
CREATE INDEX idx_accounts_customer_id ON accounts(customer_id);
CREATE INDEX idx_customer_in_employers_customer_id ON customer_in_employers(customer_id);
CREATE INDEX idx_customer_in_employers_employer_id ON customer_in_employers(employer_id);

COMMIT;
