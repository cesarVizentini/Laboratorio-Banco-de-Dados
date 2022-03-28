ALTER TABLE PreReq
ADD CONSTRAINT fkPreReq
FOREIGN KEY (CodDeptoPreReq, NumDiscPreReq)
REFERENCES Disciplina (CodDepto, NumDisc);

ALTER TABLE PreReq
ADD CONSTRAINT fkDiscPreReq
FOREIGN KEY (CodDepto, NumDisc)
REFERENCES Disciplina (CodDepto, NumDisc);

ALTER TABLE Disciplina
ADD CONSTRAINT fkDisciplina
FOREIGN KEY (CodDepto)
REFERENCES Depto (CodDepto);

ALTER TABLE Professor
ADD CONSTRAINT fkDeptoProfessor
FOREIGN KEY (CodDepto)
REFERENCES Depto (CodDepto);

ALTER TABLE Professor
ADD CONSTRAINT fkTitProfessor
FOREIGN KEY (CodTit)
REFERENCES Titulacao (CodTit);

ALTER TABLE Turma
ADD CONSTRAINT fkDiscTurma
FOREIGN KEY (CodDepto, NumDisc)
REFERENCES Disciplina (CodDepto, NumDisc);

ALTER TABLE ProfTurma
ADD CONSTRAINT fkTurmaProfTurma
FOREIGN KEY (AnoSem, CodDepto, NumDisc, SiglaTur)
REFERENCES Turma (AnoSem, CodDepto, NumDisc, SiglaTur);

ALTER TABLE ProfTurma
ADD CONSTRAINT fkProfTurma
FOREIGN KEY (CodProf)
REFERENCES Professor (CodProf);

ALTER TABLE Horario
ADD CONSTRAINT fkTurmaHorario
FOREIGN KEY (AnoSem, CodDepto, NumDisc, SiglaTur)
REFERENCES Turma (AnoSem, CodDepto, NumDisc, SiglaTur);

ALTER TABLE Horario
ADD CONSTRAINT fkSalaHorario
FOREIGN KEY (CodPred, NumSala)
REFERENCES Sala (CodPred, NumSala);

ALTER TABLE Sala
ADD CONSTRAINT fkPredioSala
FOREIGN KEY (CodPred)
REFERENCES Predio (CodPred);