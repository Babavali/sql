-- AdGroupAdLegacy Table (main table from the schema)
DROP TABLE IF EXISTS `AdGroupAdLegacy`;
CREATE TABLE `AdGroupAdLegacy` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `customer_id` VARCHAR(50) NOT NULL,
    `campaign_id` VARCHAR(50) NOT NULL,
    `ad_group_id` VARCHAR(50) NOT NULL,
    `ad_group_ad_ad_id` VARCHAR(50) NOT NULL,
    `metrics_clicks` BIGINT DEFAULT 0,
    `metrics_impressions` BIGINT DEFAULT 0,
    `metrics_conversions` FLOAT DEFAULT 0,
    `metrics_amount_spend` FLOAT DEFAULT 0,
    `metrics_ctr` FLOAT DEFAULT 0,
    `metrics_cost_per_conversion` FLOAT DEFAULT 0,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP,
    `updated_at` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
