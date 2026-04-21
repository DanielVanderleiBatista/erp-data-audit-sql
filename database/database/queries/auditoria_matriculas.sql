/*Identifica alunos ativos sem matrícula ativa*/
SELECT 
  Alunos.IdAluno
  , Alunos.Nome
FROM Alunos
  
LEFT JOIN Matriculas 
ON Alunos.IdAluno =  Matriculas.IdAluno 
AND  Matriculas.Status = 'Ativa'
  
WHERE 1=1
AND  Alunos.Status = 'Ativo'
AND  Matriculas.IdMatricula IS NULL;
