-- Merchant Table
DROP TABLE IF EXISTS `Merchant`;
CREATE TABLE `Merchant` (
    `merchantName` VARCHAR(100) NOT NULL,
    `merchantTaxId` VARCHAR(50),
    `merchantStatus` VARCHAR(50) NOT NULL,
    `merchantAddress` VARCHAR(100),
    `merchantEmail` VARCHAR(100),
    `merchantPhone` VARCHAR(50),
    `merchantRegistrationDate` DATETIME,
    PRIMARY KEY (`MerchantTaxID`)
);

-- Product Table
DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product` (
    `productSku` VARCHAR(50) PRIMARY KEY,
    `productName` VARCHAR(100) NOT NULL,
    `productPrice` DECIMAL(10,2) NOT NULL,
    `productCurrency` VARCHAR(3) NOT NULL,
    `productCategory` VARCHAR(50),
    `productStock` INT NOT NULL DEFAULT 0,
    `productDescription` VARCHAR(100),
    `MerchantTaxID` VARCHAR(50),
    FOREIGN KEY (`MerchantTaxID`) REFERENCES `Merchant`(`MerchantTaxID`)
);

-- Order Table
DROP TABLE IF EXISTS `Order`;
CREATE TABLE `Order` (
    `orderID` VARCHAR(50) PRIMARY KEY,
    `orderAmount` DECIMAL(10,2) NOT NULL,
    `orderCurrency` VARCHAR(3) NOT NULL,
    `orderStatus` VARCHAR(50) NOT NULL,
    `orderDate` DATETIME NOT NULL,
    `customerName` VARCHAR(100) NOT NULL,
    `shippingAddress` VARCHAR(100) NOT NULL,
    `MerchantTaxID` VARCHAR(50),
    FOREIGN KEY (`MerchantTaxID`) REFERENCES `Merchant`(`MerchantTaxID`)
);


-- Payment Table
DROP TABLE IF EXISTS `Payment`;
CREATE TABLE `Payment` (
    `paymentTransactionID` VARCHAR(50) PRIMARY KEY,
    `paymentAmount` DECIMAL(10,2) NOT NULL,
    `paymentMethod` VARCHAR(50) NOT NULL,
    `paymentStatus` VARCHAR(50) NOT NULL,
    `paymentDate` DATETIME NOT NULL,
    `paymentCurrency` VARCHAR(3) NOT NULL,
    `paymentFee` DECIMAL(10,2),
    `orderID` VARCHAR(50),
    FOREIGN KEY (`OrderID`) REFERENCES `Order`(`OrderID`)
);

-- MerchantPayout Table
DROP TABLE IF EXISTS `MerchantPayout`;
CREATE TABLE `MerchantPayout` (
    `payoutReference` VARCHAR(50) PRIMARY KEY,
    `payoutAmount` DECIMAL(10,2) NOT NULL,
    `payoutMethod` VARCHAR(50) NOT NULL,
    `payoutStatus` VARCHAR(50) NOT NULL,
    `payoutDate` DATETIME NOT NULL,
    `payoutCurrency` VARCHAR(3) NOT NULL,
    `payoutFee` DECIMAL(10,2),
    `merchantTaxID` VARCHAR(50),
    FOREIGN KEY (`MerchantTaxID`) REFERENCES `Merchant`(`MerchantTaxID`)
);
