USE Loja;

SELECT
	tabelaClientes.Nome,
    Categorias.Nome
FROM Clientes AS tabelaClientes

INNER JOIN Pedidos
ON Pedidos.ClienteID = tabelaClientes.ClienteID

INNER JOIN Categorias
ON Pedidos.CategoriaID = Categorias.CategoriaID
WHERE Categorias.Nome = "Eletrônicos";
