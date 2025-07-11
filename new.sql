-- Media Content Table
DROP TABLE IF EXISTS `MediaContent`;
CREATE TABLE `MediaContent` (
    `contentId` VARCHAR(50) PRIMARY KEY,
    `contentType` ENUM('video', 'audio', 'photo') NOT NULL,
    `s3VideoUrl` VARCHAR(255),
    `s3AudioUrl` VARCHAR(255),
    `creationDate` DATETIME NOT NULL,
    `lastModified` DATETIME NOT NULL,
    `contentOwner` VARCHAR(100) NOT NULL,
    `contentStatus` ENUM('draft', 'published', 'archived') NOT NULL DEFAULT 'draft'
);

-- Photo Filters Table (nested relationship with MediaContent)
DROP TABLE IF EXISTS `PhotoFilters`;
CREATE TABLE `PhotoFilters` (
    `filterId` VARCHAR(50) PRIMARY KEY,
    `contentId` VARCHAR(50) NOT NULL,
    `filterName` VARCHAR(100) NOT NULL,
    `filterType` VARCHAR(50) NOT NULL,
    `filterIntensity` DECIMAL(5,2) DEFAULT 1.00,
    `filterAppliedDate` DATETIME NOT NULL,
    `filterVersion` VARCHAR(20),
    FOREIGN KEY (`contentId`) REFERENCES `MediaContent`(`contentId`) ON DELETE CASCADE
);
