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
  global $n;
  $result = "<tr>";
  for($i=0; $i<=$n; $i++){
    $result .= create_table_cell($cells[$i]);
  }
  $result .= "</tr>";
  return($result);
}

function create_table($rows){
  global $n, $matriz;
  $result = "<table class='table'>";
  for($i=0; $i<$n; $i++){
    $result .= create_table_row($matriz[$i]);
  }
  $result .= "</table>";
  return($result);
}

function power_matrix($n){
  global $matriz;
  for($i=0; $i<$n; $i++){
    for($j=0; $j<=$n; $j++){
      $matriz[$i][$j] = ($i+1)**($j+1);
    }
  }
  return($matriz);
}
?>

<!DOCTYPE html>
<html>
<head>
  <title>Teste PHP</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="container">
  <h1 class="display-4">Tabela de potências</h1>
   <?php
    $n = 5;
    $m = power_matrix($n);
    echo create_table($m);
  ?>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
</body>
</html>

