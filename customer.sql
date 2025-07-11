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


-- DROP TABLE IF EXISTS `client_website_page_queries`;
CREATE TABLE `client_website_page_queries` (
    `id` INT PRIMARY KEY ,
    `client_website_id` INT ,
    `client_website_page_id` INT ,
    `query` TEXT,
    `clicks` INT ,
    `impressions` INT ,
    `extracted_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `extracted_to` DATETIME ,
    `extracted_from` DATETIME
);



