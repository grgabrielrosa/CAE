<?php
$nomePagina = "Profissional";
session_start();
include('verifica_login.php');
include "./frontEnd/head.php";
include "./frontEnd/nav_servidor.php";

require('class/AlunoDAO.php');
require_once ('class/aluno.php');
require_once ('class/curso.php');
?>



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
                    <th scope="col">Opções</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $alunodao = new alunoDAO();
                    $alunos = $alunodao->mostra();
                    foreach ($alunos as $aluno):
                 ?>
                    <tr>

                        <td><?= $aluno->nome . " " . $aluno->sobrenome ?></td>
                        <td><?= $aluno->sexo ?></td>
                        <td><?= $aluno->n_matricula ?></td>
                        <td><?= $aluno->email ?></td>
                        <td><?= $aluno->curso ?></td>



                        <td>
                            <a href="action/aluno.aprova.php?idaluno=<?= $aluno->idaluno ?>"class="btn btn-primary  font-weight-bold white-text">Aprovar</a>
                            <a href="editar.aluno.php?idaluno=<?= $aluno->idaluno ?>" class="btn btn-primary font-weight-bold white-text">Editar</a>
                            <a href="action/aluno.remove.php?idaluno=<?= $aluno->idaluno ?>" class="btn btn-primary  font-weight-bold white-text">Apagar</a>
                         
                        </td>



                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>  

<?php include "./frontEnd/footer.php"?>