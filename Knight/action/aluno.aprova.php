<?php

   require_once('../class/alunoDAO.php');

    $idaluno = (int) $_GET['idaluno'];

    $alunodao = new alunoDAO();
    $alunodao->aprova($idaluno);

    header('location: ../profissional.php');
?>
