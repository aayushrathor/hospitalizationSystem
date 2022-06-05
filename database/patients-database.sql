CREATE DATABASE IF NOT EXISTS patients-database;

USE patients-database;

DROP TABLE IS EXISTS patients;

CREATE TABLE patients(
	id 				 BIGINIT UNSIGNED NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(255) DEFAULT NULL,
	email      VARCHAR(255) DEFAULT NULL, 
	phone      VARCHAR(255) DEFAULT NULL, 
	diagnose   VARCHAR(255) DEFAULT NULL, 
	image_url  VARCHAR(255) DEFAULT NULL, 
	create_at  TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	CONSTRAINT UQ_EMAIL UNIQUE (email) 
);