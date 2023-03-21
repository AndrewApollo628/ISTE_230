-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema imdbmovies
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema imdbmovies
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `imdbmovies` DEFAULT CHARACTER SET utf8 ;
USE `imdbmovies` ;

-- -----------------------------------------------------
-- Table `imdbmovies`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdbmovies`.`movies` (
  `id` INT NOT NULL,
  `title` VARCHAR(80) NOT NULL,
  `year` INT NULL,
  `image_url` VARCHAR(256) NULL,
  `certificate` VARCHAR(256) NULL,
  `runtime` INT NULL,
  `imdb_rating` FLOAT NULL,
  `description` TEXT NULL,
  `metascore` INT NULL,
  `votes` INT NULL,
  `gross` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `title_UNIQUE` (`title` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdbmovies`.`directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdbmovies`.`directors` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `about` TEXT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdbmovies`.`stars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdbmovies`.`stars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `about` TEXT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdbmovies`.`genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdbmovies`.`genres` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdbmovies`.`movies_directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdbmovies`.`movies_directors` (
  `movies_id` INT NOT NULL,
  `directors_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `directors_id`),
  INDEX `fk_movies_has_directors_directors1_idx` (`directors_id` ASC) VISIBLE,
  INDEX `fk_movies_has_directors_movies_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_directors_movies`
    FOREIGN KEY (`movies_id`)
    REFERENCES `imdbmovies`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_directors_directors1`
    FOREIGN KEY (`directors_id`)
    REFERENCES `imdbmovies`.`directors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdbmovies`.`movies_stars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdbmovies`.`movies_stars` (
  `movies_id` INT NOT NULL,
  `stars_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `stars_id`),
  INDEX `fk_movies_has_stars_stars1_idx` (`stars_id` ASC) VISIBLE,
  INDEX `fk_movies_has_stars_movies1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_stars_movies1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `imdbmovies`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_stars_stars1`
    FOREIGN KEY (`stars_id`)
    REFERENCES `imdbmovies`.`stars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `imdbmovies`.`movies_genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdbmovies`.`movies_genres` (
  `movies_id` INT NOT NULL,
  `genres_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `genres_id`),
  INDEX `fk_movies_has_genres_genres1_idx` (`genres_id` ASC) VISIBLE,
  INDEX `fk_movies_has_genres_movies1_idx` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_has_genres_movies1`
    FOREIGN KEY (`movies_id`)
    REFERENCES `imdbmovies`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_has_genres_genres1`
    FOREIGN KEY (`genres_id`)
    REFERENCES `imdbmovies`.`genres` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
