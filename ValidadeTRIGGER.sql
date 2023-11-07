
CREATE DATABASE tigger;

USE tigger;

CREATE TABLE Produto (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Validade DATE NOT NULL
);


INSERT INTO Produto (Nome, Validade)
VALUES ('Perfume Lily', '2027-01-21');

INSERT INTO Produto (Nome, Validade)
VALUES ('212 Woman', '2028-10-25');


-- CRIACAO TRIGGER | DELIMITER
DELIMITER //

CREATE TRIGGER validar_data_validade
BEFORE INSERT ON Produto
FOR EACH ROW
BEGIN

    IF NEW.Validade < '2023-10-30' THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Data de validade inválida';
    END IF;
END
// DELIMITER ;

SELECT * FROM Produto;

-- DROP DATABASE tigger;