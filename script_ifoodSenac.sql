CREATE DATABASE ifood_Senac
USE ifood_Senac;

CREATE TABLE cliente (
    id_cliente int PRIMARY KEY AUTO_INCREMENT,
    nome varchar(60) NOT NULL,
    email varchar(100) NOT NULL unique,
    senha varchar (16) NOT NULL,
    data_cadastro date
    );
    
CREATE TABLE restaurante (
    id_rest int PRIMARY KEY AUTO_INCREMENT,
    nome varchar (50) NOT NULL,
    categoria varchar (20) NOT NULL,
    avaliacao_media DECIMAL (2,1) DEFAULT 0.0,
    cidade varchar(30) NOT NULL
    );
    
CREATE TABLE prato (
    id_prato int PRIMARY KEY AUTO_INCREMENT,
    nome varchar (20) NOT NULL,
    descricao varchar (50) NOT NULL,
    preco decimal (10,2) DEFAULT 0.0,
    tempo_preparo int
    );
    
CREATE TABLE pedido (
    id_pedido int PRIMARY KEY AUTO_INCREMENT,
    data_pedido date,
    valor_total decimal (10,2) DEFAULT 0.0,
    status_pedido varchar (10) NOT NULL  
    );
    
CREATE TABLE avaliacao (
    id_ava int PRIMARY KEY AUTO_INCREMENT,
    estrelas int NOT NULL,
    comentario varchar(50),
    data_avaliacao date
    );

INSERT INTO cliente (nome, email, senha, data_cadastro)
VALUES 
('Thalita Araújo', 'thalita@gmail.com', '456789', '2025-10-11'),
('Maria Silva','maria@gmail.com','123456','2024-11-19'),
('Andrea Silva', 'andrea123@gmail.com', '061121', '2023-12-31');

INSERT INTO restaurante (nome, categoria, avaliacao_media, cidade)
VALUES
('Bar do Zé, 'Almoço', 5.0, 'Recife'),
('Pizza Max', 'Pizza', 4.5, 'Recife'),
('Sushi House', 'Japonesa', 4.8, 'Olinda');

INSERT INTO prato (nome, descricao, preco, tempo_preparo) VALUES
('cuscuz, amarelinho, 15.50, 20);

SELECT * FROM cliente
WHERE YEAR(data_cadastro) = 2025;

UPDATE restaurante
SET avaliacao_media = 4.9
WHERE id_rest = 2;

UPDATE prato
SET preco = 24.90
WHERE id_prato = 1;


    