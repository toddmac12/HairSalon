-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'clients'
-- 
-- ---

DROP TABLE IF EXISTS `clients`;
		
CREATE TABLE `clients` (
  `ClientId` INTEGER NOT NULL AUTO_INCREMENT,
  `ClientName` VARCHAR(255) NULL DEFAULT NULL,
  `StylistId` INTEGER NOT NULL,
  `ClientDescription` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`ClientId`)
);

-- ---
-- Table 'stylists'
-- 
-- ---

DROP TABLE IF EXISTS `stylists`;
		
CREATE TABLE `stylists` (
  `StylistId` INTEGER NOT NULL AUTO_INCREMENT,
  `StylistName` VARCHAR(255) NULL DEFAULT NULL,
  `StylistDescription` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`StylistId`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `clients` ADD FOREIGN KEY (StylistId) REFERENCES `stylists` (`StylistId`);
ALTER TABLE `clients` ADD FOREIGN KEY (StylistId) REFERENCES `stylists` (`StylistId`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `clients` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `stylists` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `clients` (`ClientId`,`ClientName`,`StylistId`,`ClientDescription`) VALUES
-- ('','','','');
-- INSERT INTO `stylists` (`StylistId`,`StylistName`,`StylistDescription`) VALUES
-- ('','','');