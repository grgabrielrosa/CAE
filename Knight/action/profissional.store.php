<?php

require_once('../class/profissionalDAO.php');

$profissioanal= new profissional();
$profissioanal->nome = filter_var($_POST['nome'], FILTER_SANITIZE_STRING);
$profissioanal->senha = filter_var($_POST['senha'], FILTER_SANITIZE_STRING);
$profissioanal->email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);


$profissioanaldao = new profissionalDAO();
$profissioanaldao->store($profissioanal);
//------------------------------


header('location: ../index.php');
?>