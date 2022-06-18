CREATE DATABASE IF NOT EXISTS patientsdb;

USE patientsdb;

DROP TABLE IF EXISTS patients;

CREATE TABLE patients(
	id         BIGINIT UNSIGNED NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(255) DEFAULT NULL,
	last_name  VARCHAR(255) DEFAULT NULL,
	email      VARCHAR(255) DEFAULT NULL, 
	phone      VARCHAR(255) DEFAULT NULL, 
	diagnose   VARCHAR(255) DEFAULT NULL, 
	image_url  VARCHAR(255) DEFAULT NULL, 
	create_at  TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	CONSTRAINT UQ_EMAIL UNIQUE (email) 
);

DELIMITER //
CREATE PROCEDURE create_and_return(IN first_name VARCHAR(255), IN last_name VARCHAR(255), IN email VARCHAR(255), IN phone VARCHAR(255), IN diagnose VARCHAR(255), IN image_url VARCHAR(255))
BEGIN
	INSERT INTO patients(first_name, email, addr, diagnose, phone, image_url) VALUES (first_name, email, addr, diagnose, phone, image_url);

	SET @PATIENT_ID = LAST_INSERT_ID();

	SELECT * FROM patients WHERE id=@PATIENT_ID;
END //
DELIMITER ;
