<?php
  require("check_form.php");
?>
<!DOCTYPE html>
<html>
<head>
  <title>Teste PHP</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="check_form.js"></script>
</head>
<body>
<div class="container">
  <div class="row">
    <div class="col-xs-12">
      <h1 class="page-header">Teste Formulário PHP</h1>

      <?php if ($_SERVER["REQUEST_METHOD"] == "POST"): ?>
        <?php if (!$erro): ?>
          <div class="alert alert-success">
            Dados recebidos com sucesso:
            <ul>
              <li><strong>Nome</strong>: <?php echo $nome ?>;</li>
              <li><strong>E-mail</strong>: <?php echo $email ?>;</li>
              <li><strong>Data de nascimento</strong>: <?php echo $dataNascimento ?>;</li>
              <li><strong>Senha</strong>: <?php echo $senha ?>;</li>
              <li><strong>Confirmação de senha</strong>: <?php echo $confirmaSenha ?>;</li>
              <li><strong>Foto de perfil</strong>: <img src="<?php echo $arquivoFoto?>" style="height: 50px"></li>
              <?php // limpa o formulário.
                $nome = "";
                $email = "";
                $dataNascimento = "";
                $senha = "";
                $confirmaSenha = "";
                $arquivoFoto = "";
              ?>
            </ul>
          </div>
        <?php else: ?>
          <div class="alert alert-danger">
            Erros no formulário.
          </div>
        <?php endif; ?>
      <?php endif; ?>

      <form enctype="multipart/form-data" id="form-test" class="form-horizontal" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">

        <div class="form-group <?php if(!empty($erro_nome)){echo " has-error";}?>">
          <label for="inputNome" class="col-sm-2 control-label">Nome</label>
          <div class="col-sm-10">
            <input type="text" class="form-control" name="nome" placeholder="Nome" value="<?php echo $nome; ?>">
            <div id="erro-nome">
            </div>
            <?php if (!empty($erro_nome)): ?>
              <span class="help-block"><?php echo $erro_nome ?></span>
            <?php endIf; ?>
          </div>
        </div>

        <div class="form-group <?php if(!empty($erro_email)){echo " has-error";}?>">
          <label for="inputEmail" class="col-sm-2 control-label">E-mail</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" name="email" placeholder="E-mail" value="<?php echo $email; ?>">
            <div id="erro-email">
            </div>
            <?php if (!empty($erro_email)): ?>
              <span class="help-block"><?php echo $erro_email ?></span>
            <?php endIf; ?>
          </div>
        </div>

        <div class="form-group <?php if(!empty($erro_data_nascimento)){echo " has-error";}?>">
          <label for="inputDataNascimento" class="col-sm-2 control-label">Data de nascimento</label>
          <div class="col-sm-10">
            <input type="date" class="form-control" name="dataNascimento" placeholder="Data de nascimento" value="<?php echo $dataNascimento; ?>">
            <div id="erro-dataNascimento">
            </div>
            <?php if (!empty($erro_data_nascimento)): ?>
              <span class="help-block"><?php echo $erro_data_nascimento ?></span>
            <?php endIf; ?>
          </div>
        </div>

        <div class="form-group <?php if(!empty($erro_senha)){echo " has-error";}?>">
          <label for="inputSenha" class="col-sm-2 control-label">Senha</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" name="senha" placeholder="Senha" value="<?php echo $senha; ?>">
            <div id="erro-senha">
            </div>
            <?php if (!empty($erro_senha)): ?>
              <span class="help-block"><?php echo $erro_senha ?></span>
            <?php endIf; ?>
          </div>
        </div>

        <div class="form-group <?php if(!empty($erro_confirma_senha)){echo " has-error";}?>">
          <label for="inputConfirmaSenha" class="col-sm-2 control-label">Confirmar senha</label>
          <div class="col-sm-10">
            <input type="password" class="form-control" name="confirmaSenha" placeholder="Confirme a senha" value="<?php echo $confirmaSenha; ?>">
            <div id="erro-confirmaSenha">
            </div>
            <?php if (!empty($erro_confirma_senha)): ?>
              <span class="help-block"><?php echo $erro_confirma_senha ?></span>
            <?php endIf; ?>
          </div>
        </div>

        <div class="form-group <?php if(!empty($erro_foto)){echo " has-error";}?>">
          <label for="inputFoto" class="col-sm-2 control-label">Foto de perfil</label>
          <div class="col-sm-10">
            <input type="file" class="form-control" name="foto" value="<?php echo $foto; ?>">
            <div id="erro-foto">
            </div>
            <?php if (!empty($erro_foto)): ?>
              <span class="help-block"><?php echo $erro_foto ?></span>
            <?php endIf; ?>
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">Enviar</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>
