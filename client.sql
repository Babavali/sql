-- DROP TABLE IF EXISTS `client_website_page_queries`;
CREATE TABLE `client_website_page_queries` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `client_website_id` INT NOT NULL,
    `client_website_page_id` INT NOT NULL,
    `query` VARCHAR(255) NOT NULL,
    `clicks` INT DEFAULT 0,
    `impressions` INT DEFAULT 0,
    `extracted_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `extracted_to` DATETIME,
    `extracted_from` DATETIME
);
