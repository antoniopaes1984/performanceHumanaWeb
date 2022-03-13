<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<section class="col-12 col-lg-9">
			<div class="modal-body">
				<div class=" container col-12 col-lg-12 input-group mb-3">
					<input type="text" class="form-control" placeholder="Nome"
						aria-label="Nome" aria-describedby="button-addon2" id="nomebusca">
					<div class=" input-group-append">
						<button class="btn btn-info" type="button"
							onclick="buscarUsuario();">Buscar</button>
					</div>
				</div>
				<div class="container col-12"
					style="overflow: scroll; height: 350px">

					<table class="table">
						<thead>
							<tr>
								<th scope="col">Clientes Cadastrados</th>
								<th scope="col">Ações</th>
							</tr>
						</thead>
						<c:forEach items="${listaDeClientes}" var="cliente">
							<tbody class="col-12">

								<tr class="col-12">
									<td ><a class="text-reset" href="ServletCliente?acao=entrarnasavaliacoesdocliente&codcliente=${cliente.codCliente}">
									<c:out value="${cliente.nome}"></c:out></a></td>
									<td ><a href="ServletCliente?acao=editar&user=${cliente.nome}"
										class="text-info"><i class="far fa-edit" alt="Editar"
											title="Editar Cliente"></i></a></td>
								</tr>
							</tbody>
							<input type="hidden" value="${cliente.codCliente}"></input>
						</c:forEach>
					</table>
				</div>
				<a class="btn btn-primary mt-2 ml-3" href="principal/novocliente.jsp" role="button">Novo Cadastro</a>
				</div>
		</section>
	</div>
	<jsp:include page="javascript.jsp"></jsp:include>

</body>
  

</html>