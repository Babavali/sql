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
