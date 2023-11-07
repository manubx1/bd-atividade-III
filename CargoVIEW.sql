CREATE DATABASE viewbd;

USE viewbd;

CREATE TABLE Funcionarios(
 Id INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR (255) NOT NULL,
 Cargo VARCHAR (255) NOT NULL
);

INSERT INTO Funcionarios (Nome, Cargo) VALUES
('Pedro', 'Administrativo'),
('Tiago', 'Administrativo'),
('Joao', 'TI');

-- VIEW: 
CREATE VIEW vw_funcionarios_departamento AS
SELECT Id, Nome, Cargo
FROM Funcionarios
WHERE Cargo = 'Administrativo';

SELECT * FROM vw_funcionarios_departamento;