SELECT NOME_PROFESSOR FROM TB_PROFESSOR
WHERE ID_PROFESSOR IN 
	(SELECT * FROM TB_DISCIPLINA
	 WHERE ID_DISCIPLINA IN
	 	(SELECT * FROM TB_ALUNO_DISCIPLINA
	 	 WHERE COD_ALUNO IN
	 	 	(SELECT * FROM TB_ALUNO
	 	 	 WHERE END_ALUNO = 'Piaui'
	 	 	 AND
	 	 	 ID_CLASSE = '3')))
	 	 	 
