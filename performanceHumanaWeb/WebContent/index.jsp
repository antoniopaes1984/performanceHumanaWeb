<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Performance Humana</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sistema de Avaliação Física">
    <link href="assets/img/favicon.ico" rel="icon" type="image/x-icon">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Gothic+A1" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="main-container fullscreen">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-5 col-lg-6 col-md-7">
            <div class="text-center">
              <h1 class="h2">Seja bem vindo &#x1f44b;</h1>
              <p class="lead">Acesse sua conta para continuar</p>
              <form action="ServletLogin" method="post">
              <input type="hidden" value="<%=request.getParameter("url") %>" name="url">
                <div class="form-group">
                  <input class="form-control" type="email" placeholder="Email cadastrado" name="txtEmail" required />
                </div>
                <div class="form-group">
                  <input class="form-control" type="password" placeholder="Insira sua senha" name="txtSenha" required/>
                  <div class="text-right">
                    <small><a href="#">Esqueceu a senha?</a>
                    </small>
                  </div>
                </div>
                <button class="btn btn-lg btn-block btn-primary" role="button" type="submit">
                  Entrar
                </button>
               
                <h4 style="color:red">${msg}</h4>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <jsp:include page="principal/javascript.jsp"></jsp:include>

</body>
</html>