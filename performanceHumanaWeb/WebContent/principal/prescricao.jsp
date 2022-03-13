<%@page import="javax.naming.Context"%>
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
      <jsp:include page="menulateralresponsivo2.jsp"></jsp:include>
      <div class="main-container">

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-11 col-xl-9">
              <section class="py-4 py-lg-5">
                
              </section>
            </div>
          </div>
        </div>

      </div>
    </div>
  
  <jsp:include page="javascript.jsp"></jsp:include>
</body>
</html>