<?php
$nomePagina = "Editar Aluno";
include "./frontEnd/head.php";
include "./frontEnd/nav_servidor.php";

require('class/AlunoDAO.php');
require_once ('class/aluno.php');
require_once ('class/curso.php');
?>


<div class="container">
    <div class="row my-5">
        <div class="col-lg-12">
            <?php
            $idaluno = (int) $_GET['idaluno'];
            $alunodao = new alunoDAO();
            $aluno = $alunodao->mostraaluno($idaluno);
            ?> 


            <h1>Atualizar dados do aluno <b><?= $aluno->nome . " " . $aluno->sobrenome ?> </b> </h1>

            <form action="action/aluno.update.php" method="post">
                <input type="hidden" name="idaluno" value="<?= $idaluno ?>">
                <fieldset>

                    <div class="form-group">
                        <label for="nome" class="col-sm-3 control-label">Nome</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="nome" name="nome" value="<?= $aluno->nome ?>" required >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sobrenome" class="col-sm-3 control-label">Sobrenome</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="sobrenome" name="sobrenome" value="<?= $aluno->sobrenome ?>" required >
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="n_matricula" class="col-sm-3 control-label">Nº da Matricula</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="n_matricula" name="n_matricula"  value="<?= $aluno->n_matricula ?>" required >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Sexo</label>
                        <div class="col-sm-8">
                            <label class="radio-inline">
                                <input type="radio" id="sexo" name="sexo" value="FEMININO" > Feminino
                            </label>

                            <label class="radio-inline">
                                <input type="radio"id="sexo" name="sexo" value="MASCULINO"> Masculino
                            </label>
                        </div>
                    </div>


                </fieldset>
                <fieldset>

                    <div class="form-group">
                        <label for="curso" class="col-sm-3 control-label">Curso</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="curso" id="curso"  required >
                                <option>Selecione um curso</option>
                                <option value="Licenciatura em Computação">Licenciatura em Computação</option>
                                <option value="Engenharia Agronomica">Engenharia Agronomica</option>
                                <option value="Técnico em Informatica">Técnico em Informatica</option>
                                <option value="Técnico em Agropecuária">Técnico em Agropecuária</option>

                            </select>
                        </div>
                    </div>
                </fieldset>



                <button type="envia" class="btn btn-primary">Envia Dados</button>
                <a href="profissional.php" class="btn btn-primary">Volta</a>
            </form>







        </div>
    </div>     
</div>
