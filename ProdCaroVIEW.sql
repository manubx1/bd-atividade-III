 CREATE DATABASE viewbd;

USE viewbd;

CREATE TABLE Produtos(
 Id INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR (255) NOT NULL,
 Preco DOUBLE NOT NULL
);

-- Inserindo dados
INSERT INTO Produtos (Nome, Preco) VALUES
('Perfume 212 woman', '1000.00'),
('Marie Marie', '1020.00'),
('Colar Pandora', '96.00');

-- VIEW: 
CREATE VIEW vw_produtos_caros AS
SELECT id, Nome, preco
FROM Produtos
WHERE Preco >100;


SELECT * FROM vw_produtos_caros;

 --  drop database viewbd;