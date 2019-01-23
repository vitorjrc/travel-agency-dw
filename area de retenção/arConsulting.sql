select * from ar_dim_calendario
limit 0, 5000;

-- mongo
select * from ardw.ar_cleanup_cliente_m
limit 0, 5000;

select * from ardw.ar_cleanup_vendas_m
limit 0, 5000;

select * from ardw.ar_cleanup_viagens_m
limit 0, 5000;

select * from ardw.ar_cleanup_vendas_m_previous
limit 0, 5000;


-- mysql
select * from ardw.ar_cleanup_cliente_s
limit 0, 5000;

-- teste cliente novo
use belomundo;
INSERT INTO Cliente
	(Id, Nome, Contacto, Email, NIF, Profissão, Rua, Cod_Postal, LocalCliente_Id)
	VALUES
		(8888, '9999', 919999999, 'TESTENOVO@hotmail.com', 888888888, 'COBRADOR', '1ª Travessa do Largo do COBRADOR', '4475-503', 1);
        
-- update a este cliente
UPDATE Cliente SET Profissão = 'PROFESSOR'
WHERE NIF = 888888888;
        
-- nova venda
INSERT INTO Venda
	(Numero, Data, Valor, Nr_Viagens, Cliente_Id)
	VALUES
		(46, '2015-01-07 10:15:39', 999999, 1, 1);

INSERT INTO Viagem
	(Id, Preco_Voo, Preco_Hotel, Preco_Total, Nr_Dias, Epoca, Data, Pais_Part, Pais_Dest, Pensao, Hotel_Codigo, Rota_Id, Venda_Numero)
	VALUES
		(59, 400, 300, 700, 4, 'O', '2018-10-17', 'Portugal', 'Tailândia', 'PC', 22, 'LISHKT', 46);  -- 1
        
-- nova venda
INSERT INTO Venda
	(Numero, Data, Valor, Nr_Viagens, Cliente_Id)
	VALUES
		(888, '2015-01-07 10:15:39', 999999, 1, 1);

INSERT INTO Viagem
	(Id, Preco_Voo, Preco_Hotel, Preco_Total, Nr_Dias, Epoca, Data, Pais_Part, Pais_Dest, Pensao, Hotel_Codigo, Rota_Id, Venda_Numero)
	VALUES
		(60, 400, 300, 700, 4, 'O', '2018-10-17', 'Portugal', 'Tailândia', 'PC', 22, 'LISHKT', 888);  -- 1
	
-- cliente 1 modificado
UPDATE Cliente SET Profissão = 'Jardineira'
WHERE NIF = 245005935;

INSERT INTO Cliente
	(Id, Nome, Contacto, Email, NIF, Profissão, Rua, Cod_Postal, LocalCliente_Id)
	VALUES
		(1, 'Maria Inês Machado', 919191919, 'maria03@hotmail.com', 245005935, 'Jardineira', '1ª Travessa do Largo do Carvalho', '4475-503', 1);
	
use ardw;
insert into ardw.ar_cleanup_cliente_s values (27, 999999988, "Picheleiro", "Vitoriaaaaa", "Testazao");

select * from ardw.ar_cleanup_vendas_s
limit 0, 5000;

select * from ardw.ar_cleanup_viagens_s
limit 0, 5000;

select * from ardw.ar_cleanup_vendas_s_previous
limit 0, 5000;


-- excel
select * from ardw.ar_cleanup_cliente_e
limit 0, 5000;

select * from ardw.ar_cleanup_vendas_e
limit 0, 5000;

select * from ardw.ar_cleanup_viagens_e
limit 0, 5000;

select * from ardw.ar_cleanup_vendas_e_previous
limit 0, 5000;


-- quarentena
select * from ardw.ar_dim_calendario;
select * from ardw.ar_dim_cliente;
select * from ardw.ar_dim_vendas;
select * from ardw.ar_dim_viagens;