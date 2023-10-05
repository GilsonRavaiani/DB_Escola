-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`aluno` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `e-mail` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`emprestimo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`emprestimo` (
  `codigo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_hora` VARCHAR(45) NULL,
  `matric_aluno` VARCHAR(45) NULL,
  `sata_devolucao` VARCHAR(45) NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE INDEX `codigo_UNIQUE` (`codigo` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`sessão`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`sessão` (
  `codigo` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  `localizacao` VARCHAR(45) NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`livro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`livro` (
  `cod_livro` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `localizacao` VARCHAR(45) NOT NULL,
  `sessão_codigo` INT NOT NULL,
  PRIMARY KEY (`cod_livro`),
  UNIQUE INDEX `cod_livro_UNIQUE` (`cod_livro` ASC) VISIBLE,
  INDEX `fk_livro_sessão1_idx` (`sessão_codigo` ASC) VISIBLE,
  CONSTRAINT `fk_livro_sessão1`
    FOREIGN KEY (`sessão_codigo`)
    REFERENCES `mydb`.`sessão` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`livro_emprestimo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`livro_emprestimo` (
  `cod_livro` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cod_emprestimo` VARCHAR(45) NOT NULL,
  `livro_cod_livro` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`cod_livro`),
  UNIQUE INDEX `cod_livro_UNIQUE` (`cod_livro` ASC) VISIBLE,
  UNIQUE INDEX `cod_emprestimo_UNIQUE` (`cod_emprestimo` ASC) VISIBLE,
  INDEX `fk_livro_emprestimo_livro1_idx` (`livro_cod_livro` ASC) VISIBLE,
  CONSTRAINT `fk_livro_emprestimo_livro1`
    FOREIGN KEY (`livro_cod_livro`)
    REFERENCES `mydb`.`livro` (`cod_livro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`aluno_tem_emprestimo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`aluno_tem_emprestimo` (
  `aluno_id` INT UNSIGNED NOT NULL,
  `emprestimo_codigo` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`aluno_id`, `emprestimo_codigo`),
  INDEX `fk_aluno_has_emprestimo_emprestimo1_idx` (`emprestimo_codigo` ASC) VISIBLE,
  INDEX `fk_aluno_has_emprestimo_aluno_idx` (`aluno_id` ASC) VISIBLE,
  CONSTRAINT `fk_aluno_has_emprestimo_aluno`
    FOREIGN KEY (`aluno_id`)
    REFERENCES `mydb`.`aluno` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_has_emprestimo_emprestimo1`
    FOREIGN KEY (`emprestimo_codigo`)
    REFERENCES `mydb`.`emprestimo` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`emprestimo_tem_livro_emprestimo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`emprestimo_tem_livro_emprestimo` (
  `emprestimo_codigo` INT UNSIGNED NOT NULL,
  `livro_emprestimo_cod_livro` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`emprestimo_codigo`, `livro_emprestimo_cod_livro`),
  INDEX `fk_emprestimo_has_livro_emprestimo_livro_emprestimo1_idx` (`livro_emprestimo_cod_livro` ASC) VISIBLE,
  INDEX `fk_emprestimo_has_livro_emprestimo_emprestimo1_idx` (`emprestimo_codigo` ASC) VISIBLE,
  CONSTRAINT `fk_emprestimo_has_livro_emprestimo_emprestimo1`
    FOREIGN KEY (`emprestimo_codigo`)
    REFERENCES `mydb`.`emprestimo` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestimo_has_livro_emprestimo_livro_emprestimo1`
    FOREIGN KEY (`livro_emprestimo_cod_livro`)
    REFERENCES `mydb`.`livro_emprestimo` (`cod_livro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
