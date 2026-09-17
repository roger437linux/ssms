
CREATE TABLE vendas (
  id_venda INT IDENTITY(1, 1) PRIMARY KEY,
  id_cliente INT,
  data_venda DATE DEFAULT GETDATE(),
  valor DECIMAL(10, 2)
);

insert into vendas
(id_cliente, valor) values
(1000, 99.99);

SELECT * FROM dbo.vendas;

-- Criar índice
CREATE INDEX idx_vendas_cliente
ON vendas(id_cliente);

-- Listar  índices de uma tabela
SELECT t.name AS NomeTabela, i.name AS NomeIndice, i.type_desc AS TipoIndice
FROM sys.tables t
INNER JOIN sys.indexes i 
ON t.object_id = i.object_id
WHERE t.name = 'vendas'
ORDER BY i.name;


insert into vendas
(id_cliente, valor) values
(1000, 120.00),
(1001, 333.00);
