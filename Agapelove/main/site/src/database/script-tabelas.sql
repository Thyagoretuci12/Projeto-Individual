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

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(300),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

CREATE TABLE quiz(
	id INT PRIMARY KEY AUTO_INCREMENT,
	pontos INT,
	momento DATETIME, 
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

CREATE TABLE livros(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR (50),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);




