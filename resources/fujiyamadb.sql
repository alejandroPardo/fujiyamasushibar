SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `fujiyamadb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `fujiyamadb` ;

-- -----------------------------------------------------
-- Table `fujiyamadb`.`users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`users` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  `lastname` VARCHAR(255) NULL ,
  `email` VARCHAR(255) NULL ,
  `birthday` DATETIME NULL ,
  `gender` ENUM('MALE', 'FEMALE') NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fujiyamadb`.`products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`products` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(255) NULL ,
  `description` VARCHAR(255) NULL ,
  `price` FLOAT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fujiyamadb`.`appetizers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`appetizers` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`appetizers` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `product_id` INT NULL ,
  `type` ENUM('ENTRADAS', 'CEVICHES', 'SOPAS') NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `productappetizer_idx` (`product_id` ASC) ,
  CONSTRAINT `productappetizer`
    FOREIGN KEY (`product_id` )
    REFERENCES `fujiyamadb`.`products` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fujiyamadb`.`platos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`platos` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`platos` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `product_id` INT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `platosproducts_idx` (`product_id` ASC) ,
  CONSTRAINT `platosproducts`
    FOREIGN KEY (`product_id` )
    REFERENCES `fujiyamadb`.`products` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fujiyamadb`.`ensaladas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`ensaladas` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`ensaladas` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `product_id` INT NULL ,
  `type` ENUM('ENSALADA', 'TEMAKI', 'NIGIRI') NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `ensaladasproducts_idx` (`product_id` ASC) ,
  CONSTRAINT `ensaladasproducts`
    FOREIGN KEY (`product_id` )
    REFERENCES `fujiyamadb`.`products` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fujiyamadb`.`rolls`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`rolls` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`rolls` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `product_id` INT NULL ,
  `type` ENUM('SARROZ','TEMPSARROZ','TEMP','TEMPDENTRO','TRADICIONALES') NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `rollsproducts_idx` (`product_id` ASC) ,
  CONSTRAINT `rollsproducts`
    FOREIGN KEY (`product_id` )
    REFERENCES `fujiyamadb`.`products` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fujiyamadb`.`postres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`postres` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`postres` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `product_id` INT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `postresproducts_idx` (`product_id` ASC) ,
  CONSTRAINT `postresproducts`
    FOREIGN KEY (`product_id` )
    REFERENCES `fujiyamadb`.`products` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fujiyamadb`.`photos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`photos` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`photos` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `product_id` INT NULL ,
  `thumb` VARCHAR(255) NULL ,
  `photo` VARCHAR(255) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `photosproducts_idx` (`product_id` ASC) ,
  CONSTRAINT `photosproducts`
    FOREIGN KEY (`product_id` )
    REFERENCES `fujiyamadb`.`products` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fujiyamadb`.`tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`tags` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`tags` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `tag` VARCHAR(255) NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fujiyamadb`.`product_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fujiyamadb`.`product_tags` ;

CREATE  TABLE IF NOT EXISTS `fujiyamadb`.`product_tags` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `tag_id` INT NULL ,
  `product_id` INT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) ,
  INDEX `tagsproducts_idx` (`product_id` ASC) ,
  INDEX `tagstags_idx` (`tag_id` ASC) ,
  CONSTRAINT `tagsproducts`
    FOREIGN KEY (`product_id` )
    REFERENCES `fujiyamadb`.`products` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tagstags`
    FOREIGN KEY (`tag_id` )
    REFERENCES `fujiyamadb`.`tags` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `fujiyamadb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
