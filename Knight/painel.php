<?php
session_start();
include('verifica_login.php');
include "./frontEnd/head.php";
include "./frontEnd/nav_servidor.php";
?>



<br>
<h2>Olá, <?php echo $_SESSION['usuario'];?>!</h2>
<br>
<div class="container">
<span>Este espaço é destinado aos serviços, projetos e programas de interesse dos servidores da Coordenação de Assistência Estudantil (CAE) do Instituto Federal de Educação Ciências e Tecnologias do Tocantins (IFTO), como forma de propiciar uma otimização no desenvolvimento, profissional e institucional, no âmbito dos serviços desempenhado pela CAE.</span>
</div>
<br>
<?php include "./frontEnd/footer.php";?>
