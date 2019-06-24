<?php
$nomePagina = "Resultado Definitivo";
session_start();
include('verifica_login.php');
include "./frontEnd/head.php";
include "./frontEnd/nav_servidor.php";

require('class/AlunoDAO.php');
require_once ('class/aluno.php');
require_once ('class/curso.php');
?>

<section id="modelo">

<div class="container">


        <h1>Lista de Alunos Aprovados</h1>


        <div class="row my-5">
            <div class="col-lg-12 text-center">
                <table class="table">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Nome</th>
                            <th scope="col">Sexo</th>
                            <th scope="col">Matricula</th>
                            <th scope="col">Email</th>
                            <th scope="col">Curso</th>
                         
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $alunodao = new alunoDAO();
                        $alunos = $alunodao->mostraAprovado();
                        foreach ($alunos as $aluno):
                            ?>
                            <tr>

                                <td><?= $aluno->nome . " " . $aluno->sobrenome ?></td>
                                <td><?= $aluno->sexo ?></td>
                                <td><?= $aluno->n_matricula ?></td>
                                <td><?= $aluno->email ?></td>
                                <td><?= $aluno->curso ?></td>


                            </tr>
<?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>  

    </div>
</div>

<?php include "./frontEnd/footer.php"?>