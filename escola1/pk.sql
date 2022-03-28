ALTER TABLE PreReq
ADD CONSTRAINT pkPreReq
PRIMARY KEY (CodDeptoPreReq, NumDiscPreReq, CodDepto, NumDisc);

ALTER TABLE Disciplina
ADD CONSTRAINT pkDisciplina
PRIMARY KEY (CodDepto, NumDisc);

ALTER TABLE Depto
ADD CONSTRAINT pkDepto
PRIMARY KEY (CodDepto);

ALTER TABLE Professor
ADD CONSTRAINT pkProfessor
PRIMARY KEY (CodProf);

ALTER TABLE Turma
ADD CONSTRAINT pkTurma
PRIMARY KEY (AnoSem, CodDepto, NumDisc, SiglaTur);

ALTER TABLE ProfTurma
ADD CONSTRAINT pkProfTurma
PRIMARY KEY (AnoSem, CodDepto, NumDisc, SiglaTur, CodProf);

ALTER TABLE Titulacao
ADD CONSTRAINT pkTitulacao
PRIMARY KEY (CodTit);

ALTER TABLE Horario
ADD CONSTRAINT pkHorario
PRIMARY KEY (AnoSem, CodDepto, NumDisc, SiglaTur, DiaSem, HorarioInicio);

ALTER TABLE Sala
ADD CONSTRAINT pkSala
PRIMARY KEY (CodPred, NumSala);

ALTER TABLE Predio
ADD CONSTRAINT pkPredio
PRIMARY KEY (CodPred);