-- ------------------------------------------------------
-- ------------------------------------------------------
-- Povoamento inicial da base de dados
-- ------------------------------------------------------
-- ------------------------------------------------------
--
-- Esquema: "belomundo"
USE `belomundo` ;


--
-- Permissão para fazer operações de remoção de dados.
SET SQL_SAFE_UPDATES = 0;

ALTER TABLE belomundo.Cliente CONVERT TO CHARACTER SET utf8;
ALTER TABLE belomundo.LocalCliente CONVERT TO CHARACTER SET utf8;
ALTER TABLE belomundo.Hobbies CONVERT TO CHARACTER SET utf8;
ALTER TABLE belomundo.Venda CONVERT TO CHARACTER SET utf8; 
ALTER TABLE belomundo.Viagem CONVERT TO CHARACTER SET utf8;
ALTER TABLE belomundo.Categoria CONVERT TO CHARACTER SET utf8;
ALTER TABLE belomundo.Hotel CONVERT TO CHARACTER SET utf8;
ALTER TABLE belomundo.LocalHotel CONVERT TO CHARACTER SET utf8;
ALTER TABLE belomundo.Pensao CONVERT TO CHARACTER SET utf8;
ALTER TABLE belomundo.Rota CONVERT TO CHARACTER SET utf8;

DELETE FROM Cliente;
DELETE FROM LocalCliente;
DELETE FROM Hobbies;
DELETE FROM Venda; 
DELETE FROM Viagem;
DELETE FROM Categoria;
DELETE FROM Hotel;
DELETE FROM LocalHotel;
DELETE FROM Pensao;
DELETE FROM Rota;



INSERT INTO LocalCliente
	(Id, Rua, Local, Cod_Postal)
	VALUES
		(1, 'Maia'), --Porto
		(2, 'Póvoa de Varzim'), --Porto
		(3, 'Mafra'), --Lisboa
		(4, 'Portimão'), --Faro
		(5, 'Guimarães'), --Braga
		(6, 'Sintra'), --Lisboa
		(7, 'Lamego'), --Viseu
		(8, 'Boticas'), --Vila Real
		(9, 'Penafiel'), --Porto
		(10, 'Oeiras'), --Lisboa
		(11, 'Porto'), --Porto
		(12, 'Vila Nova de Famalicão'), --Braga
		(13, 'Vila Verde'), --Braga
		(14, 'Castro Daire'), --Viseu
		(15, 'Murça'), --Vila Real
		(16, 'Esposende'), --Braga
		(17, 'Cascais'), --Lisboa
		(18, 'Amadora'), --Lisboa
		(19, 'Alcobaça'), --Leiria
		(20, 'Tavira'), --Faro
		(21, 'Felgueiras'), --Porto
		(22, 'Faro') --Faro
	;



INSERT INTO LocalHotel
	(Id, Local, Pais)
	VALUES
		(1, 'Sydney', 'Austrália'),
		(2, 'Rio de Janeiro', 'Brasil'),
		(3, 'Hurghada', 'Egipto'),
		(4, 'Tóquio', 'Japão'),
		(5, 'Dubai', 'Emirados Árabes Unidos'),
		(6, 'Saint Ann', 'Jamaica'),
		(7, 'Nova Iorque', 'Estados Unidos da América'),
		(8, 'Istambul', 'Turquia'),
		(9, 'Praga', 'República Checa'),
		(10, 'Barcelona', 'Espanha'),
		(11, 'Atenas', 'Grécia'),
		(12, 'Roma', 'Itália'),
		(13, 'Londres', 'Reino Unido'),
		(14, 'Paris', 'França'),
		(15, 'Palma de Maiorca', 'Espanha'),
		(16, 'Santorini', 'Grécia'),
		(17, 'Florença', 'Itália'),
		(18, 'Amsterdão', 'Holanda'),
		(19, 'Madeira', 'Portugal'),
		(20, 'Berlim', 'Alemanha'),
		(21, 'Viena', 'Áustria'),
		(22, 'Phuket', 'Tailândia'),
		(23, 'Veneza', 'Itália')
	;



