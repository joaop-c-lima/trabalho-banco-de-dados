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
      <h2 class="content_title">Página do Professor</h2>
      <div>
      <a href="#novo"> Adicionar novo professor </a> 
      <table class="styled-table">
         <thead><tr><th>N°</th>
            <th>Nome</th>
            <th>CPF</th>
            <th>Idade</th>
            <th>Cod. Departamento</th>
            <th>Data Entrada</th>
            <th>Código Prof.</th>
            <th>Sexo</th>
            <th>Login</th>
            <th>Formação</th>
            <th>Horas no Dept.</th>
            <th class="special" > Remover </th>
         </thead>
         <tbody>
         <?php
            $tableName="professor";
            $columns= ['pk_cpf_professor', 'fk_codigo_dept','idade_professor','sexo_professor','senha_professor', 'login_professor','nome_professor','data_inicio_professor_departamento', 'codigo_professor', 'formacao_professor', 'horas_professor_departamento'];
            $orderBy = "nome_professor";
            $fetchData = fetch_data($mysqli, $tableName, $columns, $orderBy);
            if(is_array($fetchData)){      
            $num=1;
            foreach($fetchData as $data){
         ?>
         <tr>
            <td><?php echo $num; ?></td>
            <td><?php echo $data['nome_professor']??''; ?></td>  
            <td><?php echo $data['pk_cpf_professor']??''; ?></td>
            <td><?php echo $data['idade_professor']??''; ?></td>
            <td><?php echo $data['fk_codigo_dept']??''; ?></td>
            <td><?php echo $data['data_inicio_professor_departamento']??''; ?></td>  
            <td><?php echo $data['codigo_professor']??''; ?></td> 
            <td><?php echo $data['sexo_professor']??''; ?></td>
            <td><?php echo $data['login_professor']??''; ?></td> 
            <td><?php echo $data['formacao_professor']??''; ?></td> 
            <td><?php echo $data['horas_professor_departamento']??''; ?></td>
            <td class="special remove"> <a href="delete_db.php?id=<?php echo $data['pk_cpf_professor']??''; ?>&table=professor&column=pk_cpf_professor"> <img src="./img/remove-icon.png"/> </a>  </td>  
         </tr>
     <?php
      $num++;}}else{ 
         echo "<br> <br> $fetchData <br> <br> <tr> <td> <td> </tr>";?>
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
      <p class="new-register-title"> Insira os dados do novo professor: </p>
   <form class="form" action="insert_db.php?table=professor" method="post">
         <div> 
            <label> CPF </label> <input type="text" pattern="\d*" name="pk_cpf_professor" placeholder="13567674782" minlength="11" maxlength="11" required>
         </div> 
         <div>
            <label>Nome </label> <input type="text" name="nome_professor" placeholder="Savio Teixeira" required>
         </div>
         <div>
          <label>Idade </label> <input type="number" name="idade_professor" min="0" max="200" placeholder="20" required>
         </div>
         <div>
          <label>Cod. Curso </label> 
          <select name="fk_codigo_dept" required>
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
            <label>Data Entrada </label> <input type="date" placeholder="01/01/2001" required pattern="\d{4}-\d{2}-\d{2}"  name="data_inicio_professor_departamento" required>
         </div>
         <div>
            <label>Código Prof. </label> <input type="text" name="codigo_professor" placeholder="2030" minlength="3" maxlength="20" required>
         </div>
         <div>
               <label>Sexo </label> <select name="sexo_professor" required>
                  <option value="M">Masculino</option>
                  <option value="F">Feminino</option>
               </select>
         </div>
         <div>
            <label>Login </label> <input type="text" name="login_professor" placeholder="saviochwt" minlength="7" maxlength="20" required>
         </div>
         <div>
            <label>Senha </label> <input type="text" name="senha_professor" placeholder="coxinha1234" minlength="5" maxlength="20" required>
         </div>
         <div>
            <label>Formação </label> 
            <select name="formacao_professor" required>
               <option value="MESTRADO">Mestrado</option>
               <option value="DOUTORADO">Doutorado</option>
               <option value="POS-DOUTORADO">Pós-doutorado</option>
            </select>
         </div>
         <div>
            <label>Horas no dept. </label> <input type="number" name="horas_professor_departamento" placeholder="40" min="0" max="200" required>
         </div>
         <button type ="submit"> Enviar</button>
   </form>
   </section>
</body>
</html>