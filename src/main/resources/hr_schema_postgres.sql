BEGIN;

DROP TABLE IF EXISTS customer_in_employers;
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS employers;
DROP TABLE IF EXISTS customers;

-- Creating table for the Customer entity
CREATE TABLE customers (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(255) NOT NULL,
                           email VARCHAR(255) NOT NULL UNIQUE,
                           age INTEGER NOT NULL,
                           phone_number VARCHAR(255) NOT NULL,
                           password VARCHAR(255) NOT NULL,
                           creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                           last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creating table for the Account entity with UUID for number
CREATE TABLE accounts (
                          id SERIAL PRIMARY KEY,
                          number UUID DEFAULT uuid_generate_v4() NOT NULL UNIQUE,
                          currency VARCHAR(3) NOT NULL,
                          balance DOUBLE PRECISION NOT NULL,
                          customer_id BIGINT NOT NULL,
                          creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Ensure the extension for UUID is enabled
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Creating table for the Employer entity
CREATE TABLE employers (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(255) NOT NULL,
                           address VARCHAR(255) NOT NULL UNIQUE,
                           creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                           last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creating many-to-many relationship table between Customers and Employers
CREATE TABLE customer_in_employers (
                                       customer_id BIGINT NOT NULL,
                                       employer_id BIGINT NOT NULL,
                                       PRIMARY KEY (customer_id, employer_id),
                                       FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE,
                                       FOREIGN KEY (employer_id) REFERENCES employers(id) ON DELETE CASCADE
);

COMMIT;
