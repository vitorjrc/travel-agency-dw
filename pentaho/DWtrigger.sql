-- for ar_dim_calendario
DROP TRIGGER IF EXISTS dwClientesHistorico;
DELIMITER //

CREATE TRIGGER dwClientesHistorico
AFTER UPDATE ON dwtravelagency.`dim-clientes` FOR EACH ROW
BEGIN
    
    IF NOT (OLD.local = NEW.local) THEN
		INSERT INTO dwtravelagency.`dim-clientes-historico` (`DIM-Clientes_skCliente`, local, updated) VALUES (OLD.skCliente, OLD.local, NOW());
	END IF;
    
END;
//

DELIMITER ;

SELECT local from dwtravelagency.`dim-clientes`;
