USE Loja;

SELECT 
	tabelaProdutos.Nome,
    Categorias.Nome
FROM Produtos AS tabelaProdutos

INNER JOIN Categorias
ON tabelaProdutos.ProdutoID = Categorias.CategoriaID
    