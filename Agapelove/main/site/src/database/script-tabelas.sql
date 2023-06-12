-- CREATE USER 'AgapeUser'@'localhost' IDENTIFIED BY 'Agape1234';
-- GRANT ALL PRIVILEGES ON Agape.* TO 'AgapeUser'@'localhost';

CREATE DATABASE Agape;
USE Agape;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)	
);

CREATE TABLE perfil (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),	
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

CREATE TABLE medida (
	id INT PRIMARY KEY AUTO_INCREMENT,
	pontos INT
);

SELECT * FROM usuario;
SELECT * FROM medida;