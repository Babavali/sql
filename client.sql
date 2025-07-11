-- DROP TABLE IF EXISTS `client_website_page_queries`;
CREATE TABLE `clientwebsitepagequeries` (
    `id` INT PRIMARY KEY,
    `clientWebsiteId` INT,
    `clientWebsitePageId` INT,
    `query` TEXT,
    `clicks` INT,
    `impressions` INT,
    `extractedAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `extractedTo` DATETIME,
    `extractedFrom` DATETIME,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Customer table schema
--DROP TABLE IF EXISTS `customer`;
CREATE TABLE `clientwebsitepagequeries` (
    `accountId` INT PRIMARY KEY,
    `addsetId` INT,
    `doctorId` INT,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
