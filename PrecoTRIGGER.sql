
CREATE DATABASE tigger;

USE tigger;
CREATE TABLE Produtos(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    NomeProduto VARCHAR(255) NOT NULL,
    Preco DECIMAL (10,2) NOT NULL
);

INSERT INTO Produtos (nomeProduto, Preco) VALUES 
("Biscoito Oreo", 30.00);

INSERT INTO Produtos (nomeProduto, Preco) VALUES 
("Iorgut Grego", 70.00);
       
-- TRIGGER: 
DELIMITER //
CREATE TRIGGER aumenta_precos
BEFORE UPDATE ON Produtos
FOR EACH ROW
BEGIN
    SET NEW.Preco = NEW.Preco * 1.1;
END;
//

DELIMITER ;

SELECT * FROM aumenta_precos;

DROP DATABASE tigger;