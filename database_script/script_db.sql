CREATE DATABASE db_estudo;

USE db_estudo;

CREATE TABLE tb_materia(
cod_materia INT PRIMARY KEY AUTO_INCREMENT,
nome_materia VARCHAR(100)
);

CREATE TABLE tb_topico(
cod_topico INT PRIMARY KEY AUTO_INCREMENT,
cod_materia INT,
FOREIGN KEY (cod_materia) REFERENCES tb_materia(cod_materia),
nome_topico VARCHAR(100)
);

CREATE TABLE tb_conteudo(
cod_conteudo INT PRIMARY KEY AUTO_INCREMENT,
cod_materia INT,
FOREIGN KEY (cod_materia) REFERENCES tb_materia(cod_materia),
cod_topico INT,
FOREIGN KEY (cod_topico) REFERENCES tb_topico(cod_topico),
txt_conteudo TEXT 
);