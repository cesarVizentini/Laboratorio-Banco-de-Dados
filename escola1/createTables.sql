CREATE TABLE PreReq (
    CodDeptoPreReq char(5),
	NumDiscPreReq int4,
	CodDepto char(5),
	NumDisc int4
);

CREATE TABLE Disciplina (
	CodDepto char(5),
	NumDisc int4,
    NomeDisc varchar(10),
	CreditoDisc int4
);

CREATE TABLE Depto (
	CodDepto char(5),
    NomeDepto varchar(40)
);

CREATE TABLE Professor (
	CodProf int4,
	CodDepto char(5),
    CodTit int4,
    NomeProf varchar(40)
);

CREATE TABLE Turma (
	AnoSem int4,
	CodDepto char(5),
	NumDisc int4,
    SiglaTur char(2),
    CapacTur int4
);

CREATE TABLE ProfTurma (
	AnoSem int4,
	CodDepto char(5),
	NumDisc int4,
    SiglaTur char(2),
    CodProf int4
);

CREATE TABLE Titulacao (
	CodTit int4,
	NomeTit varchar(40)
);

CREATE TABLE Horario (
	AnoSem int4,
	CodDepto char(5),
	NumDisc int4,
    SiglaTur char(2),
    DiaSem int4,
    HorarioInicio int4,
    NumSala int4,
    CodPred int4,
    NumHoras int4
);

CREATE TABLE Sala (
	CodPred int4,
	NumSala int4,
    DescricaoSala varchar(40),
    CapacSala int4
);

CREATE TABLE Predio (
	CodPred int4,
    NomePred varchar(40)
);