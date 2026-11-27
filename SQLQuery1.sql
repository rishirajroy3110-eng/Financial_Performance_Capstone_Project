CREATE TABLE Financial_Transactions (
    transaction_id VARCHAR(50) PRIMARY KEY,
    transaction_date VARCHAR(50) NOT NULL,
    amount DECIMAL(15, 2) NOT NULL,
    account_type VARCHAR(50),
    category VARCHAR(100),
    business_unit VARCHAR(100),
    region VARCHAR(100),
    customer_id VARCHAR(50),
    vendor_id VARCHAR(50),
    description VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (vendor_id) REFERENCES Vendors(vendor_id)
);