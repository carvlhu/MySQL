USE Loja;

SELECT 
	tabelaPedido.ClienteID,
    Clientes.Nome AS NomeCliente, 
    Produtos.Nome AS NomeProduto, 
    Categorias.Nome AS NomeCategoria
FROM Pedidos AS tabelaPedido
INNER JOIN Clientes 
ON Clientes.ClienteID = tabelaPedido.ClienteID

INNER JOIN Produtos
ON Produtos.ProdutoID = tabelaPedido.ProdutoID

INNER JOIN Categorias
ON Categorias.CategoriaID = tabelaPedido.CategoriaID

