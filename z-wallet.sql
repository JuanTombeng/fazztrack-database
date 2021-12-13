CREATE TABLE `z-wallet`.`user_accounts` (
  `id_user_accounts` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `pin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_user_accounts`));