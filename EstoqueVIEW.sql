CREATE DATABASE viewbd;

USE viewbd;

CREATE TABLE Estoque(
 Id INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR (255) NOT NULL,
 Quant VARCHAR (255) NOT NULL
);

INSERT INTO Estoque (Nome, Quant) VALUES
('Brinco florzinha', '12'),
('Colar Princesa e o Sapo', '5'),
('Corrente masculina Prata', '2');

-- VIEW
CREATE VIEW vw_estoque_insuficiente AS
SELECT Id, Nome, Quant
FROM Estoque
WHERE Quant < 5;


SELECT * FROM vw_estoque_insuficiente;