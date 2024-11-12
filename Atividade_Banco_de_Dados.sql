1. SELECT * FROM alunos ORDER BY nome, data_nascimento DESC;
2. SELECT nome, especialidade FROM professores ORDER BY nome DESC;
3. SELECT * FROM disciplinas ORDER BY carga_horaria DESC;
4. SELECT status_matricula, COUNT(*) AS total_alunos FROM alunos GROUP BY
status_matricula;
5. SELECT c.nome, SUM(d.carga_horaria) AS total_carga_horaria FROM cursos c
JOIN disciplinas d ON c.id = d.id_curso GROUP BY c.nome;
6. SELECT p.nome, COUNT(t.id) AS total_turmas FROM professores p JOIN turmas
t ON p.id = t.id_professor GROUP BY p.nome HAVING COUNT(t.id) > 3;
7. SELECT a.nome, COUNT(m.id_disciplina) AS total_disciplinas FROM alunos a
JOIN matriculas m ON a.id = m.id_aluno GROUP BY a.nome HAVING
COUNT(m.id_disciplina) > 1 ORDER BY total_disciplinas DESC;
8. SELECT c.nome, SUM(d.carga_horaria) AS total_carga_horaria FROM cursos c
JOIN disciplinas d ON c.id = d.id_curso GROUP BY c.nome HAVING
SUM(d.carga_horaria) > 2000;
9. SELECT p.nome, COUNT(t.id) AS total_turmas FROM professores p JOIN turmas
t ON p.id = t.id_professor GROUP BY p.nome ORDER BY total_turmas DESC;
10.SELECT c.nome AS nome_curso, d.nome AS nome_disciplina,
AVG(d.carga_horaria) AS media_carga_horaria FROM cursos c JOIN disciplinas d
ON c.id = d.id_curso GROUP BY c.nome, d.nome;
11.SELECT a.nome, a.status_matricula, a.data_matricula FROM alunos a ORDER
BY a.status_matricula, a.data_matricula DESC;
12.SELECT nome, TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) AS idade
FROM alunos ORDER BY idade DESC;
13.SELECT d.nome AS nome_disciplina, COUNT(m.id_aluno) AS total_alunos FROM
disciplinas d JOIN matriculas m ON d.id = m.id_disciplina GROUP BY d.nome
ORDER BY total_alunos DESC;
14.SELECT p.nome AS nome_professor, d.nome AS nome_disciplina, t.horario
FROM turmas t JOIN professores p ON t.id_professor = p.id JOIN disciplinas d
ON t.id_disciplina = d.id ORDER BY t.horario;
15.SELECT COUNT(*) AS total_disciplinas FROM disciplinas WHERE carga_horaria
> 80;
16.SELECT c.nome AS nome_curso, COUNT(d.id) AS total_disciplinas FROM cursos
c LEFT JOIN disciplinas d ON c.id = d.id_curso GROUP BY c.nome;
17.SELECT p.nome AS nome_professor, COUNT(d.id) AS total_disciplinas FROM
professores p JOIN turmas t ON p.id = t.id_professor JOIN disciplinas d ON
t.id_disciplina = d.id WHERE d.carga_horaria > 100 GROUP BY p.nome HAVING
COUNT(d.id) > 2;
18.SELECT d.nome AS nome_disciplina, COUNT(m.id_aluno) AS total_alunos FROM
disciplinas d JOIN matriculas m ON d.id = m.id_disciplina GROUP BY d.nome
HAVING COUNT(m.id_aluno) >= 5;
19.SELECT status_matricula, COUNT(*) AS total_alunos FROM alunos GROUP BY
status_matricula ORDER BY total_alunos DESC;
20.SELECT p.nome AS nome_professor, SUM(d.carga_horaria) AS
total_carga_horaria FROM professores p JOIN turmas t ON p.id = t.id_professor
JOIN disciplinas d ON t.id_disciplina = d.id GROUP BY p.nome ORDER BY
total_carga_horaria DESC;


