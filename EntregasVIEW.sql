CREATE DATABASE viewbd;

USE viewbd;

CREATE TABLE Pedidos(
 Id INT AUTO_INCREMENT PRIMARY KEY,
 Nome VARCHAR (255) NOT NULL,
 Stat VARCHAR (255) NOT NULL
);

INSERT INTO Pedidos (Nome, Stat) VALUES
('Colar', 'Pendente'),
('Brinco', 'Entregue'),
('Pulseira', 'Pendente');

-- VIEW:
CREATE VIEW vw_pedidos_pendentes AS
SELECT id, Nome, Stat
FROM Pedidos
WHERE Stat = 'Pendente';

SELECT * FROM vw_pedidos_pendentes;
