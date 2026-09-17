
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
