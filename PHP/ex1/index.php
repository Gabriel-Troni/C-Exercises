<!--
Crie um script em PHP que produza a seguinte saída (para n=5, onde n é o número de linhas 
da tabela):

1   1^2   1^3   1^4   ...   1^(n+1)
2   2^2   2^3   2^4   ...   2^(n+1)
3   3^2   3^3   3^4   ...   3^(n+1)
.    .     .     .    ...     .
.    .     .     .    ...     .
.    .     .     .    ...     .
n   n^2   n^3   n^4   ...   n^(n+1)
-->

<?php
function create_table_cell($txt){
  return("<td>$txt</td>");
}

function create_table_row($cells){
  $result = "<tr>";
  for($i=0; $i<=$n; $i++){
    $result .= create_table_cell($cells[i]);
  }
  $result .= "</tr>";
  return($result);
}

function create_table($rows){
}

function power_matrix($n){
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Teste PHP</title>
  <meta charset="utf-8">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
  <h1>Tabela de potências</h1>
   <?php
    $n = 5;
    $m = power_matrix($n);
    echo create_table($m);
  ?>
</div>
</body>
</html>