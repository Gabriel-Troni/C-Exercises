<?php
function verifica_campo($texto){
  $texto = trim($texto);
  $texto = stripslashes($texto);
  $texto = htmlspecialchars($texto);
  return $texto;
}

$nome = "";
$email = "";
$dataNascimento = "";
$senha = "";
$confirmaSenha = "";
$foto = "";
$erro = false;

if ($_SERVER["REQUEST_METHOD"] == "POST") {

  if(empty($_POST["nome"])){
    $erro_nome = "Nome é obrigatório.";
    $erro = true;
  }
  else{
    $nome = verifica_campo($_POST["nome"]);
  }

  if(empty($_POST["email"])){
    $erro_email = "E-mail é obrigatório.";
    $erro = true;
  }
  else if(!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)){
    $erro_email = "Formato inválido de E-mail.";
    $erro = true;
  }
  else{
    $email = verifica_campo($_POST["email"]);
  }

  if(empty($_POST["dataNascimento"])){
    $erro_data_nascimento = "Data de nascimento é obrigatório.";
    $erro = true;
  }
  else{
    $dataNascimento = verifica_campo($_POST["dataNascimento"]);
  }

  if(empty($_POST["senha"])){
    $erro_senha = "Senha é obrigatório.";
    $erro = true;
  }
  else{
    $senha = verifica_campo($_POST["senha"]);
  }

  if($_POST["senha"] != $_POST["confirmaSenha"]){
    $erro_confirma_senha = "As senhas devem ser iguais";
    $erro = true;
  }
  else{
    $confirmaSenha = verifica_campo($_POST["confirmaSenha"]);
  }

  $arquivoFoto = "/ds122-php-form-assignment/imagens/" . basename($_FILES["foto"]["name"]);
  $tipoFoto = strtolower(pathinfo($arquivoFoto,PATHINFO_EXTENSION));
  
  if($tipoFoto != "jpg" && $tipoFoto != "png"){
    $erro_foto = "Formatos aceitos: .png e .jpg";
    $erro = true;
  }
  else if($_FILES["foto"]["size"] > 1000000){
    $erro_foto = "O arquivo deve ter menos que 1MB";
    $erro = true;
  }
  else{
    $foto = "C:\\xampp\\htdocs\\ds122-php-form-assignment\\imagens\\" . $_FILES["foto"]["name"];
    move_uploaded_file($_FILES["foto"]["tmp_name"], $foto);
  }
}
?>
