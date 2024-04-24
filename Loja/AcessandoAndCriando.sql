USE Loja;

SELECT * FROM produtos WHERE preco > 15;

-- Adicionem 3 Clientes e 3 Produtos

INSERT INTO Clientes (Nome, Email) VALUES 
('Rafael Carvalho', 'rafael@example.com'),
('Vitor Lima', 'vitor@example.com'),
('Pedro Felix', 'pedro@example.com');

INSERT INTO Produtos (Nome, Preco) VALUES 
('Produto C', 25.50),
('Produto D', 32.99),
('Produto E', 22.00);

SELECT * FROM clientes;