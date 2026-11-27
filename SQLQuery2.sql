CREATE TABLE Customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    segment VARCHAR(100),
    join_date VARCHAR(50),
    region VARCHAR(100),
    status VARCHAR(50) CHECK (status IN ('Active', 'Inactive'))
);

CREATE TABLE Vendors (
    vendor_id VARCHAR(50) PRIMARY KEY,
    vendor_name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    region VARCHAR(100),
    active VARCHAR(1) CHECK (active IN ('Y', 'N'))
);

CREATE TABLE Headcount (
    employee_id VARCHAR(50) PRIMARY KEY,
    employee_name VARCHAR(255) NOT NULL,
    business_unit VARCHAR(100),
    join_date VARCHAR(50),
    status VARCHAR(50) CHECK (status IN ('Active', 'Inactive')),
    region VARCHAR(100),
    cost_to_company INT
);

CREATE TABLE Budget (
    year INT NOT NULL,
    month INT NOT NULL CHECK (month BETWEEN 1 AND 12),
    business_unit VARCHAR(100) NOT NULL,
    budgeted_revenue INT,
    budgeted_expense INT,
    PRIMARY KEY (year, month, business_unit)
);