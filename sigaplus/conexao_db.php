
<?php 
    $usuario = "root";
    $senha = "";
    $database = "sigaplus";
    $host = "localhost";
    $mysqli = new mysqli($host, $usuario, $senha, $database);

    function fetch_data($mysqli, $tableName, $columns, $orderBy){
        if(empty($mysqli)){
         $msg= "Erro na conexão com o banco de dados.";
        }
        if (empty($columns) || !is_array($columns)) {
         $msg="Falta declarar as colunas da consulta.";
        }elseif(empty($tableName)){
          $msg= "Nome da tabela vazio.";
       }else{
       $columnName = implode(", ", $columns);
       $query = "SELECT $columnName FROM $tableName ORDER BY $orderBy";
       $result = $mysqli->query($query);
       if($result== true){ 
        if ($result->num_rows > 0) {
           $row= mysqli_fetch_all($result, MYSQLI_ASSOC);
           $msg= $row;
        } else {
           $msg= "Nenhum dado foi encontrado"; 
        }
       }else{
         $msg= mysqli_error($mysqli);
       }
       }
       return $msg;
      }

      function fetch_join_data($mysqli, $tableName, $columns, $joinTable, $onQuery, $orderBy){
         if(empty($mysqli)){
          $msg= "Erro na conexão com o banco de dados.";
         }
         if (empty($columns) || !is_array($columns)) {
          $msg="Falta declarar as colunas da consulta.";
         }elseif(empty($tableName)){
           $msg= "Nome da tabela vazio.";
        }else{
        $columnName = implode(", ", $columns);
        $query = "SELECT $columnName FROM $tableName INNER JOIN $joinTable ON $onQuery ORDER BY $orderBy";
        $result = $mysqli->query($query);
        if($result== true){ 
         if ($result->num_rows > 0) {
            $row= mysqli_fetch_all($result, MYSQLI_ASSOC);
            $msg= $row;
         } else {
            $msg= "Nenhum dado foi encontrado"; 
         }
        }else{
          $msg= mysqli_error($mysqli);
        }
        }
        return $msg;
        }

?> 