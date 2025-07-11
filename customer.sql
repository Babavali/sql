-- Customer table schema
--DROP TABLE IF EXISTS `customer`;
CREATE TABLE `client_website_page_queries` (
    `accountId` INT PRIMARY KEY,
    `addsetId` INT,
    `doctorId` INT,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
