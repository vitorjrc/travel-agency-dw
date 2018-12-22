-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema arDW
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema arDW
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `arDW` DEFAULT CHARACTER SET utf8 ;
USE `arDW` ;

-- -----------------------------------------------------
-- Table `arDW`.`AR_Cleanup_Cliente_M`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Cleanup_Cliente_M` (
  `idCliente` INT NULL,
  `nome` VARCHAR(45) NULL,
  `nif` INT NULL,
  `profissao` VARCHAR(45) NULL,
  `local` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Cleanup_Vendas_M`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Cleanup_Vendas_M` (
  `idVenda` INT NULL,
  `valor` INT NULL,
  `nrViagens` INT NULL,
  `DIM-Clientes_idCliente` INT NULL,
  `DIM-Viagens_idViagens` INT NULL,
  `DIM-Calendario_idData` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Cleanup_Viagens_M`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Cleanup_Viagens_M` (
  `idViagens` INT NULL,
  `precoVoo` INT NULL,
  `precoTotal` INT NULL,
  `precoHotal` INT NULL,
  `nrDias` INT NULL,
  `epoca` CHAR NULL,
  `paisPart` VARCHAR(45) NULL,
  `paisDest` VARCHAR(45) NULL,
  `pensao` CHAR(2) NULL,
  `nomeHotel` VARCHAR(45) NULL,
  `DIM_Calendario_dataViagem` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Cleanup_Cliente_S`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Cleanup_Cliente_S` (
  `idCliente` INT NULL,
  `nif` INT NULL,
  `profissao` VARCHAR(45) NULL,
  `local` VARCHAR(45) NULL,
  `nome` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Cleanup_Vendas_S`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Cleanup_Vendas_S` (
  `idVenda` INT NULL,
  `valor` INT NULL,
  `nrViagens` INT NULL,
  `DIM-Clientes_idCliente` INT NULL,
  `DIM-Viagens_idViagens` INT NULL,
  `DIM-Calendario_idData` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Cleanup_Viagens_S`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Cleanup_Viagens_S` (
  `idViagens` INT NULL,
  `precoVoo` INT NULL,
  `precoHotel` INT NULL,
  `precoTotal` INT NULL,
  `nrDias` INT NULL,
  `epoca` CHAR NULL,
  `paisPart` VARCHAR(45) NULL,
  `paisDest` VARCHAR(45) NULL,
  `pensao` CHAR(2) NULL,
  `nomeHotel` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Cleanup_Cliente_E`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Cleanup_Cliente_E` (
  `idCliente` INT NULL,
  `nif` INT NULL,
  `profissao` VARCHAR(45) NULL,
  `local` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Cleanup_Vendas_E`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Cleanup_Vendas_E` (
  `idVenda` INT NULL,
  `valor` INT NULL,
  `nrViagens` INT NULL,
  `DIM-Clientes_idCliente` INT NULL,
  `DIM-Viagens_idViagens` INT NULL,
  `DIM-Calendario_idData` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Cleanup_Viagens_E`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Cleanup_Viagens_E` (
  `idViagens` INT NULL,
  `precoVoo` INT NULL,
  `precoHotel` INT NULL,
  `precoTotal` INT NULL,
  `nrDias` INT NULL,
  `epoca` CHAR NULL,
  `paisPart` VARCHAR(45) NULL,
  `paisDest` VARCHAR(45) NULL,
  `pensao` CHAR(2) NULL,
  `nomeHotel` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Conformity_Cliente_E`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Conformity_Cliente_E` (
  `idCliente` INT NULL,
  `nome` VARCHAR(45) NULL,
  `nif` INT NULL,
  `profissao` VARCHAR(45) NULL,
  `local` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Conformity_Vendas_E`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Conformity_Vendas_E` (
  `idVenda` INT NULL,
  `valor` INT NULL,
  `nrViagens` INT NULL,
  `DIM-Clientes_idCliente` INT NULL,
  `DIM-Viagens_idViagens` INT NULL,
  `DIM-Calendario_idData` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_Conformity_Viagens_E`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_Conformity_Viagens_E` (
  `idViagens` INT NULL,
  `precoVoo` INT NULL,
  `precoHotel` INT NULL,
  `precoTotal` INT NULL,
  `nrDias` INT NULL,
  `epoca` CHAR NULL,
  `paisPart` VARCHAR(45) NULL,
  `paisDest` VARCHAR(45) NULL,
  `pensao` CHAR(2) NULL,
  `nomeHotel` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_DIM_Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_DIM_Cliente` (
  `idCliente` INT NULL,
  `nome` VARCHAR(45) NULL,
  `nif` INT NULL,
  `profissao` VARCHAR(45) NULL,
  `local` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_DIM_Vendas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_DIM_Vendas` (
  `idVenda` INT NULL,
  `valor` INT NULL,
  `nrViagens` INT NULL,
  `DIM-Clientes_idCliente` INT NULL,
  `DIM-Viagens_idViagens` INT NULL,
  `DIM-Calendario_idData` INT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_DIM_Viagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_DIM_Viagens` (
  `idViagens` INT NULL,
  `precoVoo` INT NULL,
  `precoHotel` INT NULL,
  `precoTotal` INT NULL,
  `nrDias` INT NULL,
  `epoca` CHAR NULL,
  `paisPart` VARCHAR(45) NULL,
  `paisDest` VARCHAR(45) NULL,
  `pensao` CHAR(2) NULL,
  `nomeHotel` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arDW`.`AR_DIM_Calendario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arDW`.`AR_DIM_Calendario` (
  `idData` INT NULL,
  `diaSemana` VARCHAR(45) NULL,
  `diaData` VARCHAR(45) NULL,
  `mesData` VARCHAR(45) NULL,
  `anoData` VARCHAR(45) NULL,
  `diaAno` VARCHAR(45) NULL,
  `mesAno` VARCHAR(45) NULL,
  `trimestre` VARCHAR(45) NULL,
  `epoca` VARCHAR(45) NULL,
  `data` DATE NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
