
CREATE DATABASE tigger;

USE tigger;

CREATE TABLE Estoque (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NomeProduto VARCHAR(255) not null,
    QuantEstoque INT NOT NULL
);

INSERT INTO Estoque (NomeProduto, QuantEstoque) VALUES 
("BiSCOITO Oreo Morango", 19);

INSERT INTO Estoque (NomeProduto, QuantEstoque) VALUES 
("Discate", 25);

DELIMITER //
CREATE TRIGGER atualizar_estoque_vendido
BEFORE INSERT ON Estoque
FOR EACH ROW
BEGIN
    SET NEW.QuantEstoque = NEW.QuantEstoque - 1;
END;
//DELIMITER ;

-- drop database tigger;