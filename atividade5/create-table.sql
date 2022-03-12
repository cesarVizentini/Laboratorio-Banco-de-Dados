CREATE TABLE TB_PECA (
	CodPeca char(2),
	NomePeca varchar(15),
	CorPeca varchar(15),
	PesoPeca smallint,
	CidadePeca varchar(20)
	)
	
CREATE TABLE TB_EMBARQ (
	CodPeca char(2),
	CodFornec char(2),
	QtdeEmbarc smallint
	)
	
CREATE TABLE TB_FORNEC (
	CodFornec char(2),
	NomeFornec varchar(15),
	StatusFornec smallint,
	CidadeFornec varchar(20)
	)