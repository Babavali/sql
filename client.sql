-- Client Website Page Queries Table
DROP TABLE IF EXISTS `client_website_page_queries`;
CREATE TABLE `client_website_page_queries` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `client_website_id` VARCHAR(50) NOT NULL,
    `client_website_page_id` VARCHAR(50) NOT NULL,
    `query` VARCHAR(255) NOT NULL,
    `clicks` INT DEFAULT 0,
    `impressions` INT DEFAULT 0,
    `extracted_at` DATETIME NOT NULL,
    `extracted_week` DATE NOT NULL,
    INDEX (`client_website_id`),
    INDEX (`client_website_page_id`),
    INDEX (`query`),
    INDEX (`extracted_at`),
    INDEX (`extracted_week`)
);
