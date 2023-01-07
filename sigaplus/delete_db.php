<?php
require 'conexao_db.php';
$id = $_GET['id'];
$table = $_GET['table'];
$column = $_GET['column'];

$query = "DELETE FROM $table WHERE $column = '$id';";
$result = mysqli_query($mysqli, $query);
if ($result) {
    mysqli_close($mysqli);
    header("location: $table.php");
    exit();
} else {
    echo "Erro deletando registro.";
}
?>