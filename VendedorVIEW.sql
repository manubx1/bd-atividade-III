CREATE DATABASE viewbd;

USE viewbd;

CREATE TABLE Vendedor(
Id INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Produto VARCHAR(255)
);

CREATE TABLE Clientes(
Id INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Telefone VARCHAR(22) NOT NULL,
IdVendedor INT,
FOREIGN KEY (IdVendedor) REFERENCES Vendedor(Id)
);


-- inserindo dados Clientes
INSERT INTO Clientes(Nome,Telefone)
Values( "Gabriela","(71) 9999-6666");

INSERT INTO Clientes(Nome,Telefone)
 VALUES( "Giovana","(63) 11111-2222");
 
INSERT INTO Clientes(Nome,Telefone)
VALUES("Miguel","(11) 00000-5555");

-- -- inserindo dados Vendedor
INSERT INTO Vendedor(Nome,Produto)
VALUES("Vinicius","Colar Princesa e o Sapo");
 
INSERT INTO Vendedor(Nome,Produto)
VALUES("Mario","Camisa Bahia");
 
INSERT INTO Vendedor(Nome,Produto)
VALUES("Igor","Acai");
 
-- VIEW: 
CREATE VIEW vw_relacionamento_cliente_vendedor AS
 SELECT 
 C.Nome AS "Nome dos Clientes",
 C.Telefone AS "Telefone dos Clientes",
 V.Nome AS "Nome do Vendedores",
 V.Produto AS "Produto do Vendedors"
 FROM Vendedor V
 INNER JOIN Clientes C 
 ON V.Id = C.IdVendedor;


SELECT * FROM vw_relacionamento_cliente_vendedor;

 -- drop database viewbd;