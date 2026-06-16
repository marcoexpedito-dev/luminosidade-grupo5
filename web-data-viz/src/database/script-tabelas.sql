CREATE DATABASE setFilmagem;

USE setFilmagem;

DROP DATABASE setFilmagem;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE contato (
    idMensagem INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone CHAR(11) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(2) NOT NULL,
    assunto VARCHAR(100) NOT NULL,
    mensagem VARCHAR(250) NOT NULL,
    dt_envio DATETIME DEFAULT CURRENT_TIMESTAMP
);

create table fotografia (
	idFoto INT PRIMARY KEY AUTO_INCREMENT,
    imagem BLOB,
    dtFoto DATETIME,
    fk_usuario INT, 
    FOREIGN KEY (fk_usuario) REFERENCES usuario(idUsuario)
);

insert into empresa (razao_social, codigo_ativacao) values ('Empresa 1', 'ED145B');
insert into empresa (razao_social, codigo_ativacao) values ('Empresa 2', 'A1B2C3');
insert into aquario (descricao, fk_empresa) values ('Aquário de Estrela-do-mar', 1);
insert into aquario (descricao, fk_empresa) values ('Aquário de Peixe-dourado', 2);