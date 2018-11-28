-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema belomundo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema belomundo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `belomundo` DEFAULT CHARACTER SET utf8 ;
USE `belomundo` ;

-- -----------------------------------------------------
-- Table `belomundo`.`LocalCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`LocalCliente` (
  `Id` INT NOT NULL,
  `Designacao` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belomundo`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`Cliente` (
  `Id` INT NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `Contacto` BIGINT NULL,
  `Email` VARCHAR(60) NULL,
  `NIF` INT NULL,
  `Profissão` VARCHAR(45) NULL,
  `Rua` VARCHAR(60) NULL,
  `Cod_Postal` VARCHAR(45) NULL,
  `LocalCliente_Id` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Cliente_Endereço1_idx` (`LocalCliente_Id` ASC),
  CONSTRAINT `fk_Cliente_Endereço1`
    FOREIGN KEY (`LocalCliente_Id`)
    REFERENCES `belomundo`.`LocalCliente` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belomundo`.`Venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`Venda` (
  `Numero` INT NOT NULL,
  `Data` DATETIME NULL,
  `Valor` INT NULL,
  `Nr_Viagens` INT NULL,
  `Cliente_Id` INT NOT NULL,
  PRIMARY KEY (`Numero`),
  INDEX `fk_Venda_Cliente_idx` (`Cliente_Id` ASC),
  CONSTRAINT `fk_Venda_Cliente`
    FOREIGN KEY (`Cliente_Id`)
    REFERENCES `belomundo`.`Cliente` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belomundo`.`Hobbies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`Hobbies` (
  `Id` VARCHAR(4) NOT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Cliente_Id` INT NOT NULL,
  PRIMARY KEY (`Id`, `Cliente_Id`),
  INDEX `fk_Hobbies_Cliente1_idx` (`Cliente_Id` ASC),
  CONSTRAINT `fk_Hobbies_Cliente1`
    FOREIGN KEY (`Cliente_Id`)
    REFERENCES `belomundo`.`Cliente` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belomundo`.`LocalHotel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`LocalHotel` (
  `Id` INT NOT NULL,
  `LocalH` VARCHAR(45) NULL,
  `Pais` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belomundo`.`Hotel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`Hotel` (
  `Codigo` INT NOT NULL,
  `Nome` VARCHAR(45) NULL,
  `Contacto` BIGINT NULL,
  `Email` VARCHAR(60) NULL,
  `Estrelas` INT NULL,
  `Rua` VARCHAR(60) NULL,
  `Cod_Postal` VARCHAR(45) NULL,
  `LocalHotel_Id` INT NOT NULL,
  PRIMARY KEY (`Codigo`),
  INDEX `fk_Hotel_EnderecoHotel1_idx` (`LocalHotel_Id` ASC),
  CONSTRAINT `fk_Hotel_EnderecoHotel1`
    FOREIGN KEY (`LocalHotel_Id`)
    REFERENCES `belomundo`.`LocalHotel` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belomundo`.`Rota`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`Rota` (
  `Id` VARCHAR(6) NOT NULL,
  `Companhia` VARCHAR(45) NULL,
  `Duracao` INT NULL,
  `Aeroporto_Part` VARCHAR(45) NULL,
  `Aeroporto_Dest` VARCHAR(45) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belomundo`.`Viagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`Viagem` (
  `Id` INT NOT NULL,
  `Preco_Voo` INT NULL,
  `Preco_Hotel` INT NULL,
  `Preco_Total` INT NULL,
  `Nr_Dias` INT NULL,
  `Epoca` CHAR(1) NULL,
  `Data` DATE NULL,
  `Pais_Part` VARCHAR(45) NULL,
  `Pais_Dest` VARCHAR(45) NULL,
  `Pensao` CHAR(2) NULL,
  `Hotel_Codigo` INT NOT NULL,
  `Rota_Id` VARCHAR(6) NOT NULL,
  `Venda_Numero` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Viagem_Hotel1_idx` (`Hotel_Codigo` ASC),
  INDEX `fk_Viagem_Voo1_idx` (`Rota_Id` ASC),
  INDEX `fk_Viagem_Venda1_idx` (`Venda_Numero` ASC),
  CONSTRAINT `fk_Viagem_Hotel1`
    FOREIGN KEY (`Hotel_Codigo`)
    REFERENCES `belomundo`.`Hotel` (`Codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Viagem_Voo1`
    FOREIGN KEY (`Rota_Id`)
    REFERENCES `belomundo`.`Rota` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Viagem_Venda1`
    FOREIGN KEY (`Venda_Numero`)
    REFERENCES `belomundo`.`Venda` (`Numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belomundo`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`Categoria` (
  `Id` VARCHAR(4) NOT NULL,
  `Designacao` VARCHAR(45) NULL,
  `Viagem_Id` INT NOT NULL,
  PRIMARY KEY (`Id`, `Viagem_Id`),
  INDEX `fk_Categoria_Viagem1_idx` (`Viagem_Id` ASC),
  CONSTRAINT `fk_Categoria_Viagem1`
    FOREIGN KEY (`Viagem_Id`)
    REFERENCES `belomundo`.`Viagem` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belomundo`.`Pensao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belomundo`.`Pensao` (
  `IdPensao` CHAR(2) NOT NULL,
  `Descricao` VARCHAR(45) NULL,
  `Hotel_Codigo` INT NOT NULL,
  PRIMARY KEY (`IdPensao`, `Hotel_Codigo`),
  INDEX `fk_Pensao_Hotel1_idx` (`Hotel_Codigo` ASC),
  CONSTRAINT `fk_Pensao_Hotel1`
    FOREIGN KEY (`Hotel_Codigo`)
    REFERENCES `belomundo`.`Hotel` (`Codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
