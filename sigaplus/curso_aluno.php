<?php
include('conexao_db.php');
?>
<html>
<head>
   <link rel="icon" type="image/x-icon" href="https://sigam2.ufjf.br/apps/siga/public/themes/siga/images/icons/blue/svg/ico_academico.svg">
   <link rel="stylesheet" href="./styles/index.css">
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
   <section class="header_section">
      <div class="header_div"> 
         <div class="welcome_container"> 
            <a href="/siga_plus" class="welcome_title">Bem-vindo ao SIGA PLUS</a>
            <img class="welcome_img" src="./img/ico_academico.svg"/>
         </div>
         <img class="logo_img" src="./img/logo_ufjf.svg"> 
      </div>
   </section>

   <div class="back_container">  <a href="./curso.php"> <img src="./img/ARROW-LEFT.png"/> Voltar de página </a> </div>

   <?php
            $tableName="aluno";
            $columns= ['pk_cpf_aluno', 'fk_codigo_curso','nome_aluno','data_entrada_aluno_curso', 'matricula_aluno', 'nome_curso'];
            $orderBy = "nome_aluno";
            $joinTable="curso";
            $cursoCod = $_GET['curso']??'';
            $onQuery = "fk_codigo_curso = pk_codigo_curso and fk_codigo_curso = $cursoCod";
            $fetchData = fetch_join_data($mysqli, $tableName, $columns, $joinTable,  $onQuery, $orderBy);
            if(is_array($fetchData)) $cursoName = $fetchData[0]['nome_curso'];
    ?>

   <section class="content_section">
      <h2 class="content_title">Alunos do curso: <?php echo $cursoName??$cursoCod ?> </h2>
      <div>
      <table class="styled-table">
         <thead><tr><th>N°</th>
            <th>Nome</th>
            <th>CPF</th>
            <th>Cod. Curso</th>
            <th>Data Entrada</th>
            <th>Matrícula</th>
         </thead>
         <tbody>
         <?php
            if(is_array($fetchData)){      
            $num=1;
            foreach($fetchData as $data){
         ?>
         <tr>
            <td><?php echo $num; ?></td>
            <td><?php echo $data['nome_aluno']??''; ?></td>  
            <td><?php echo $data['pk_cpf_aluno']??''; ?></td>
            <td><?php echo $data['fk_codigo_curso']??''; ?></td>
            <td><?php echo $data['data_entrada_aluno_curso']??''; ?></td>  
            <td><?php echo $data['matricula_aluno']??''; ?></td> 
         </tr>
     <?php
      $num++;}}else{ 
         echo "<p> Não foi encontrado nenhum aluno para esse curso. </p> <tr> <td> <td> </tr>";
      ?>
  </td>
    <tr>
    <?php
    }?>
    </tbody>
     </table>
   </div>
      </div>
   </section>
</body>
</html>