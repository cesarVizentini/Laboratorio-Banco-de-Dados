DELIMITER $$

CREATE PROCEDURE insert_peca
(
	pCodPeca char(2)
)
BEGIN 
	INSERT INTO TB_PECA (CodPeca,NomePeca,CorPeca,PesoPeca,CidadePeca)
	VALUES (pCodPeca , 'EIXO', 'CINZA', '10', 'POA');
END $$
DELIMITER ;

CALL insert_peca ('P6');

DELIMITER $$

CREATE PROCEDURE insert5000_pecas
(
	pNomePeca varchar(15),
	pCorPeca varchar(15),
	pPesoPeca smallint,
	pCidadePeca varchar(20)
)
BEGIN
	DECLARE cont int = 1;
    WHILE cont <= 5000 DO
		INSERT INTO TB_PECA (CodPeca,NomePeca,CorPeca,PesoPeca,CidadePeca)
		VALUES (CONCAT('T',cont), pNomePeca, pCorPeca, pPesoPeca, pCidadePeca);
        SET cont=cont+1;
        CONCAT(pNomePeca,cont);
        CONCAT(pCorPeca,cont);
        SET pPesoPeca=pPesoPeca+1;
        CONCAT(pCidadePeca,cont);
	END WHILE;
END;

DELIMITER ;

CALL insert5000_pecas ('EIXO', 'CINZA', 10, 'POA');