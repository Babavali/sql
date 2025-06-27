-- Customer table schema
CREATE TABLE customer (
    accountId INT PRIMARY KEY,
    addsetId INT,
    doctorId INT,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
   );

-- Leads table schema
CREATE TABLE leads (
    Id INT PRIMARY KEY,
    accountId INT,
    addsetId INT,
    doctorId INT,
    fieldData TEXT, -- Assuming fieldData is a text field; adjust type as needed
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (accountId) REFERENCES customer(accountId),
    FOREIGN KEY (doctorId) REFERENCES customer(doctorId)

   );
