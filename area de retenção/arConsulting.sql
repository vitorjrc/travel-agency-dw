select * from ar_dim_calendario
limit 0, 5000;

-- mongo
select * from ardw.ar_cleanup_cliente_m
limit 0, 5000;

select * from ardw.ar_cleanup_vendas_m
limit 0, 5000;

select * from ardw.ar_cleanup_viagens_m
limit 0, 5000;

select * from ardw.ar_cleanup_viagens_m_previous
limit 0, 5000;


-- mysql
select * from ardw.ar_cleanup_cliente_s
limit 0, 5000;

-- teste cliente novo
insert into ardw.ar_cleanup_cliente_s values (26, 999999999, "Picheleiro", "Vitoriaaaaa", "Testazao");

select * from ardw.ar_cleanup_vendas_s
limit 0, 5000;

select * from ardw.ar_cleanup_viagens_s
limit 0, 5000;

select * from ardw.ar_cleanup_viagens_s_previous
limit 0, 5000;


-- excel
select * from ardw.ar_cleanup_cliente_e
limit 0, 5000;

select * from ardw.ar_cleanup_vendas_e
limit 0, 5000;

select * from ardw.ar_cleanup_viagens_e
limit 0, 5000;

select * from ardw.ar_cleanup_viagens_e_previous
limit 0, 5000;


-- quarentena
select * from ardw.ar_dim_calendario;
select * from ardw.ar_dim_cliente;
select * from ardw.ar_dim_vendas;
select * from ardw.ar_dim_viagens;