-- MySQL Script generated by MySQL Workbench
-- Fri Apr 24 11:47:14 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sales
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema sales
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sales` DEFAULT CHARACTER SET utf8 ;
USE `sales` ;

-- -----------------------------------------------------
-- Table `sales`.`tilda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sales`.`tilda` (
  `id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(1000) NULL,
  `email` VARCHAR(1000) NULL,
  `phone` VARCHAR(1000) NULL,
  `utm_medium` VARCHAR(45) NULL,
  `utm_source` VARCHAR(45) NULL,
  `date` VARCHAR(100) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sales`.`calls`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sales`.`calls` (
  `id` VARCHAR(10) NOT NULL,
  `phone` VARCHAR(10) NULL,
  `utm_source` VARCHAR(45) NULL,
  `utm_medium` VARCHAR(45) NULL,
  `date` VARCHAR(100) NULL,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idcalls_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sales`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sales`.`order` (
  `id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `utm_source` VARCHAR(10000) NULL,
  `utm_medium` VARCHAR(45) NULL,
  `date` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sales`.`popup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sales`.`popup` (
  `id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `utm_source` VARCHAR(10000) NULL,
  `utm_medium` VARCHAR(45) NULL,
  `date` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sales`.`client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sales`.`client` (
  `id` INT NOT NULL,
  `phone` VARCHAR(45) NULL,
  `name` VARCHAR(10000) NULL,
  `email` VARCHAR(45) NULL,
  `utm_source` VARCHAR(45) NULL,
  `utm_medium` VARCHAR(45) NULL,
  `revenue` VARCHAR(45) NULL,
  `profit` VARCHAR(45) NULL,
  `date` VARCHAR(45) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
