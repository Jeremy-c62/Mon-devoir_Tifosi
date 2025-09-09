-- Création de la base si elle n'existe pas
CREATE DATABASE IF NOT EXISTS `tifosi`;
USE `tifosi`;

-- Suppression des tables existantes pour éviter les conflits
DROP TABLE IF EXISTS `Achats`;
DROP TABLE IF EXISTS `Ingredient_Foccacia`;
DROP TABLE IF EXISTS `Boisson_menu`;
DROP TABLE IF EXISTS `Foccacia`;
DROP TABLE IF EXISTS `Boisson`;
DROP TABLE IF EXISTS `marque`;
DROP TABLE IF EXISTS `Menu`;
DROP TABLE IF EXISTS `Ingredients`;
DROP TABLE IF EXISTS `Clients`;

-- Table des menus
CREATE TABLE `Menu` (
  `Id_Menu` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(100) NOT NULL,
  `Prix` DECIMAL(5,2),
  PRIMARY KEY (`Id_Menu`)
);

-- Table des focaccias
CREATE TABLE `Foccacia` (
  `Id_Foccacia` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(100) NOT NULL,
  `Prix` DECIMAL(5,2),
  PRIMARY KEY (`Id_Foccacia`)
);

-- Table des marques de boissons
CREATE TABLE `marque` (
  `Id_marque` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(100) NOT NULL UNIQUE,
  PRIMARY KEY (`Id_marque`)
);

-- Table des boissons
CREATE TABLE `Boisson` (
  `Id_boisson` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(100) NOT NULL,
  `marque_id` INT,
  PRIMARY KEY (`Id_boisson`),
  FOREIGN KEY (`marque_id`) REFERENCES `marque`(`Id_marque`)
);

-- Table des ingrédients
CREATE TABLE `Ingredients` (
  `Id_Ingredients` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Id_Ingredients`)
);

-- Table des clients
CREATE TABLE `Clients` (
  `Id_Clients` INT NOT NULL AUTO_INCREMENT,
  `Nom` VARCHAR(100) NOT NULL,
  `Email` VARCHAR(150) NOT NULL UNIQUE,
  `Code_postal` INT,
  PRIMARY KEY (`Id_Clients`)
);

-- Table de liaison Foccacia <-> Ingrédients
CREATE TABLE `Ingredient_Foccacia` (
  `Quantitee` INT,
  `Foccacia_id` INT,
  `Ingredients_id` INT,
  PRIMARY KEY (`Foccacia_id`, `Ingredients_id`),
  FOREIGN KEY (`Foccacia_id`) REFERENCES `Foccacia`(`Id_Foccacia`),
  FOREIGN KEY (`Ingredients_id`) REFERENCES `Ingredients`(`Id_Ingredients`)
);

-- Table de liaison Boisson <-> Menu
CREATE TABLE `Boisson_menu` (
  `Boisson_id` INT,
  `Menu_id` INT,
  PRIMARY KEY (`Boisson_id`, `Menu_id`),
  FOREIGN KEY (`Boisson_id`) REFERENCES `Boisson`(`Id_boisson`),
  FOREIGN KEY (`Menu_id`) REFERENCES `Menu`(`Id_Menu`)
);

-- Table des achats
CREATE TABLE `Achats` (
  `Menu_id` INT,
  `Clients_id` INT,
  `Date_Achats` DATETIME,
  FOREIGN KEY (`Menu_id`) REFERENCES `Menu`(`Id_Menu`),
  FOREIGN KEY (`Clients_id`) REFERENCES `Clients`(`Id_Clients`)
);
