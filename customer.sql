-- Customer table schema
--DROP TABLE IF EXISTS `customer`;
CREATE TABLE `clientwebsitepagequeries` (
    `accountId` INT PRIMARY KEY,
    `addsetId` INT,
    `doctorId` INT,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

