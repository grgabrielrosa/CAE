<?php
    require_once('../class/alunoDAO.php');

    $idaluno = (int) $_GET['idaluno'];
    $idaluno2 = (int) $_GET['idaluno'];
    
    
    $alunodao = new alunoDAO();
    $alunodao->remove2($idaluno2);
    $alunodao->remove($idaluno);
   
    

    header('location: ../profissional.php');
?>
