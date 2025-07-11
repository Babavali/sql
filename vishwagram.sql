-- Media Content Table
DROP TABLE IF EXISTS `MediaContent`;
CREATE TABLE `Media` (
    `id` VARCHAR(255) PRIMARY KEY,
    `video_url` VARCHAR(255),
    `audio_url` VARCHAR(255)
);

-- Photo Filter Table
CREATE TABLE `PhotoFilter` (
    `photo_url` VARCHAR(50) PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL
);
