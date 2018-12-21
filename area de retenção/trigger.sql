DELIMITER //

DROP TRIGGER IF EXISTS timeYearAndDayWeek;
CREATE TRIGGER timeYearAndDayWeek
BEFORE INSERT ON ardw.ar_dim_calendario FOR EACH ROW
BEGIN
	
	DECLARE dataIn, dia, mes BIGINT;
	set dataIn = NEW.idData;
	set dataIn = CONVERT(dataIn, datetime);
    
    SET dia = dayofmonth(dataIn);
    SET mes = month(dataIn);
    
    CASE
    
    WHEN (dia >= 29 AND mes = 12) OR (dia <= 5 AND mes = 1)
    THEN SET NEW.epoca = 'Ano Novo';
    
	WHEN (dia >= 15 AND mes = 12) OR (dia <= 28 AND mes = 12)
    THEN SET NEW.epoca = 'Natal';
    
	WHEN (dia >= 1 AND mes = 4) OR (dia <= 25 AND mes = 4)
    THEN SET NEW.epoca = 'Páscoa';
    
	WHEN (dia >= 1 AND mes = 6) OR (dia <= 15 AND mes = 9)
    THEN SET NEW.epoca = 'Férias';
    
    ELSE SET NEW.epoca = 'Outros';
    
    END CASE;
    
    CASE
    
    WHEN (NEW.diaSemana = '1')
    THEN SET NEW.diaSemana = 'Segunda';
    
	WHEN (NEW.diaSemana = '2')
    THEN SET NEW.diaSemana = 'Terça';
    
	WHEN (NEW.diaSemana = '3')
    THEN SET NEW.diaSemana = 'Quarta';
    
	WHEN (NEW.diaSemana = '4')
    THEN SET NEW.diaSemana = 'Quinta';
    
	WHEN (NEW.diaSemana = '5')
    THEN SET NEW.diaSemana = 'Sexta';
    
	WHEN (NEW.diaSemana = '6')
    THEN SET NEW.diaSemana = 'Sábado';
    
	WHEN (NEW.diaSemana = '7')
    THEN SET NEW.diaSemana = 'Domingo';
    
    ELSE BEGIN END;
    
    END CASE;
    
END;
//

DELIMITER ;