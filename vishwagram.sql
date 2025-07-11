-- Media Content Table
DROP TABLE IF EXISTS `MediaContent`;
CREATE TABLE `MediaContent` (
    `id` VARCHAR(255) PRIMARY KEY,
    `s3VideoUrl` VARCHAR(255),
    `s3AudioUrl` VARCHAR(255),
    `createdAt` DATETIME NOT NULL,
    `updatedAt` DATETIME NOT NULL
);

-- Photo Filters Table
DROP TABLE IF EXISTS `PhotoFilters`;
CREATE TABLE `PhotoFilters` (
    `id` VARCHAR(50) PRIMARY KEY,
    `photoUrl` VARCHAR(255) NOT NULL,
    `filterName` VARCHAR(100) NOT NULL,
    `mediaContentId` VARCHAR(255),
    `createdAt` DATETIME NOT NULL,
    `updatedAt` DATETIME NOT NULL,
    FOREIGN KEY (`mediaContentId`) REFERENCES `MediaContent`(`id`)
);
