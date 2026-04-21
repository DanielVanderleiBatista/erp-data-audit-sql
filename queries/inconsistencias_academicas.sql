/*Matrículas canceladas com financeiro em aberto*/
SELECT 
  Alunos.Nome, 
  Matriculas.Status, 
  Financeiro.Status AS StatusFinanceiro
FROM Matriculas 
  
JOIN Alunos  
ON Alunos.IdAluno = Matricula.IdAluno
  
JOIN Financeiro  
ON Financeiro.IdAluno = Alunos.IdAluno
  
WHERE 1=1
AND Matricula.Status = 'Cancelada'
AND Financeiro.Status = 'Aberto';
