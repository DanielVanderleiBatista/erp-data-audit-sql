/*Identifica alunos com matrícula ativa sem financeiro*/
SELECT 
  Alunos.Nome
 , Matriculas.IdMatricula
FROM Matriculas
  
INNER JOIN Alunos 
ON Alunos.IdAluno = Matriculas.IdAluno
  
LEFT JOIN Financeiro  
ON Financeiro.IdAluno = Alunos.IdAluno
  
WHERE 1=1
AND Matriculas.Status = 'Ativa'
AND Financeiro.IdFinanceiro IS NULL;
