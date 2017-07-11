CREATE DATABASE IF NOT EXISTS vibrato;

DELETE FROM mysql.user WHERE User = 'mysql_user';
CREATE USER 'mysql_user'@'%' IDENTIFIED BY 'Al0K1*K%';

GRANT SELECT, INSERT, UPDATE, DELETE on vibrato.* TO 'mysql_user';

USE vibrato;

DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` varchar(255),

  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO info (name, description) VALUES ('Joel Heenan', 'example app line 1');
INSERT INTO info (name, description) VALUES ('Joel Heenan', 'example app line 2');
