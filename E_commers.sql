-- Merchant Table
DROP TABLE IF EXISTS `Merchant`;
CREATE TABLE `Merchant` (
    `MerchantName` VARCHAR(100) NOT NULL,
    `MerchantTaxID` VARCHAR(50),
    `MerchantStatus` ENUM('Active', 'Inactive', 'Suspended') NOT NULL,
    `MerchantAddress` VARCHAR(100),
    `MerchantEmail` VARCHAR(100),
    `MerchantPhone` VARCHAR(50),
    `MerchantRegistrationDate` DATETIME,
    PRIMARY KEY (`MerchantTaxID`)
);

-- Product Table
DROP TABLE IF EXISTS `Product`;
CREATE TABLE `Product` (
    `ProductSKU` VARCHAR(50) PRIMARY KEY,
    `ProductName` VARCHAR(100) NOT NULL,
    `ProductPrice` DECIMAL(10,2) NOT NULL,
    `ProductCurrency` VARCHAR(3) NOT NULL,
    `ProductCategory` VARCHAR(50),
    `ProductStock` INT NOT NULL DEFAULT 0,
    `ProductDescription` VARCHAR(100),
    `MerchantTaxID` VARCHAR(50),
    FOREIGN KEY (`MerchantTaxID`) REFERENCES `Merchant`(`MerchantTaxID`)
);

-- Order Table
DROP TABLE IF EXISTS `Order`;
CREATE TABLE `Order` (
    `OrderID` VARCHAR(50) PRIMARY KEY,
    `OrderAmount` DECIMAL(10,2) NOT NULL,
    `OrderCurrency` VARCHAR(3) NOT NULL,
    `OrderStatus` ENUM('Pending', 'Paid', 'Shipped', 'Delivered') NOT NULL,
    `OrderDate` DATETIME NOT NULL,
    `CustomerName` VARCHAR(100) NOT NULL,
    `ShippingAddress` VARCHAR(100) NOT NULL,
    `MerchantTaxID` VARCHAR(50),
    FOREIGN KEY (`MerchantTaxID`) REFERENCES `Merchant`(`MerchantTaxID`)
);


-- Payment Table
DROP TABLE IF EXISTS `Payment`;
CREATE TABLE `Payment` (
    `PaymentTransactionID` VARCHAR(50) PRIMARY KEY,
    `PaymentAmount` DECIMAL(10,2) NOT NULL,
    `PaymentMethod` ENUM('CreditCard', 'PayPal', 'BankTransfer') NOT NULL,
    `PaymentStatus` ENUM('Pending', 'Completed', 'Failed') NOT NULL,
    `PaymentDate` DATETIME NOT NULL,
    `PaymentCurrency` VARCHAR(3) NOT NULL,
    `PaymentFee` DECIMAL(10,2),
    `OrderID` VARCHAR(50),
    FOREIGN KEY (`OrderID`) REFERENCES `Order`(`OrderID`)
);

-- MerchantPayout Table
DROP TABLE IF EXISTS `MerchantPayout`;
CREATE TABLE `MerchantPayout` (
    `PayoutReference` VARCHAR(50) PRIMARY KEY,
    `PayoutAmount` DECIMAL(10,2) NOT NULL,
    `PayoutMethod` ENUM('BankTransfer', 'PayPal') NOT NULL,
    `PayoutStatus` ENUM('Pending', 'Completed', 'Failed') NOT NULL,
    `PayoutDate` DATETIME NOT NULL,
    `PayoutCurrency` VARCHAR(3) NOT NULL,
    `PayoutFee` DECIMAL(10,2),
    `MerchantTaxID` VARCHAR(50),
    FOREIGN KEY (`MerchantTaxID`) REFERENCES `Merchant`(`MerchantTaxID`)
);
