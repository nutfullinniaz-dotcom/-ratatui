-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema topot
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema topot
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `topot` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
USE `topot` ;

-- -----------------------------------------------------
-- Table `topot`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`discount`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`discount` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `discount` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`manufacturers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`manufacturers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`pvz2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`pvz2` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `postcode` INT NOT NULL,
  `city` VARCHAR(50) NOT NULL,
  `street` VARCHAR(50) NOT NULL,
  `house` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 37
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`orderstatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`orderstatus` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`roles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `roles_id` INT NOT NULL,
  `surname` VARCHAR(20) NOT NULL,
  `first_name` VARCHAR(20) NOT NULL,
  `patronymic` VARCHAR(20) NOT NULL,
  `login` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `roles_id_idx` (`roles_id` ASC) VISIBLE,
  CONSTRAINT `roles_id`
    FOREIGN KEY (`roles_id`)
    REFERENCES `topot`.`roles` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`order` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_date` VARCHAR(20) NOT NULL,
  `delivery_date` VARCHAR(20) NOT NULL,
  `pvz_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `receive_code` INT NOT NULL,
  `status_id` INT NOT NULL,
  `ordercol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `pvz_id_idx` (`pvz_id` ASC) VISIBLE,
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  INDEX `status_id_idx` (`status_id` ASC) VISIBLE,
  CONSTRAINT `pvz_id`
    FOREIGN KEY (`pvz_id`)
    REFERENCES `topot`.`pvz2` (`id`),
  CONSTRAINT `status_id`
    FOREIGN KEY (`status_id`)
    REFERENCES `topot`.`orderstatus` (`id`),
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `topot`.`users` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`shoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`shoes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`suppliers2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`suppliers2` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(50) NOT NULL,
  `shoes_id` INT NOT NULL,
  `unit_of_measurement` VARCHAR(50) NOT NULL,
  `price` DECIMAL(10,0) NOT NULL,
  `suppliers_id` INT NOT NULL,
  `manufacturers_id` INT NOT NULL,
  `categories_id` INT NOT NULL,
  `discount_id` INT NOT NULL,
  `quantity_in_stock` INT NOT NULL,
  `product_description` VARCHAR(500) NULL DEFAULT NULL,
  `Фото` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `suppliers_id_idx` (`suppliers_id` ASC) VISIBLE,
  INDEX `manufacturers_id_idx` (`manufacturers_id` ASC) VISIBLE,
  INDEX `categories_id_idx` (`categories_id` ASC) VISIBLE,
  INDEX `discount_id_idx` (`discount_id` ASC) VISIBLE,
  INDEX `shoes_id_idx` (`shoes_id` ASC) VISIBLE,
  CONSTRAINT `categories_id`
    FOREIGN KEY (`categories_id`)
    REFERENCES `topot`.`categories` (`id`),
  CONSTRAINT `discount_id`
    FOREIGN KEY (`discount_id`)
    REFERENCES `topot`.`discount` (`id`),
  CONSTRAINT `manufacturers_id`
    FOREIGN KEY (`manufacturers_id`)
    REFERENCES `topot`.`manufacturers` (`id`),
  CONSTRAINT `shoes_id`
    FOREIGN KEY (`shoes_id`)
    REFERENCES `topot`.`shoes` (`id`),
  CONSTRAINT `suppliers_id`
    FOREIGN KEY (`suppliers_id`)
    REFERENCES `topot`.`suppliers2` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `topot`.`prodorder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `topot`.`prodorder` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `orders_id_idx` (`order_id` ASC) VISIBLE,
  INDEX `product_id_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `orders_id`
    FOREIGN KEY (`order_id`)
    REFERENCES `topot`.`order` (`id`),
  CONSTRAINT `product_id`
    FOREIGN KEY (`product_id`)
    REFERENCES `topot`.`products` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
