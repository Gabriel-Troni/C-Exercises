$(function(){
  $("#form-test").on("submit",function(){
    nome_input = $("input[name='nome']");
    email_input = $("input[name='email']");
    dataNascimento_input = $("input[name='dataNascimento']");
    senha_input = $("input[name='senha']");
    confirmaSenha_input = $("input[name='confirmaSenha']");
    foto_input = $("input[name='foto']");
    key = true;

    if(nome_input.val() == "" || nome_input.val() == null)
    {
      $("#erro-nome").html("O nome é obrigatório").addClass("text-danger");
      key = false;
    } else {
      $("#erro-nome").html("").removeClass("text-danger");
    }

    if(email_input.val() == "" || email_input.val() == null)
    {
      $("#erro-email").html("O E-mail é obrigatório").addClass("text-danger");
      key = false;
    } else {
      $("#erro-email").html("").removeClass("text-danger");
    }

    if(dataNascimento_input.val() == "" || dataNascimento_input.val() == null)
    {
      $("#erro-dataNascimento").html("A data de nascimento é obrigatória").addClass("text-danger");
      key = false;
    } else {
      $("#erro-dataNascimento").html("").removeClass("text-danger");
    }

    if(senha_input.val() == "" || senha_input.val() == null)
    {
      $("#erro-senha").html("A senha é obrigatória").addClass("text-danger");
      key = false;
    } else {
      $("#erro-senha").html("").removeClass("text-danger");
    }

    if(senha_input.val() != confirmaSenha_input.val())
    {
      $("#erro-confirmaSenha").html("As senhas devem ser iguais").addClass("text-danger");
      key = false;
    } else {
      $("#erro-confirmaSenha").html("").removeClass("text-danger");
    }

    if(!foto_input.prop('files')[0])
    {
      $("#erro-foto").html("A foto de perfil é obrigatória").addClass("text-danger");
      key = false;
    } else {
      $("#erro-foto").html("").removeClass("text-danger");
    }
    
    return(key);
  });
});