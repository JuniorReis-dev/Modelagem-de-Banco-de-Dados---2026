CREATE DATABASE loja_de_livros;
USE loja_de_livros;


CREATE TABLE Editora (
    id_editora INT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    localizacao VARCHAR(255),
    PRIMARY KEY (id_editora)
);

CREATE TABLE Autor (
    id_autor INT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    pais_origem VARCHAR(100),
    PRIMARY KEY (id_autor)
);

CREATE TABLE Livro (
    id_livro INT AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    numero_paginas INT,
    genero VARCHAR(100),
    preco DECIMAL(10, 2) NOT NULL,
    id_editora INT,
    PRIMARY KEY (id_livro),
    FOREIGN KEY (id_editora) REFERENCES Editora(id_editora) 
        ON DELETE SET NULL 
        ON UPDATE CASCADE
);

CREATE TABLE Livro_Autor (
    id_livro INT,
    id_autor INT,
    PRIMARY KEY (id_livro, id_autor),
    FOREIGN KEY (id_livro) REFERENCES Livro(id_livro) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (id_autor) REFERENCES Autor(id_autor) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


