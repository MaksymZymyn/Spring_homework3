-- Adding companies
INSERT INTO employers (name, address) VALUES ('Company A', 'Address A');
INSERT INTO employers (name, address) VALUES ('Company B', 'Address B');
INSERT INTO employers (name, address) VALUES ('Company C', 'Address C');

-- Adding customers
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('John Doe', 'john@example.com', 30, '123456789', 'password1');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Jane Smith', 'jane@example.com', 25, '987654321', 'password2');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Michael Johnson', 'michael@example.com', 35, '456123789', 'password3');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Sarah Brown', 'sarah@example.com', 28, '654789321', 'password4');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Chris Wilson', 'chris@example.com', 40, '123789654', 'password5');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Emma Lee', 'emma@example.com', 32, '789321654', 'password6');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('David Taylor', 'david@example.com', 22, '321654987', 'password7');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Olivia Anderson', 'olivia@example.com', 29, '987321654', 'password8');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('William Martinez', 'william@example.com', 27, '456987321', 'password9');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Sophia Hernandez', 'sophia@example.com', 33, '321987456', 'password10');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Daniel Thompson', 'daniel@example.com', 31, '654321987', 'password11');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Ava Gonzalez', 'ava@example.com', 38, '789654321', 'password12');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('James Perez', 'james@example.com', 26, '456321987', 'password13');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Isabella Roberts', 'isabella@example.com', 24, '987654123', 'password14');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Joseph Walker', 'joseph@example.com', 36, '654123987', 'password15');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Mia Hall', 'mia@example.com', 23, '321987654', 'password16');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Alexander Young', 'alexander@example.com', 39, '987654321', 'password17');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Charlotte King', 'charlotte@example.com', 37, '456789123', 'password18');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Ethan Scott', 'ethan@example.com', 34, '789123654', 'password19');
INSERT INTO customers (name, email, age, phone_number, password) VALUES ('Emily Adams', 'emily@example.com', 21, '123654987', 'password20');

-- Adding accounts for customers
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 1000.00, (SELECT id FROM customers WHERE name = 'John Doe'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 500.00, (SELECT id FROM customers WHERE name = 'John Doe'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 2000.00, (SELECT id FROM customers WHERE name = 'Jane Smith'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 1500.00, (SELECT id FROM customers WHERE name = 'Michael Johnson'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 1000.00, (SELECT id FROM customers WHERE name = 'Sarah Brown'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 500.00, (SELECT id FROM customers WHERE name = 'Chris Wilson'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 2000.00, (SELECT id FROM customers WHERE name = 'Emma Lee'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 1500.00, (SELECT id FROM customers WHERE name = 'David Taylor'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 1000.00, (SELECT id FROM customers WHERE name = 'Olivia Anderson'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 500.00, (SELECT id FROM customers WHERE name = 'William Martinez'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 2000.00, (SELECT id FROM customers WHERE name = 'Sophia Hernandez'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 1500.00, (SELECT id FROM customers WHERE name = 'Daniel Thompson'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 1000.00, (SELECT id FROM customers WHERE name = 'Ava Gonzalez'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 500.00, (SELECT id FROM customers WHERE name = 'James Perez'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 2000.00, (SELECT id FROM customers WHERE name = 'Isabella Roberts'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 1500.00, (SELECT id FROM customers WHERE name = 'Joseph Walker'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 1000.00, (SELECT id FROM customers WHERE name = 'Mia Hall'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 500.00, (SELECT id FROM customers WHERE name = 'Alexander Young'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 2000.00, (SELECT id FROM customers WHERE name = 'Charlotte King'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'EUR', 1500.00, (SELECT id FROM customers WHERE name = 'Ethan Scott'));
INSERT INTO accounts (number, currency, balance, customer_id) VALUES (UUID(), 'USD', 1000.00, (SELECT id FROM customers WHERE name = 'Emily Adams'));

-- Establishing relationships between customers and companies
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'John Doe'), (SELECT id FROM employers WHERE name = 'Company A'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'John Doe'), (SELECT id FROM employers WHERE name = 'Company B'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Jane Smith'), (SELECT id FROM employers WHERE name = 'Company B'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Michael Johnson'), (SELECT id FROM employers WHERE name = 'Company C'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Sarah Brown'), (SELECT id FROM employers WHERE name = 'Company A'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Chris Wilson'), (SELECT id FROM employers WHERE name = 'Company B'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Emma Lee'), (SELECT id FROM employers WHERE name = 'Company C'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'David Taylor'), (SELECT id FROM employers WHERE name = 'Company A'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Olivia Anderson'), (SELECT id FROM employers WHERE name = 'Company B'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'William Martinez'), (SELECT id FROM employers WHERE name = 'Company C'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Sophia Hernandez'), (SELECT id FROM employers WHERE name = 'Company A'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Daniel Thompson'), (SELECT id FROM employers WHERE name = 'Company B'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Ava Gonzalez'), (SELECT id FROM employers WHERE name = 'Company C'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'James Perez'), (SELECT id FROM employers WHERE name = 'Company A'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Isabella Roberts'), (SELECT id FROM employers WHERE name = 'Company B'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Joseph Walker'), (SELECT id FROM employers WHERE name = 'Company C'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Mia Hall'), (SELECT id FROM employers WHERE name = 'Company A'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Alexander Young'), (SELECT id FROM employers WHERE name = 'Company B'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Charlotte King'), (SELECT id FROM employers WHERE name = 'Company C'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Ethan Scott'), (SELECT id FROM employers WHERE name = 'Company A'));
INSERT INTO customer_in_employers (customer_id, employer_id) VALUES ((SELECT id FROM customers WHERE name = 'Emily Adams'), (SELECT id FROM employers WHERE name = 'Company B'));
