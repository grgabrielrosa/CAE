<?php
    require_once('../class/alunoDAO.php');

     $curso = new curso();
    
    
    $curso->idaluno = $_POST['idaluno'];
    $curso->curso = $_POST['curso'];

    $cursodao = new alunoDAO();
    $cursodao->updatecurso($curso);
    
    $aluno = new aluno();
    
    
    $aluno->idaluno = $_POST['idaluno'];
    $aluno->nome = $_POST['nome'];
    $aluno->sobrenome = $_POST['sobrenome'];
    $aluno->n_matricula = $_POST['n_matricula'];
    $aluno->sexo = $_POST['sexo'];

    $alunodao = new alunoDAO();
    $alunodao->update($aluno);
 
//    -------------------------------
    
   
    
    header('location: ../profissional.php');
?>

