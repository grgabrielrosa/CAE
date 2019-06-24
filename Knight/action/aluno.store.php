<?php

require_once('../class/alunoDAO.php');

$aluno = new aluno();
$aluno->nome = filter_var($_POST['nome'], FILTER_SANITIZE_STRING);
$aluno->sobrenome = filter_var($_POST['sobrenome'], FILTER_SANITIZE_STRING);
$aluno->sexo = filter_var($_POST['sexo'], FILTER_SANITIZE_STRING);
$aluno->n_matricula = filter_var($_POST['n_matricula'], FILTER_SANITIZE_STRING);
$aluno->senha = filter_var($_POST['senha'], FILTER_SANITIZE_STRING);
$aluno->email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);


$alunodao = new alunoDAO();
$alunodao->store($aluno);
//------------------------------
$curso = new curso();
$curso->curso = filter_var($_POST['curso'], FILTER_SANITIZE_STRING);
$cursodao = new alunoDAO();
$cursodao->storeCurso($curso);
//------------------------------


header('location: ../index.php');
?>