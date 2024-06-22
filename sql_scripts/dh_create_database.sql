-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dragons_hoard_2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dragons_hoard_2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dragons_hoard_2` DEFAULT CHARACTER SET utf8 ;
USE `dragons_hoard_2` ;

-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`Customers` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(225) NOT NULL,
  `Email` VARCHAR(225) NULL,
  `Phone` VARCHAR(50) NULL,
  `Address` VARCHAR(225) NULL,
  `City` VARCHAR(100) NULL,
  `State` VARCHAR(50) NULL,
  `Zip` VARCHAR(20) NULL,
  `Country` VARCHAR(50) NULL,
  `CustomerType` VARCHAR(50) NULL,
  `CreatedDate` DATE NULL,
  PRIMARY KEY (`CustomerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`Manufacturers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`Manufacturers` (
  `ManufacturerID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(255) NOT NULL,
  `ContactName` VARCHAR(255) NULL,
  `ContactEmail` VARCHAR(255) NULL,
  `ContactPhone` VARCHAR(50) NULL,
  `Address` VARCHAR(255) NULL,
  `City` VARCHAR(100) NULL,
  `State` VARCHAR(50) NULL,
  `Zip` VARCHAR(20) NULL,
  `Country` VARCHAR(50) NULL,
  PRIMARY KEY (`ManufacturerID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`Products` (
  `ProductID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(225) NOT NULL,
  `Description` LONGTEXT NULL,
  `Category` VARCHAR(100) NULL,
  `Price` DECIMAL(10,2) NULL,
  `ManufacturerID` INT NULL,
  `StockQuantity` INT NULL,
  `CreatedDate` DATE NULL,
  PRIMARY KEY (`ProductID`),
  INDEX `FK_Products_Manufacturers_idx` (`ManufacturerID` ASC) VISIBLE,
  UNIQUE INDEX `ProductID_UNIQUE` (`ProductID` ASC) VISIBLE,
  CONSTRAINT `FK_Products_Manufacturers`
    FOREIGN KEY (`ManufacturerID`)
    REFERENCES `dragons_hoard_2`.`Manufacturers` (`ManufacturerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`Orders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `OrderDate` DATE NOT NULL,
  `CustomerID` INT NULL,
  `TotalAmmount` DECIMAL(10,2) NULL,
  `OrderStatus` VARCHAR(50) NULL,
  `ShippingAddress` VARCHAR(255) NULL,
  PRIMARY KEY (`OrderID`),
  INDEX `FK_Orders_Distributors_idx` (`CustomerID` ASC) VISIBLE,
  UNIQUE INDEX `OrderID_UNIQUE` (`OrderID` ASC) VISIBLE,
  CONSTRAINT `FK_Orders_Distributors`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `dragons_hoard_2`.`Customers` (`CustomerID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`OrderItems`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`OrderItems` (
  `OrderItemID` INT NOT NULL AUTO_INCREMENT,
  `OrderID` INT NULL,
  `ProductID` INT NULL,
  `Quantity` INT NULL,
  `Price` DECIMAL(10,2) NULL,
  `Discount` DECIMAL(10,2) NULL,
  `Tax` DECIMAL(10,2) NULL,
  PRIMARY KEY (`OrderItemID`),
  INDEX `FK_OrderItems_Orders_idx` (`OrderID` ASC) VISIBLE,
  INDEX `FK_OrderItems_Products_idx` (`ProductID` ASC) VISIBLE,
  CONSTRAINT `FK_OrderItems_Orders`
    FOREIGN KEY (`OrderID`)
    REFERENCES `dragons_hoard_2`.`Orders` (`OrderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_OrderItems_Products`
    FOREIGN KEY (`ProductID`)
    REFERENCES `dragons_hoard_2`.`Products` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`Inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`Inventory` (
  `InventoryID` INT NOT NULL AUTO_INCREMENT,
  `ProductID` INT NULL,
  `Quantity` INT NULL,
  `WarehouseLocation` VARCHAR(255) NULL,
  `LastUpdated` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`InventoryID`),
  INDEX `FK_Inventory_Products_idx` (`ProductID` ASC) VISIBLE,
  CONSTRAINT `FK_Inventory_Products`
    FOREIGN KEY (`ProductID`)
    REFERENCES `dragons_hoard_2`.`Products` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`SalesForecast`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`SalesForecast` (
  `ForecastID` INT NOT NULL AUTO_INCREMENT,
  `ProductID` INT NULL,
  `ForecastDate` DATE NULL,
  `ForecastQuantity` INT NULL,
  `ForecastMethod` VARCHAR(100) NULL,
  `CreatedDate` DATE NULL,
  PRIMARY KEY (`ForecastID`),
  INDEX `FK_SalesForecast_Products_idx` (`ProductID` ASC) VISIBLE,
  CONSTRAINT `FK_SalesForecast_Products`
    FOREIGN KEY (`ProductID`)
    REFERENCES `dragons_hoard_2`.`Products` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`MarketingCampaigns`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`MarketingCampaigns` (
  `CampaignID` INT NOT NULL AUTO_INCREMENT,
  `CampaignName` VARCHAR(255) NULL,
  `StartDate` DATE NULL,
  `EndDate` DATE NULL,
  `Budget` DECIMAL(10,2) NULL,
  `Channel` VARCHAR(100) NULL,
  `TargetAudience` VARCHAR(255) NULL,
  `CampaignType` VARCHAR(100) NULL,
  PRIMARY KEY (`CampaignID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`CampaignProducts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`CampaignProducts` (
  `CampaignProductID` INT NOT NULL AUTO_INCREMENT,
  `CampaignID` INT NULL,
  `ProductID` INT NULL,
  PRIMARY KEY (`CampaignProductID`),
  INDEX `FK_CampaignProducts_MarketingCampaigns_idx` (`CampaignID` ASC) VISIBLE,
  INDEX `FK_CampaignProducts_Products_idx` (`ProductID` ASC) VISIBLE,
  UNIQUE INDEX `CampaignProductID_UNIQUE` (`CampaignProductID` ASC) VISIBLE,
  CONSTRAINT `FK_CampaignProducts_MarketingCampaigns`
    FOREIGN KEY (`CampaignID`)
    REFERENCES `dragons_hoard_2`.`MarketingCampaigns` (`CampaignID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CampaignProducts_Products`
    FOREIGN KEY (`ProductID`)
    REFERENCES `dragons_hoard_2`.`Products` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`Leads`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`Leads` (
  `LeadsID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NULL,
  `LeadSource` VARCHAR(100) NULL,
  `LeadStatus` VARCHAR(100) NULL,
  `EstimatedValue` DECIMAL(10,2) NULL,
  `CreatedDate` DATE NULL,
  `FollowUpDate` DATE NULL,
  PRIMARY KEY (`LeadsID`),
  INDEX `FK_Leads_Distributors_idx` (`CustomerID` ASC) VISIBLE,
  CONSTRAINT `FK_Leads_Distributors`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `dragons_hoard_2`.`Customers` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`salespipeline`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`salespipeline` (
  `PipelineID` INT NOT NULL,
  `StageName` VARCHAR(45) NULL,
  `ProbabilityToClose` DECIMAL NULL,
  `ExpectedRevenue` INT NULL,
  `StageDate` DATE NULL,
  `LeadsID` INT NOT NULL,
  PRIMARY KEY (`PipelineID`),
  UNIQUE INDEX `PipelineID_UNIQUE` (`PipelineID` ASC) VISIBLE,
  INDEX `fk_salespipeline_Leads1_idx` (`LeadsID` ASC) VISIBLE,
  CONSTRAINT `fk_salespipeline_Leads1`
    FOREIGN KEY (`LeadsID`)
    REFERENCES `dragons_hoard_2`.`Leads` (`LeadsID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`marketinganalytics`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`marketinganalytics` (
  `AnalyticsID` INT NOT NULL,
  `MetricName` VARCHAR(45) NULL,
  `MetricValue` VARCHAR(45) NULL,
  `MetricDate` VARCHAR(45) NULL,
  `CampaignID` INT NOT NULL,
  PRIMARY KEY (`AnalyticsID`),
  INDEX `fk_marketinganalytics_MarketingCampaigns1_idx` (`CampaignID` ASC) VISIBLE,
  CONSTRAINT `fk_marketinganalytics_MarketingCampaigns1`
    FOREIGN KEY (`CampaignID`)
    REFERENCES `dragons_hoard_2`.`MarketingCampaigns` (`CampaignID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dragons_hoard_2`.`contracts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dragons_hoard_2`.`contracts` (
  `ContractID` INT NOT NULL,
  `ContractValue` INT NULL,
  `StartDate` DATE NULL,
  `EndDate` DATE NULL,
  `ContractStatus` VARCHAR(45) NULL,
  `CustomerID` INT NOT NULL,
  `ProductID` INT NOT NULL,
  PRIMARY KEY (`ContractID`),
  INDEX `fk_contracts_Customers1_idx` (`CustomerID` ASC) VISIBLE,
  INDEX `fk_contracts_Products1_idx` (`ProductID` ASC) VISIBLE,
  CONSTRAINT `fk_contracts_Customers1`
    FOREIGN KEY (`CustomerID`)
    REFERENCES `dragons_hoard_2`.`Customers` (`CustomerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_contracts_Products1`
    FOREIGN KEY (`ProductID`)
    REFERENCES `dragons_hoard_2`.`Products` (`ProductID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
