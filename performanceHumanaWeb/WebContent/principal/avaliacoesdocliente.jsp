<%@page import="model.ModelLogin"%>
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
      <div class="main-container">

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-11 col-xl-9">
              <section class="py-4 py-lg-5">
                	<div class="modal-body">
				<<p class="h4 text-center">Avaliações do Cliente</p>
              	
				<div class="container col-12"
					style="overflow: scroll; height: 350px">

					<table class="table">
						<thead>
							<tr>
								<th scope="col">Nome</th>
								<th scope="col">Data Avaliação</th>
								<th scope="col" >Ações</th>
							</tr>
						</thead>
						<c:forEach items="${avaliacao}" var="avaliacao">
							<tbody class="col-12">
								<tr class="col-12">
									<td ><a class="text-reset" href="#">
									<c:out value="${avaliacao.nomeCliente}"></c:out></a></td>
									<td><a class="text-reset" href="#"><c:out value="${avaliacao.dataAvaliacao}"></c:out></a></td>
									<td ><a href="ServletAvaliacao?acao=editar&codavaliacao=${avaliacao.codAvaliacao}" class="text-info"><i class="far fa-edit mr-2" alt="Editar" title="Editar Avaliação"></i></a><a href="#" class="text-info" ><i class="far fa-trash-alt mr-2" alt="Excluir Avaliação" title="Excluir Avaliação"></i></a><a href="#" class="text-info" ><i class="fal fa-eye mr-2" alt="Ver Avaliação" title="Ver Avaliação"></i></a></td>
								</tr>
								
							</tbody>
							<input type="hidden" name="codCliente" value="${avaliacao.codCliente}"></input>
							
						</c:forEach>
					</table>
				</div>
				<span id="totalresultados"><c:out value="${user.length}"></c:out></span>
				<a type="button" class="btn btn-primary mt-2 ml-3" href="<%=request.getContextPath()%>/ServletAvaliacao?acao=novaavaliacao&codCliente=<%=request.getAttribute("codCliente")%>&codusuario=<%=session.getAttribute("usuario") %>" role="button">Nova Avaliação</a>
				</div>
              </section>
            </div>
          </div>
        </div>

      </div>
    </div>
  
  <jsp:include page="javascript.jsp"></jsp:include>
</body>
</html>