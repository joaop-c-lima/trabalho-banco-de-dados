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

   <div class="back_container">  <a href="./index.php"> <img src="./img/ARROW-LEFT.png"/> Voltar de página </a> </div>

   <section class="content_section">
      <h2 class="content_title">Página do Curso</h2>
      <div>
      <a href="#novo"> Adicionar novo curso </a> 
      <table class="styled-table">
         <thead><tr><th>N°</th>
            <th>Nome</th>
            <th>Cod. Curso</th>
            <th>Cod. Departamento</th>
            <th>CPF Coordenador</th>
            <th>Qtd. Semestres</th>
            <th>Turno</th>
            <th class="special alunos" > Alunos </th>
            <th class="special" > Remover </th>
         </thead>
         <tbody>
         <?php
            $tableName="curso";
            $columns= ['pk_codigo_curso', 'fk_codigo_dept','fk_cpf_coordenador','nome_curso','qtd_semestres_curso', 'turno_curso'];
            $orderBy = "nome_curso";
            $fetchData = fetch_data($mysqli, $tableName, $columns, $orderBy);
            if(is_array($fetchData)){      
            $num=1;
            foreach($fetchData as $data){
         ?>
         <tr>
            <td><?php echo $num; ?></td>
            <td><?php echo $data['nome_curso']??''; ?></td>  
            <td><?php echo $data['pk_codigo_curso']??''; ?></td>
            <td><?php echo $data['fk_codigo_dept']??''; ?></td>
            <td><?php echo $data['fk_cpf_coordenador']??''; ?></td>
            <td><?php echo $data['qtd_semestres_curso']??''; ?></td>  
            <td><?php echo $data['turno_curso']??''; ?></td>
            <td class="special alunos"> <a href="./curso_aluno.php?curso=<?php echo $data['pk_codigo_curso']??''; ?>"> <img src="./img/lista-alunos.png"/> </a> </td>
            <td class="special remove"> <a href="delete_db.php?id=<?php echo $data['pk_codigo_curso']??''; ?>&table=curso&column=pk_codigo_curso"> <img src="./img/remove-icon.png"/> </a>  </td>  
            
         </tr>
     <?php
      $num++;}}else{ 
         echo "<br> <br> $fetchData <br> <br> <tr> <td> <td> </tr>"; ?>
  </td>
    <tr>
    <?php
    }?>
    </tbody>
     </table>
   </div>
      </div>
   </section>
   <section id="novo">
      <p class="new-register-title"> Insira os dados do novo curso: </p>
   <form class="form" action="insert_db.php?table=curso" method="post">
         <div>
            <label>Nome </label> <input type="text" name="nome_curso" placeholder="Ciência da Computação">
         </div>
         <div>
          <label> Cod. Curso </label> <input type="number" name="pk_codigo_curso" min="0" max="300" placeholder="20">
         </div>
         <div>
          <label> Departamento </label> 
          <select name="fk_codigo_dept">
            <?php
               $tableName="departamento";
               $columns= ['pk_codigo_dept', 'nome_dept'];
               $orderBy = "nome_dept";
               $fetchData = fetch_data($mysqli, $tableName, $columns, $orderBy);
               if(is_array($fetchData)){     
                  foreach($fetchData as $data){
                     echo  "<option value=".$data['pk_codigo_dept'].">".$data['nome_dept']."</option>";
                  }
               }
            ?>
         </select> 
         </div>

         <div>
          <label> Coordenador </label> 
          <select name="fk_cpf_coordenador">
            <?php
               $tableName="coordenador";
               $columns= ['pk_cpf_coordenador', 'nome_coordenador'];
               $orderBy = "nome_coordenador";
               $fetchData = fetch_data($mysqli, $tableName, $columns, $orderBy);
               if(is_array($fetchData)){     
                  foreach($fetchData as $data){
                     echo  "<option value=".$data['pk_cpf_coordenador'].">".$data['nome_coordenador']."</option>";
                  }
               }
            ?>
         </select> 
         </div>
         <div>
            <label>Qtd. Semestres </label> <input type="number" name="qtd_semestres_curso" placeholder="8" min="0" max="20">
         </div>
         <div>
            <label> Turno </label>
               <select name="turno_curso">
                  <option value="NOTURNO">NOTURNO</option>
                  <option value="DIURNO">DIURNO</option>
               </select>
         </div>
         <button type ="submit"> Enviar</button>
   </form>
   </section>
</body>
</html>