SELECT P.NOME_PROFESSOR , D.NOME_DISCIPLINA 
FROM TB_PROFESSOR P
LEFT JOIN TB_DISCIPLINA D ON P.ID_PROFESSOR = D.ID_PROFESSOR_DISCIPLINA  

