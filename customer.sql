-- Customer table schema
--DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
    `accountId` INT PRIMARY KEY
);

-- DROP TABLE IF EXISTS `client_website_page_queries`;
CREATE TABLE `clientWebsitePageQueries` (
    `id` INT PRIMARY KEY ,
    `clientWebsiteId` INT ,
    `clientWebsitePageId` INT ,
    `query` TEXT,
    `clicks` INT ,
    `impressions` INT ,
    `extractedAt` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `extractedTo` DATETIME ,
    `extractedFrom` DATETIME
);



