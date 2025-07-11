-- Media Content Table
DROP TABLE IF EXISTS `MediaContent`;
CREATE TABLE `MediaContent` (
    `s3VideoUrl` VARCHAR(255),
    `s3AudioUrl` VARCHAR(255)
);

-- Photo Filters Table (nested relationship with MediaContent)
DROP TABLE IF EXISTS `PhotoFilters`;
CREATE TABLE `PhotoFilters` (
    `photoUrl` VARCHAR(50) PRIMARY KEY,
    `filterName` VARCHAR(100) NOT NULL
);
