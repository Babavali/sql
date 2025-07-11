-- Customer table schema
--DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
    `accountId` INT PRIMARY KEY,
    `addsetId` INT,
    `doctorId` INT,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Leads table schema
--DROP TABLE IF EXISTS `leads`;
CREATE TABLE `leads` (
    `Id` INT PRIMARY KEY,
    `accountId` INT,
    `addsetId` INT,
    `doctorId` INT,
    `fieldData` TEXT, -- Assuming fieldData is a text field; adjust type as needed
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (`accountId`) REFERENCES `customer`(`accountId`),
    FOREIGN KEY (`doctorId`) REFERENCES `customer`(`doctorId`)
);
