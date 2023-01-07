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
      <h2 class="content_title">Página do Aluno</h2>
      <div>
      <a href="#novo"> Adicionar novo aluno </a> 
      <table class="styled-table">
         <thead><tr><th>N°</th>
            <th>Nome</th>
            <th>CPF</th>
            <th>Idade</th>
            <th>Cod. Curso</th>
            <th>Data Entrada</th>
            <th>Matrícula</th>
            <th>Sexo</th>
            <th>Login</th>
            <th>Formação</th>
            <th>Status</th>
            <th class="special" > Remover </th>
         </thead>
         <tbody>
         <?php
            $tableName="aluno";
            $columns= ['pk_cpf_aluno', 'fk_codigo_curso','idade_aluno','sexo_aluno','senha_aluno', 'login_aluno','nome_aluno','data_entrada_aluno_curso', 'matricula_aluno', 'formacao_aluno', 'status_matricula_aluno'];
            $orderBy = "nome_aluno";
            $fetchData = fetch_data($mysqli, $tableName, $columns, $orderBy);
            if(is_array($fetchData)){      
            $num=1;
            foreach($fetchData as $data){
         ?>
         <tr>
            <td><?php echo $num; ?></td>
            <td><?php echo $data['nome_aluno']??''; ?></td>  
            <td><?php echo $data['pk_cpf_aluno']??''; ?></td>
            <td><?php echo $data['idade_aluno']??''; ?></td>
            <td><?php echo $data['fk_codigo_curso']??''; ?></td>
            <td><?php echo $data['data_entrada_aluno_curso']??''; ?></td>  
            <td><?php echo $data['matricula_aluno']??''; ?></td> 
            <td><?php echo $data['sexo_aluno']??''; ?></td>
            <td><?php echo $data['login_aluno']??''; ?></td> 
            <td><?php echo $data['formacao_aluno']??''; ?></td> 
            <td><?php echo $data['status_matricula_aluno']??''; ?></td>
            <td class="special remove"> <a href="delete_db.php?id=<?php echo $data['pk_cpf_aluno']??''; ?>&table=aluno&column=pk_cpf_aluno"> <img src="./img/remove-icon.png"/> </a>  </td>  
         </tr>
     <?php
      $num++;}}else{ 
         echo "<br> <br> $fetchData <br> <br> <tr> <td> <td> </tr>";
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
   <section id="novo">
      <p class="new-register-title"> Insira os dados do novo aluno: </p>
   <form class="form" action="insert_db.php?table=aluno" method="post">
         <div> 
            <label> CPF </label> <input type="text" pattern="\d*" name="pk_cpf_aluno" placeholder="13567674782" minlength="11" maxlength="11">
         </div> 
         <div>
            <label>Nome </label> <input type="text" name="nome_aluno" placeholder="Savio Teixeira">
         </div>
         <div>
          <label>Idade </label> <input type="number" name="idade_aluno" min="0" max="200" placeholder="20">
         </div>
         <div>
          <label>Cod. Curso </label> 
          <select name="fk_codigo_curso">
            <?php
               $tableName="curso";
               $columns= ['pk_codigo_curso', 'nome_curso'];
               $orderBy = "nome_curso";
               $fetchData = fetch_data($mysqli, $tableName, $columns, $orderBy);
               if(is_array($fetchData)){     
                  foreach($fetchData as $data){
                     echo  "<option value=".$data['pk_codigo_curso'].">".$data['nome_curso']."</option>";
                  }
               }
            ?>
         </select> 
          
         </div>
         <div>
            <label>Data Entrada </label> <input type="date" placeholder="01/01/2001" required pattern="\d{4}-\d{2}-\d{2}"  name="data_entrada_aluno_curso">
         </div>
         <div>
            <label>Matrícula </label> <input type="text" name="matricula_aluno" placeholder="202035038" minlength="5" maxlength="20">
         </div>
         <div>
               <label>Sexo </label> <select name="sexo_aluno">
                  <option value="M">Masculino</option>
                  <option value="F">Feminino</option>
               </select>
         </div>
         <div>
            <label>Login </label> <input type="text" name="login_aluno" placeholder="saviochwt" minlength="5" maxlength="20">
         </div>
         <div>
            <label>Senha </label> <input type="text" name="senha_aluno" placeholder="coxinha1234" minlength="5" maxlength="20">
         </div>
         <div>
            <label>Formação </label> <input type="text" name="formacao_aluno" placeholder="ENSINO MEDIO" minlength="5" maxlength="20">
         </div>
         <div>
            <label>Status </label> <input type="text" name="status_matricula_aluno" placeholder="ATIVO" minlength="5" maxlength="20">
         </div>
         <button type ="submit"> Enviar</button>
   </form>
   </section>
</body>
</html>