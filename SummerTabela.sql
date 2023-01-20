DROP DATABASE IF EXISTS `Verao`;
CREATE SCHEMA IF NOT EXISTS `Verao`;
USE `Verao` ;

CREATE TABLE IF NOT EXISTS `Verao`.`lugares`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(120) NOT NULL,
    PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `Verao`.`lugares` (`name`)
VALUES
	('Buzios'),
    ('Fortaleza'),
    ('Parajuru'),
    ('Ceara'),
    ('Ilha Grande'),
    ('Rio de Janeiro');

CREATE TABLE IF NOT EXISTS `Verao`.`hospedagem`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `lugares_id` INT NOT NULL,
    `name` VARCHAR(120) NOT NULL,
    `estrelas` INT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`lugares_id`) REFERENCES `Verao`.`lugares` (`id`))
ENGINE = InnoDB;

INSERT INTO `Verao`.`hospedagem` (`lugares_id`, `name`, `estrelas`)
VALUES
	(1, 'Hotel Brabo', 5),
    (1, 'Hotel Tem certeza?', 2),
    (2, 'Hotel Rádio na cama', 3),
    (3, 'Hotel Paraiso', 5),
    (4, 'Hotel NHG', 5),
    (4, 'Hotel TS', 3),
    (5, 'Hotel Casa', 1),
    (5, 'Hotel Ebyrt', 4),
    (5, 'Hotel Sem Garantia dormiu porque quis', 3),
    (6, 'Camping dos Lobos', 2);

CREATE TABLE IF NOT EXISTS `Verao`.`pessoas`(
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(120) NOT NULL,
    `idade` INT NOT NULL,
    `hospedagem_id` INT NOT NULL,
    `dias` INT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`hospedagem_id`) REFERENCES `Verao`.`hospedagem` (`id`)
)
ENGINE = InnoDB;

INSERT INTO `Verao`.`pessoas` (`name`, `idade`, `hospedagem_id`, `dias`)
VALUES
	('Thati', 23, 1, 1),
    ('Cintia', 35, 2, 3),
    ('Bill', 20, 3, 4),
    ('Roger', 45, 4, 2),
    ('Norman', 58, 5, 2),   
    ('Patrick', 33, 6, 3),
    ('Vivian', 26, 7 , 4),
    ('Carol', 19, 8, 4),
    ('Angelina', 2, 9, 3),
    ('Paul', 46, 10, 3);