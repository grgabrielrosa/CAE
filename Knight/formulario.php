<?php
$nomePagina = "cadastro";
include "./frontEnd/head.php";
?>

<div class="form">


    <form action="action/aluno.store.php" method="post" class="form-horizontal">
        <fieldset>
		<br>
		<h2>Cadastro de Alunos</h2>
            <div class="form-group">
                <label for="nome" class="col-sm-3 control-label">Nome</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="nome" name="nome" placeholder="Digite o seu nome" required >
                </div>
            </div>
             <div class="form-group">
                <label for="sobrenome" class="col-sm-3 control-label">Sobrenome</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="sobrenome" name="sobrenome" placeholder="Digite o seu sobrenome" required >
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-3 control-label">Sexo</label>
                <div class="col-sm-8">
                    <label class="radio-inline">
                        <input type="radio" id="sexo" name="sexo" value="FEMININO"> Feminino
                    </label>

                    <label class="radio-inline">
                        <input type="radio"id="sexo" name="sexo" value="MASCULINO"> Masculino
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label for="n_matricula" class="col-sm-3 control-label">Nº da Matricula</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="n_matricula" name="n_matricula"  placeholder="Digite o numero de sua Matricula" required >
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
                        <option value="Engenharia Agronomica">Engenharia Agronômica</option>
                        <option value="Técnico em Informatica">Técnico em Informática</option>
                    	<option value="Técnico em Agropecuária">Técnico em Agropecuária</option>

                    </select>
                </div>
			</div>
			
        </fieldset>

        <fieldset>
            <div class="form-group">
                <label for="email" class="col-sm-3 control-label">Email</label>
                <div class="col-sm-9">
                    <input type="email" class="form-control" id="email" name="email" placeholder="Digite o seu Email">
                </div>
            </div>
        </fieldset>

		
		<button type="envia" class="link animated fadeInUp delay-1s servicelink">Envia Dados</button>
		<a class="link animated fadeInUp delay-1s servicelink" href="index.php">Voltar</a>
        
    </form>
</div>

<?php
include "./frontEnd/footer.php";
?>