INSERT INTO Rota
	(Id, Companhia, Duracao, Aeroporto_Part, Aeroporto_Dest) -- Um aeroporto por destino, sem escalas
	VALUES
		('PORSYD', 'Emirates', 26,'Aeroporto Sá Carneiro','Aeroporto de Sydney'),
		('PORGIG','TAP',12,'Aeroporto Sá Carneiro','Aeroporto Internacional do Rio de Janeiro',
		('PORHRG','Turkish Airlines',12,'Aeroporto Sá Carneiro','Aeroporto Internacional de Hurghada'),
		('PORHND','AirFrance',18,'Aeroporto Sá Carneiro','Aeroporto Internacional de Tóquio'),
		('PORDXB','Emirates',9,'Aeroporto Sá Carneiro','Aeroporto Internacional de Dubai'),
		('PORMBJ','Air Canada',36,'Aeroporto Sá Carneiro','Aeroporto Internacional Sangster'),
		('PORJFK','TAP',12,'Aeroporto Sá Carneiro','Aeroporto Internacional J. F. Kennedy'),
		('PORIST','AirFrance',9,'Aeroporto Sá Carneiro','Aeroporto de Istambul Ataturk'),
		('PORPRG','TAP',6,'Aeroporto Sá Carneiro','Aeroporto de Praga'),
		('PORBCN','Ryanair',2,'Aeroporto Sá Carneiro','Aeroporto de Barcelona-El Prat'),
		('PORATH','AirFrance',7,'Aeroporto Sá Carneiro','Aeroporto Internacional de Atenas'),
		('PORFCO','TAP',5,'Aeroporto Sá Carneiro','Aeroporto Internacional de Roma'),
		('PORSTN','Ryanair',3,'Aeroporto Sá Carneiro','Aeroporto de Londres Stansted'),
		('PORCDG','Ryanair',2,'Aeroporto Sá Carneiro','Aeroporto de Paris-Charles de Gaulle'),
		('PORPMI','TAP',4,'Aeroporto Sá Carneiro','Aeroporto de Palma de Maiorca'),
		('PORJTR','TAP',8,'Aeroporto Sá Carneiro','Aeroporto Internacional de Santorini'),
		('PORFLR','TAP',5,'Aeroporto Sá Carneiro','Aeroporto Florença-Peretola'),
		('PORAMS','TAP',3,'Aeroporto Sá Carneiro','Aeroporto de Amesterdão Schiphol'),
		('PORFNC','TAP',2,'Aeroporto Sá Carneiro','Aeroporto Internacional da Madeira'),
		('PORTXL','AirFrance',5,'Aeroporto Sá Carneiro','Aeroporto de Berlim-Tegel'),
		('PORVIE','Iberia',5,'Aeroporto Sá Carneiro','Aeroporto Internacional de Viena'),
		('LISSYD','Emirates',23,'Aeroporto da Portela','Aeroporto de Sydney'), --------------------------------
		('LISGIG','TAP',10,'Aeroporto da Portela','Aeroporto Internacional do Rio de Janeiro'),
		('LISHND','AirFrance',16,'Aeroporto da Portela','Aeroporto Internacional de Tóquio'),
		('LISDXB','Emirates',7,'Aeroporto da Portela','Aeroporto Internacional de Dubai'),
		('LISMBJ','Air Canada',34,'Aeroporto da Portela','Aeroporto Internacional Sangster'),
		('LISHKT','Emirates',18,'Aeroporto da Portela','Aeroporto Internacional de Phuket'),
		('LISJFK','TAP',8,'Aeroporto da Portela','Aeroporto Internacional J. F. Kennedy'),
		('LISIST','AirFrance',9,'Aeroporto da Portela','Aeroporto de Istambul Ataturk'),
		('LISBCN','Iberia',2,'Aeroporto da Portela','Aeroporto de Barcelona-El Prat'),
		('LISATH','AirFrance',7,'Aeroporto da Portela','Aeroporto Internacional de Atenas'),
		('LISFCO','Ryanair',3,'Aeroporto da Portela','Aeroporto Internacional de Roma'),
		('LISSTN','Ryanair',3,'Aeroporto da Portela','Aeroporto de Londres Stansted'),
		('LISPMI','Iberia',4,'Aeroporto da Portela','Aeroporto de Palma de Maiorca'),
		('LISJTR','TAP',8,'Aeroporto da Portela','Aeroporto Internacional de Santorini'),
		('LISVCE','TAP',3,'Aeroporto da Portela','Aeroporto Internacional Marco Polo'),
		('LISFNC','TAP',2,'Aeroporto da Portela','Aeroporto Internacional da Madeira'),
		('LISTXL','TAP',4,'Aeroporto da Portela','Aeroporto de Berlim-Tegel')
	;	



INSERT INTO Hotel -- um hotel por destino, tal como os voos
	(Codigo, Nome, Contacto, Email, Estrelas, Rua, Cod_Postal, LocalHotel_Id)
	VALUES
		(1, 'Primus Hotel Sydney', 61280278000, 'info@primushotelsydney.com', 5, '339 Pitt Street', '2000', 1),
		(2, 'Windsor California Hotel', 552121955600, 'centraldereservas@windsorhoteis.com.br', 4, 'Av. Atlantica 2616 ', '22041-001', 2),
		(3, 'Mercure Hurghada Hotel', 20653464646, 'info@mercurehotelhurgada.com', 4, 'Safaga Road Km 12', '84517', 3),
		(4, 'Hotel Trend Asakusa Tawaramachi', 0352465211, 'info@trendhotelasakusaTawa.com', 2, ' Chome-12-9 Asakusa', '111-0042', 4),
		(5, 'Rove Dubai Marina', 97142419400  , 'info@rovehotels.com', 3, 'Al Seba Street', '119444', 5),
		(6, 'Hibiscus Lodge', 18769742676, 'mdoswald@cwjamaica.com', 3, ' 83 Main St', '1194-10', 6),
		(7, 'The Roosevelt Hotel', 12126619600, 'reservations@rooseveltnyc.com', 4, '45 E 45th St', 'NY 10017', 7),
		(8, 'The White Orient Hotel', 902122258585, 'info@thewhiteorient.com', 4, 'İnönü Mahallesi, Elmadağ Cd. No:38', '34373', 8),
		(9, 'Corinthia Hotel Prague ', 420261191211, 'prague@corinthia.com', 5, 'Kongresová 1655/1', '140 69', 9),
		(10, 'Ona Hotels Arya', 34931317500, 'recepcion@onahotels-arya.com ', 3, 'Carrer de Sants, 383', '08028', 10),
		(11, 'Central Hotel', 61280278000, 'reservation@centralhotel.gr', 3, 'Apollonos 21, Athina', '105 57', 11),
		(12, 'Hotel Shangri-La Roma', 39065916441, 'info@shangrilacorsetti.it ', 4, 'Viale Algeria, 141', '00144 RM', 12),
		(13, 'Princess Victoria', 442087494466, 'info@princessvictoria.co.uk', 4, '217 Uxbridge Rd', ' W12 9DH', 13),
		(14, 'Hotel Flanelles', 33177359000, 'bonjour@flanellesparis.com', 4, ' 14 Rue Brey', '75017', 14),
		(15, 'Abelux', 34971750840, 'reservas@hotelabelux.com', 2, 'Calle Ramón Muntaner, 30', '07003', 15),
		(16, 'San Giorgio', 302286023516, 'info@sangiorgiovilla.gr', 2, ' Main Street', ' 847 00', 16),
		(17, 'Hotel LOrologio', 39055277380, 'info@hotelorologioflorence.com', 4, 'Piazza di Santa Maria Novella, 24', '50123', 17),
		(18, 'MOXY Amsterdam Houthavens', 31203081780, 'info@houthavensAms.com', 4, ' Danzigerkade 175', '1013 AP', 18),
		(19, 'Pestana Casino Park', 291209100, 'info@pestanahotelmadeira.com', 5, 'Rua Imperatriz D Amelia', '9004-513', 19),
		(20, 'Holiday Inn Berlin City East Side', 49493074001470, 'info@innhotelberlim.com', 4, 'Wanda-Kallenbach-Straße 2', '10243', 20),
		(21, 'Ruby Marie Hotel Vienna', 431205639700, 'sales@ruby-hotels.com', 4, 'Kaiserstraße 2-4', '1070', 21),
		(22, 'The Mareeya Place', 6676385633, 'tuverisalvatore@tiscali.it', 3, '27/4 Moo 3 T. Kamala A. Kathu', '83150', 22),
		(23, 'Splendid Venice - Starhotels Collezione', 390415200755, 'reservations.splendidvenice.ve@starhotels.it', 4, 'San Marco Mercerie, 760', '30124', 23)
	;



INSERT INTO Pensao
	(IdPensao, Descricao, Hotel_Codigo)			--Pensoes: SA, PA, MP, PC (pensao completa, meia pensao, sem alimentação, pequeno almoço)
	VALUES
		(1, 'PC', 1),
		(2, 'MP', 1),
		(3, 'PC', 2),
		(4, 'MP', 2),
		(5, 'PA', 2),
		(6, 'PC', 3),
		(7, 'MP', 3),
		(8, 'PA', 3),
		(9, 'MP', 4),
		(10, 'PA', 4),
		(11, 'SA', 4),
		(12, 'PC', 5),
		(13, 'MP', 5),
		(14, 'PA', 5),
		(15, 'SA', 5),
		(16, 'PC', 6),
		(17, 'MP', 6),
		(18, 'PA', 6),
		(19, 'SA', 6),
		(20, 'PC', 7),
		(21, 'MP', 7),
		(22, 'PA', 7),
		(23, 'PC', 8),
		(24, 'MP', 8),
		(25, 'PC', 9),
		(26, 'MP', 9),
		(27, 'PC', 10),
		(28, 'MP', 10),
		(29, 'PA', 10),
		(30, 'SA', 10),
		(31, 'PC', 11),
		(32, 'MP', 11),
		(33, 'PA', 11),
		(34, 'SA', 11),
		(35, 'PC', 12),		
		(36, 'MP', 12),
		(37, 'PA', 12),
		(38, 'PC', 13),
		(39, 'MP', 13),
		(40, 'PA', 13),
		(41, 'PC', 14),
		(42, 'MP', 14),	
		(43, 'PA', 14),
		(44, 'PC', 15),
		(45, 'MP', 15),
		(46, 'PA', 15),
		(47, 'SA', 15),
		(48, 'PC', 16),
		(49, 'MP', 16),
		(50, 'PA', 16),
		(51, 'SA', 16),
		(52, 'PC', 17),
		(53, 'MP', 17),
		(54, 'PA', 17),
		(55, 'PC', 18),
		(56, 'MP', 18),
		(57, 'PA', 18),
		(58, 'PC', 19),
		(59, 'MP', 19),
		(60, 'PC', 20),
		(61, 'MP', 20),
		(62, 'PA', 20),
		(63, 'PC', 21),
		(64, 'MP', 21),
		(65, 'PC', 22),
		(66, 'MP', 22),
		(67, 'PA', 22),
		(68, 'SA', 22),
		(69, 'PC', 23),
		(70, 'MP', 23)	
	;



INSERT INTO Cliente
	(Id, Nome, Contacto, Email, NIF, Profissao, Rua, Cod_Postal, LocalCliente_Id)
	VALUES
		(1, 'Maria Inês Machado', 919191919, 'maria03@hotmail.com', 245005935, 'Cabeleireira', '1ª Travessa do Largo do Carvalho', '4475-503', 1),
		(2, 'Vítor Campos', 921231234, 'vitoPT@gmail.com', 281195510, 'Agricultor', 'Rua 1º de Maio', '4490-451', 2),
		(3, 'Sérgio Godinho', 967854345, 'beethoven_sg@hotmail.com', 254952267, 'Músico', 'Rua da Bela Vista', '2665-062', 3),
		(4, 'Diana Oliveira', 912677234, 'dianaa1@sapo.pt', 269753559, 'Engenheira Informática', 'Estrada Toy 70', '8200-636', 4),
		(5, 'Marcos Matos', 9156534609, 'mm1990@gmail.com', 257843736, 'Sapateiro', 'Rua Abade de Tagilde', '4810-290', 5),
		(6, 'Leonor Castro', 960121564, 'lele53@hotmail.com', 231391919, 'Esteticista', 'Rua do Cotão Novo ', '2735-500',  6),
		(7, 'Bruno Silva', 933456590, 'bruninho_03@sapo.pt', 235794554, 'Engenheiro Mecânico', 'Rua Senhora da Ajuda', '5100-839', 7),
		(8, 'Duarte Machado', 919123472, 'lady_killer@hotmail.com', 235918865, 'Bancário', 'Beco 25 de Abril', '5460-210', 8),
		(9, 'Gonçalo Oliveira', 252878616, 'mad_max1980@hotmail.com', 222900784, 'Barbeiro', 'Rua do Mirante', '4575-170', 9),
		(10, 'Nuno Barreira', 910356734, 'rebellion@gmail.com', 241953014, 'Desempregado', 'Rua 1º de Dezembro', '2730-140', 10),
		(11, 'Rafael Silva', 925652349, 'rafinha1997@hotmail.com', 296231916, 'Gestor', 'Rua Cidral de Baixo', '4050-196', 11),
		(12, 'João Afonso', 967455123, 'joca@sapo.pt', 246706252, 'Educador', 'Rua Dona Adelaide Marques de Sá', '4760-534', 12),
		(13, 'Rafaela Santos', 252416091, 'rafaelazinha25@gmail.com', 257469010, 'Pedreira', 'Rua Castanheiro de Cima 1', '4730-423', 13),
		(14, 'Eduardo Barcelona', 251903321, 'black_mamba_05@hotmail.com', 253444004, 'Trolha', 'Rua de Santo António', '3600-525', 14),
		(15, 'Alexandre Marques', 912148897, 'alex_the_best3@hotmail.com', 280368135, 'Carpinteiro', 'Rua Cimo da Eira', '5090-016', 15),
		(16, 'Cátia Almeida', 921327668, 'katinha@sapo.pt', 253466004, 'Piloto de Aviação', 'Rua Padre Cândido Rodrigues Saloio', '4740-612', 16),
		(17, 'Zulmira Campos', 967843223, 'zinha_06@gmail.com', 269003559, 'Engenheira Química', 'Rua 12 de Julho', '2775-061', 17),
		(18, 'Daniel Sintra', 921527448, 'dany_sintra@hotmail.com', 235666654, 'Economista', 'Rua D à Rua das Escolas', '2720-115', 18),
		(19, 'Olga Mendes', 9150034129, 'olguinha1977@gmail.com', 242252024, 'Escriturária', 'Rua Cabeça Alta', '2460-358', 19),
		(20, 'Joel Costa', 967782332, 'jo_costa@hotmail.com', 281177532, 'Bancário', 'Rua Coronel Jaime Cansado', '8800-547', 20),
		(21, 'José Silva', 910326232, 'zezinho1973@live.com.pt', 291131011, 'Carpinteiro', 'Rua do Burgo', '4610-841', 21),
		(22, 'Susana Oliveira', 930456592, 'suzy_21@sapo.pt', 289095220, 'Gestora', 'Rua das Amendoeiras', '8005-446', 22),
		(23, 'Rui Peixoto', 967811523, 'peixe1996@hotmail.com', 272894117, 'Estudante', 'Rua 1 de Julho ', '4760-687', 12),
		(24, 'Tiago Castro', 910000123, 'tiago_champ_1904@live.com.pt', 282034714, 'Engenheiro e Gestor Industrial', 'Rua da Igreja', '4495-527', 2),
		(25, 'Ângela Pereira', 919823112, 'blondie_angie@sapo.pt', 253169933, 'Optometrista', 'Rua das Quebradas ', '4805-578', 5)
	;



INSERT INTO Hobbies
	(Id, Designacao, Cliente_Id)
	VALUES
		(1, 'JARD', 1),
		(2, 'LER', 1),
		(3, 'DANC', 2),
		(4, 'ORIG', 3),
		(5, 'YOGA', 4),
		(6, 'ACAM', 4),
		(7, 'TOCA', 6),
		(8, 'SURF', 7),
		(9, 'SKI', 7),
		(10, 'VIAJ', 8),
		(11, 'LER', 9),
		(12, 'CART', 10),
		(13, 'FOTO', 10),
		(14, 'VOPR', 12),
		(15, 'NADA', 12),
		(16, 'GEOC', 13),
		(17, 'SHOP', 13),
		(18, 'COLB', 13),
		(19, 'GOLF', 14),
		(20, 'VIAJ', 16),
		(21, 'DMET', 16),
		(22, 'ACAM', 17),
		(23, 'PESC', 18),
		(24, 'COLS', 18),
		(25, 'CART', 19),
		(26, 'FOTO', 19),
		(27, 'SHOP', 19),
		(28, 'GOLF', 20),
		(29, 'TOCA', 20),
		(30, 'COLP', 21),
		(31, 'SURF', 21),
		(32, 'GEOC', 21),
		(33, 'COLP', 22),
		(34, 'VIAJ', 22),
		(35, 'DESP', 22),
		(36, 'CART', 23),
		(37, 'FOTO', 23),
		(38, 'NADA', 24),
		(39, 'DESP', 24),
		(40, 'GEOC', 24),
		(41, 'VIAJ', 24),
		(42, 'SKI', 25),
		(43, 'NADA', 25),
		(44, 'DESP', 25),
		(45, 'CAMI', 5)
	;
/*
Acampar 			ACAM
Aprender língua 	LING
Caça 				CACA
Cantar 				CANT
Coleção pedras		COLP
Coleção bonecas		COLB
Coleção selos 		COLS
Costurar 			COST
Cozinhar 			COZI
Dançar 				DANC
Deteção de metais 	DMET
Desenho 			DESE
Escrever 			ESCR
Fazer caminhadas 	CAMI
Fazer jardinagem 	JARD
Fotografia 			FOTO
Geocaching			GEOC
Golf	 			GOLF
Ir a concertos 		CONC
Ir ao cinema 		CINE
Ir ao teatro 		TEAT
Jardinagem 			JARD
Jogar cartas 		CART
Jogar videojogos 	JOGO
Jogar xadrez 		XADR
Ler 				LER
Meditar 			MEDI
Nadar 				NADA
Origami 			ORIG
Passear 			PASS
Pescar 				PESC
Praticar desporto 	DESP
Programar 			PROG
Shopping			SHOP
Surf				SURF
Ski					SKI
Tocar instrumentos 	TOCA
Tricô 				TRIC
Ver televisão 		VERT
Viajar 				VIAJ
Vólei de Praia 		VOPR
Voluntariado 		VOLU
Yoga 				YOGA
*/



INSERT INTO Venda --4 7 16 22 2
	(Numero, Data, Valor, Nr_Viagens, Cliente_Id)
	VALUES
		(1, '2015-01-07 10:15:39', 1300, 1, 1),
		(2, '2015-01-05 23:25:41', 700, 1, 3),
		(3, '2015-03-16 16:40:00', 500, 1, 4),
		(4, '2015-03-22 11:30:02', 520, 1, 2),
		(5, '2015-01-11 14:03:56', 710, 1, 6),
		(6, '2015-04-03 10:25:55', 2020, 2, 7),
		(7, '2015-05-19 08:22:02', 330, 1, 8),
		(8, '2015-01-15 15:00:47', 300, 1, 9),
		(9, '2015-04-01 01:35:00', 350, 1, 11),
		(10, '2015-05-03 19:35:31', 330, 1, 12),
		(11, '2015-05-01 22:20:08', 350, 1, 16),
		(12, '2015-12-17 18:55:59', 195, 1, 5),
		(13, '2016-01-29 19:45:34', 240, 1, 17),
		(14, '2016-01-17 22:05:26', 200, 1, 18),
		(15, '2016-01-17 09:53:04', 1900, 2, 19),
		(16, '2016-02-23 11:35:48', 300, 1, 20),
		(17, '2016-02-29 23:30:50', 190, 1, 10),
		(18, '2016-03-12 21:15:33', 2400, 4, 22),
		(19, '2016-03-24 20:45:30', 330, 1, 23),
		(20, '2016-02-01 10:17:02', 460, 1, 24),
		(21, '2016-05-02 12:47:00', 230, 1, 25),
		(22, '2016-06-18 15:42:58', 390, 1, 4),
		(23, '2016-04-20 19:01:50', 190, 1, 8),
		(24, '2016-03-10 22:26:19', 190, 1, 11),
		(25, '2015-11-02 21:12:12', 310, 1, 13),
		(26, '2017-01-14 17:02:59', 1500, 3, 4),
		(27, '2017-01-10 14:06:15', 460, 1, 24),
		(28, '2017-02-13 12:55:13', 190, 1, 7),
		(29, '2017-03-16 18:03:42', 190, 1, 16),
		(30, '2017-03-27 23:54:01', 310, 1, 18),
		(31, '2017-02-14 10:05:10', 140, 1, 22),
		(32, '2017-03-24 11:45:09', 1080, 2, 7),
		(33, '2017-04-29 19:00:52', 310, 1, 8),
		(34, '2017-10-05 17:25:12', 300, 1, 14),
		(35, '2017-09-22 10:45:23', 330, 1, 11),
		(36, '2017-11-01 01:12:09', 460, 1, 24),
		(37, '2017-11-03 00:55:01', 390, 1, 18),
		(38, '2018-02-12 19:23:58', 190, 1, 15),
		(39, '2018-01-01 17:55:06', 310, 1, 4),
		(40, '2018-02-11 10:01:27', 600, 2, 4),
		(41, '2018-02-13 01:00:43', 600, 2, 21),
		(42, '2018-03-07 16:16:00', 300, 1, 8),
		(43, '2018-04-15 05:58:21', 1410, 3, 16),
		(44, '2018-05-29 10:30:45', 460, 1, 4),
		(45, '2018-05-10 18:00:59', 1400, 2, 22)
	;



INSERT INTO Viagem 
	(Id, Preco_Voo, Preco_Hotel, Preco_Total, Nr_Dias, Epoca, Data, Pais_Part, Pais_Dest, Pensao, Hotel_Codigo, Rota_Id, Venda_Numero)
	VALUES
		(1, 1000, 300, 1300, 3, 'P', '2015-04-09', 'Portugal', 'Austrália', 'PC', 1, 'PORSYD', 1), -- data: yyyy-mm-dd
		(2, 200, 500, 700, 5, 'F', '2015-06-09', 'Portugal', 'Brasil', 'MP', 2, 'LISGIG', 2),
		(3, 350, 150, 500, 4, 'F', '2015-07-12', 'Portugal', 'Egipto', 'PC', 3, 'PORHRG', 3),
		(4, 400, 120, 520, 2, 'F', '2015-07-26', 'Portugal', 'Japão', 'MP', 4, 'LISHND', 4),
		(5, 410, 300, 710, 2, 'F', '2015-07-12', 'Portugal', 'Emirados Árabes Unidos', 'PA', 5, 'PORDXB', 5),
		(6, 410, 700, 1010, 6, 'F', '2015-08-02', 'Portugal', 'Emirados Árabes Unidos', 'PC', 5, 'PORDXB', 6), --2
		(7, 410, 700, 1010, 6, 'F', '2015-08-02', 'Portugal', 'Emirados Árabes Unidos', 'PC', 5, 'PORDXB', 6), --2
		(8, 150, 180, 330, 2, 'F', '2015-08-19', 'Portugal', 'Reino Unido', 'PA', 13, 'LISSTN', 7),
		(9, 160, 140, 300, 2, 'O', '2015-10-01', 'Portugal', 'Alemanha', 'PA', 20, 'PORTXL', 8),
		(10, 50, 300, 350, 2, 'O', '2015-12-01', 'Portugal', 'Espanha', 'MP', 10, 'PORBCN', 9), 
		(11, 150, 180, 330, 2, 'O', '2015-12-03', 'Portugal', 'Reino Unido', 'PA', 13, 'LISSTN', 10), 
		(12, 50, 300, 350, 2, 'O', '2015-12-10', 'Portugal', 'Espanha', 'SA', 10, 'PORBCN', 11), 
		(13, 100, 95, 195, 2, 'P', '2016-04-20', 'Portugal', 'Áustria', 'MP', 21, 'PORVIE', 12), 
		(14, 150, 90, 240, 1, 'O', '2016-05-07', 'Portugal', 'Reino Unido', 'MP', 13, 'PORSTN', 13), 
		(15, 50, 150, 200, 1, 'O', '2016-05-17', 'Portugal', 'Espanha', 'MP', 10, 'LISBCN', 14),
		(16, 350, 600, 950, 5, 'O', '2016-05-22', 'Portugal', 'Jamaica', 'PC', 6, 'LISMBJ', 15), --2 
		(17, 350, 600, 950, 5, 'O', '2016-05-22', 'Portugal', 'Jamaica', 'PC', 6, 'LISMBJ', 15), --2
		(18, 160, 140, 300, 2, 'F', '2016-07-15', 'Portugal', 'Alemanha', 'PC', 20, 'LISTXL', 16),
		(19, 90, 100, 190, 2, 'F', '2016-07-23', 'Portugal', 'Holanda', 'PC', 18, 'PORAMS', 17), 
		(20, 200, 400, 600, 3, 'F', '2016-07-24', 'Portugal', 'Itália', 'PC', 17, 'PORFLR', 18), --4 
		(21, 200, 400, 600, 3, 'F', '2016-07-24', 'Portugal', 'Itália', 'PC', 17, 'PORFLR', 18), --4
		(22, 200, 400, 600, 3, 'F', '2016-07-24', 'Portugal', 'Itália', 'PC', 17, 'PORFLR', 18), --4
		(23, 200, 400, 600, 3, 'F', '2016-07-24', 'Portugal', 'Itália', 'PC', 17, 'PORFLR', 18), --4
		(24, 150, 180, 330, 2, 'F', '2016-08-12', 'Portugal', 'Reino Unido', 'PA', 13, 'PORSTN', 19), 
		(25, 200, 260, 460, 2, 'F', '2016-09-01', 'Portugal', 'Estados Unidos da América', 'PA', 7, 'LISJFK', 20), 
		(26, 160, 70, 230, 1, 'F', '2016-09-02', 'Portugal', 'Alemanha', 'MP', 20, 'LISTXL', 21), 
		(27, 210, 180, 390, 2, 'O', '2016-10-19', 'Portugal', 'Itália', 'PA', 12, 'LISFCO', 22), 
		(28, 90, 100, 190, 2, 'O', '2016-11-20', 'Portugal', 'Holanda', 'MP', 18, 'PORAMS', 23), 
		(29, 90, 100, 190, 2, 'N', '2016-12-28', 'Portugal', 'Holanda', 'PC', 18, 'PORAMS', 24), 
		(30, 60, 250, 310, 3, 'O', '2017-02-11', 'Portugal', 'Espanha', 'MP', 15, 'LISPMI', 25), 
		(31, 100, 400, 500, 4, 'O', '2017-05-24', 'Portugal', 'Espanha', 'PC', 15, 'LISPMI', 26), --3 
		(32, 100, 400, 500, 4, 'O', '2017-05-24', 'Portugal', 'Espanha', 'PC', 15, 'LISPMI', 26), --3
		(33, 100, 400, 500, 4, 'O', '2017-05-24', 'Portugal', 'Espanha', 'PC', 15, 'LISPMI', 26), --3
		(34, 200, 260, 460, 2, 'F', '2017-06-30', 'Portugal', 'Estados Unidos da América', 'PA', 7, 'LISJFK', 27),
		(35, 210, 90, 300, 1, 'F', '2017-07-12', 'Portugal', 'Itália', 'PA', 12, 'LISFCO', 28), 
		(36, 50, 300, 350, 2, 'F', '2017-08-06', 'Portugal', 'Espanha', 'MP', 10, 'PORBCN', 29), 
		(37, 60, 150, 210, 2, 'F', '2017-08-08', 'Portugal', 'Espanha', 'PC', 15, 'LISPMI', 30), 
		(38, 90, 50, 140, 1, 'F', '2017-08-30', 'Portugal', 'Holanda', 'MP', 18, 'PORAMS', 31), 
		(39, 400, 140, 540, 3, 'N', '2017-12-24', 'Portugal', 'Tailândia', 'PC', 22, 'LISHKT', 32), --2 
		(40, 400, 140, 540, 3, 'N', '2017-12-24', 'Portugal', 'Tailândia', 'PC', 22, 'LISHKT', 32), --2
		(41, 60, 250, 310, 3, 'A', '2017-12-29', 'Portugal', 'Espanha', 'PA', 15, 'LISPMI', 33), 
		(42, 210, 90, 300, 1, 'O', '2018-02-25', 'Portugal', 'Itália', 'PA', 12, 'LISFCO', 34), 
		(43, 150, 180, 330, 2, 'O', '2018-02-27', 'Portugal', 'Reino Unido', 'MP', 13, 'LISSTN', 35), 
		(44, 200, 260, 460, 2, 'O', '2018-03-21', 'Portugal', 'Estados Unidos da América', 'MP', 7, 'PORJFK', 36), 
		(45, 210, 180, 390, 2, 'O', '2018-05-17', 'Portugal', 'Itália', 'MP', 12, 'LISFCO', 37), 
		(46, 90, 100, 190, 2, 'F', '2018-07-12', 'Portugal', 'Holanda', 'PA', 18, 'PORAMS', 38), 
		(47, 60, 250, 310, 3, 'F', '2018-07-15', 'Portugal', 'Espanha', 'SA', 15, 'LISPMI', 39), 
		(48, 100, 200, 300, 2, 'F', '2018-07-31', 'Portugal', 'Espanha', 'PC', 15, 'PORPMI', 40), --2 
		(49, 100, 200, 300, 2, 'F', '2018-07-31', 'Portugal', 'Espanha', 'PC', 15, 'PORPMI', 40), --2
		(50, 160, 70, 230, 1, 'F', '2018-08-12', 'Portugal', 'Alemanha', 'PC', 20, 'LISTXL', 41), --2
		(51, 160, 70, 230, 1, 'F', '2018-08-12', 'Portugal', 'Alemanha', 'PC', 20, 'LISTXL', 41), --2
		(52, 160, 140, 300, 2, 'F', '2018-08-13', 'Portugal', 'Alemanha', 'MP', 20, 'PORTXL', 42),
		(53, 90, 380, 470, 4, 'F', '2018-08-22', 'Portugal', 'Portugal', 'PC', 19, 'LISFNC', 43), --3 
		(54, 90, 380, 470, 4, 'F', '2018-08-22', 'Portugal', 'Portugal', 'PC', 19, 'LISFNC', 43), --3
		(55, 90, 380, 470, 4, 'F', '2018-08-22', 'Portugal', 'Portugal', 'PC', 19, 'LISFNC', 43), --3
		(56, 200, 260, 460, 2, 'F', '2018-08-25', 'Portugal', 'Estados Unidos da América', 'PA', 7, 'LISJFK', 44),
		(57, 400, 300, 700, 4, 'O', '2018-10-17', 'Portugal', 'Tailândia', 'PC', 22, 'PORHKT', 45), --2
		(58, 400, 300, 700, 4, 'O', '2018-10-17', 'Portugal', 'Tailândia', 'PC', 22, 'PORHKT', 45)  --2
	;



INSERT INTO Categoria
	(Id, Designacao, Viagem_Id)
	VALUES
		(1, 'NEGO', 1),
		(2 , 'PRAI', 2),
		(3 , 'CULT', 2),
		(4 , 'CULT', 3),
		(5 , 'GAST', 3),
		(6 , 'NEGO', 4),
		(7 , 'NEGO', 5),
		(8 , 'CULT', 6),
		(9 , 'CULT', 7),
		(10 , 'NEGO', 8),
		(11 , 'NEGO', 9),
		(12 , 'NEGO', 10),
		(13 , 'NEGO', 11),
		(14 , 'NEGO', 12),
		(15 , 'NEGO', 13),
		(16 , 'NEGO', 14),
		(17 , 'NEGO', 15),
		(18 , 'PRAI', 16),
		(19 , 'PRAI', 17),
		(20 , 'NEGO', 18),
		(21 , 'NEGO', 19),
		(22 , 'GAST', 20),
		(23 , 'GAST', 21),
		(24 , 'GAST', 22),
		(25 , 'GAST', 23),
		(26 , 'MODA', 20),
		(27 , 'MODA', 21),
		(28 , 'MODA', 22),
		(29 , 'MODA', 23),
		(30 , 'NEGO', 24),
		(31 , 'NEGO', 25),
		(32 , 'NEGO', 26),
		(33 , 'CIDA', 26),
		(34 , 'NEGO', 27),
		(35 , 'NEGO', 28),
		(36 , 'NEGO', 29),
		(37 , 'AVEN', 30),
		(38 , 'OUTR', 30),
		(39 , 'MONT', 31),
		(40 , 'MONT', 32),
		(41 , 'MONT', 33),
		(42 , 'NEVE', 31),
		(43 , 'NEVE', 32),
		(44 , 'NEVE', 33),
		(45 , 'NEGO', 34),
		(46 , 'NEGO', 35),
		(47 , 'NEGO', 36),
		(48 , 'NEGO', 37),
		(49 , 'NEGO', 38),
		(50 , 'AVEN', 39),
		(51 , 'AVEN', 40),
		(52 , 'PRAI', 39),
		(53 , 'PRAI', 40),
		(54 , 'OUTR', 41),
		(55 , 'NEGO', 42),
		(56 , 'NEGO', 43),
		(57 , 'NEGO', 44),
		(58 , 'NEGO', 45),
		(59 , 'NEGO', 46),
		(60 , 'ARTE', 47),
		(61 , 'ARTE', 48),
		(62 , 'ARTE', 49),
		(63 , 'NEGO', 50),
		(64 , 'NEGO', 51),
		(65 , 'NEGO', 52),
		(66 , 'OUTR', 52),
		(67 , 'AVEN', 53),
		(68 , 'AVEN', 54),
		(69 , 'AVEN', 55),
		(70 , 'CAMP', 53),
		(71 , 'CAMP', 54),
		(72 , 'CAMP', 55),
		(73, 'ARQU', 56),
		(74, 'MONU', 56),
		(75, 'PRAI', 57),
		(76, 'PRAI', 58)
	;
/*
Arquitetura 	ARQU
Arte 			ARTE
Aventura		AVEN
Campo 			CAMP
Cidade 			CIDA
Cultura			CULT
Gastronomia		GAST
Moda 			MODA
Montanha 		MONT
Monumentos 		MONU
Negócios 		NEGO
Neve 			NEVE
Outro 			OUTR
Praia 			PRAI
*/