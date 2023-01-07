<?php
require 'conexao_db.php';

$table = $_GET['table'];

$test = implode("", $_POST);


$sql = "INSERT INTO $table("; 

 /* ADDING COLUMNS NAMES */
$counter = 0;
foreach ($_POST as $name => $value) {
    if($counter == 0)  $sql .= "$name";
    else $sql .= ",$name";
    $counter += 1;
 }

 $sql .= ") VALUES ("; 

 /* ADDING VALUES */
 $counter = 0;
 foreach ($_POST as $name => $value) {
    if($counter == 0)  $sql .= "'$value'";
    else $sql .= ",'$value'";
    $counter += 1;
 }

 $sql .= ");";

 try {
    $mysqli->query($sql);
    header("location: $table.php");
 }catch(Exception $e){
    echo "<p style='color:red;font-size:20px;'> Erro com os dados inseridos. Por favor revisar: <br><br> " . $e->getMessage(). "</p>";


    echo "<br> <br> <br> <bold> Valores </bold>";
    foreach ($_POST as $name => $value) {
        echo "$name: $value </br>";
     }


    echo "<a style='font-size:20px;' href='$table.php#novo'> Voltar para $table </a>";
}


$mysqli->close();

?>