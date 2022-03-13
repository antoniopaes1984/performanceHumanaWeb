<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Performance Humana</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sistema de Avaliação Física">
    <link href="<%=request.getContextPath() %>/assets/img/favicon.ico" rel="icon" type="image/x-icon">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Gothic+A1" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/theme.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>

  <div class="layout layout-nav-side">
      <jsp:include page="menulateralresponsivo1.jsp"></jsp:include>
      <div class="main-container">

        <div class="container">
          <div class="row justify-content-center">
          	
            <div class="col-lg-11 col-xl-9">
              <section class="py-4 py-lg-5">
              	<p class="h4 text-center">Novo Cadastro</p>
              	<hr>
                <form class="mt-0"  action="<%=request.getContextPath() %>/ServletCliente" method="post">
						  <div class="form-group mt-0">
						    <input type="hidden" class="form-control" id="txtVerificanovo" name="txtVerificanovo" placeholder="Nome" required="required" value="novo">
						  </div>
						  <div class="form-group mt-0">
						    <input type="hidden" class="form-control" id="codUsuario" name="codUsuario"   value="${usuario}">
						  </div>
						  <div class="form-group mt-0">
						    <label for="exampleInputEmail1">Nome</label>
						    <input type="text" class="form-control" id="txtNome" name="txtNome" placeholder="Nome" required="required" value="${cliente.nome}">
						  	<span class="text-danger">${msg}</span>
						  </div>
						  <div class="form-group ">
							<label for="inputdata">Data Nascimento</label>
								 <input type="date"
								class="form-control" id="txtDataNascimento" name="txtDataNascimento"
								placeholder="" required="required" value="${cliente.dataNascimento}">
							</div>
							<div class="form-row ">
								<div class="form-group col-6">
								<label for="inputSexo">Sexo</label> 
								<select id="txtSexo"
									name="txtSexo" class="form-control"  required>
									<option >${cliente.sexo}</option>
									<option value="M">M</option>
									<option value="F">F</option>
								</select>
							</div>
							<div class="form-group col-6">
								<label for="inputTelefone">Telefone</label> 
								<input type="text"
									class="form-control" id="txtFone" name="txtFone"
									placeholder="Telefone" value="${cliente.telefone}">
							</div>
							</div>
							
							<div class="form-group">
								    <label for="exampleInputEmail1">Endereço de Email</label>
								    <input type="email" class="form-control" id="txtEmail" placeholder="E-mail" name="txtEmail" value="${cliente.email}">
							</div>
						  
						  <button type="submit" class="btn btn-primary">Salvar</button>
						</form>
              </section>
            </div>
          </div>
        </div>

      </div>
    </div>
  
  <jsp:include page="javascript.jsp"></jsp:include>
</body>
</html>