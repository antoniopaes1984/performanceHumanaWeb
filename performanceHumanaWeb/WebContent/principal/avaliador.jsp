<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                <p class="h4 text-center">Dados do Avaliador</p>
              	<hr>
                <form class="mt-0"  action="ServletAvaliador" method="post">
						 <input type="hidden" class="form-control"  name="txtCodUsuario"  value="${avaliador.codUsuario}">
						  <div class="form-group mt-0">
						    <input type="hidden" class="form-control" id="txtNome" name="txtVerificanovo" placeholder="Nome" required="required" value="editar">
						  </div>
						  <div class="form-group mt-0">
						    <label for="exampleInputEmail1">Nome</label>
						    <input type="text" class="form-control" id="txtNome" name="txtNome" placeholder="Nome" required="required" value="${avaliador.nomeAvaliador}" Disabled>
						  	<span class="text-danger">${msg}</span>
						  </div>
						  <div class="form-group">
								<label for="inputTelefone">Telefone</label> 
								<input type="text"
									class="form-control" id="txtFone" name="txtFone"
									placeholder="Telefone" value="${avaliador.telefoneAvaliador}">
							</div>
							<div class="form-group">
								<label for="inputTelefone">Instagram</label> 
								<input type="text"
									class="form-control" id="txtInstagram" name="txtInstagram"
									placeholder="Telefone" value="${avaliador.instagram}">
							</div>
							<div class="form-group">
								<label for="inputTelefone">Facebook</label> 
								<input type="text"
									class="form-control" id="txtFacebook" name="txtFacebook"
									placeholder="Telefone" value="${avaliador.facebook}">
							</div>
							<div class="form-group">
								<label for="inputTelefone">Especialização</label> 
								<input type="text"
									class="form-control" id="txtEspecializacao" name="txtEspecializacao"
									placeholder="Telefone" value="${avaliador.especializacao}">
							</div>
							<div class="form-group">
								<label for="inputTelefone">Site</label> 
								<input type="text"
									class="form-control" id="txtSite" name="txtSite"
									placeholder="Telefone" value="${avaliador.site}">
							</div>
							<div class="form-group">
								<label for="inputTelefone">Cref</label> 
								<input type="text"
									class="form-control" id="txtCref" name="txtCref"
									placeholder="Telefone" value="${avaliador.cref}">
							</div>
							<div class="form-group">
								<label for="inputTelefone">Dias Para Reavaliação</label> 
								<input type="text"
									class="form-control" id="txtDiasReavaliacao" name="txtDiasReavaliacao"
									placeholder="Telefone" value="${avaliador.diasParaReavaliação}">
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