<%@page import="model.ModelPostural"%>
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
      <jsp:include page="menulateralresponsivo2.jsp"></jsp:include>
      <div class="main-container">

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-11 col-xl-9">
              <section class="py-4 py-lg-5">
              <input type="text" name="nomeCliente" class="form-control text-center mb-4 mt-0" value="${avaliacao.nomeCliente}" readonly>
              <p class="text-center h4">Postural</p>
                <form  action="ServletPostural" method="post">
                <input type="hidden" name="codAvaliacao" value="${postural.codAvaliacao}">
                <input type="hidden" id="idade" name="idade" value="${idade}">
           <center><label>Visão posterior dorsal</label></center>  
      		
		
			<div class="row">
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  	<label class="col-12">Cabeça e pescoço</label>
			  	
			  	<%
				ModelPostural postural = new ModelPostural();
				
			  	postural = (ModelPostural) request.getAttribute("postural");
				if(postural.isVisaoDorsalCabecaPescoco1()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalCabecaPescoco" value="visaoDorsalCabecaPescoco1" id="visaoDorsalCabecaPescoco1"  checked >
				<img src="img/Dorsal-ombro1Verde-copia.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgdorsalCabecaPescoco1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalCabecaPescoco" value="visaoDorsalCabecaPescoco1" id="visaoDorsalCabecaPescoco1" >
				<img src="img/Dorsal-Ombro1-copia.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgdorsalCabecaPescoco1">>
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalCabecaPescoco3()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalCabecaPescoco" value="visaoDorsalCabecaPescoco3" id="visaoDorsalCabecaPescoco3"  checked >
				<img src="img/Dorsal-Cabeça3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgdorsalCabecaPescoco3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalCabecaPescoco" value="visaoDorsalCabecaPescoco3" id="visaoDorsalCabecaPescoco3" >
				<img src="img/Dorsal-Cabeça3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgdorsalCabecaPescoco3">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalCabecaPescoco5()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalCabecaPescoco" value="visaoDorsalCabecaPescoco5" id="visaoDorsalCabecaPescoco5"  checked >
				<img src="img/Dorsal-Cabeça5Verde.png" alt="..." class="img-thumbnail col-3" id="imgdorsalCabecaPescoco5">
				<%}else {%>
				<img src="img/Dorsal-Cabeça5.png" alt="..." class="img-thumbnail col-3" id="imgdorsalCabecaPescoco5">
				<input class="form-check-input" type="radio" name="visaoDorsalCabecaPescoco" value="visaoDorsalCabecaPescoco5" id="visaoDorsalCabecaPescoco5" >
				<%} %>
				
				
			  </div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  	<label class="col-12">Ombros</label>
			  	<%
				if(postural.isVisaoDorsalOmbros1()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalOmbro" value="visaoDorsalOmbro1" id="visaoDorsalOmbro1"  checked>
				<img src="img/Dorsal-Ombro1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalOmbro1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalOmbro" value="visaoDorsalOmbro1" id="visaoDorsalOmbro1" >
				<img src="img/Dorsal-Ombro1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalOmbro1">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalOmbros3()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalOmbro" value="visaoDorsalOmbro3" id="visaoDorsalOmbro3"  checked>
				<img src="img/Dorsal-Ombro3Verde.png" alt="..." class="img-thumbnail mr-3 col-3"  id="imgvisaoDorsalOmbro3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalOmbro" value="visaoDorsalOmbro3" id="visaoDorsalOmbro3" >
				<img src="img/Dorsal-Ombro3.png" alt="..." class="img-thumbnail mr-3 col-3"  id="imgvisaoDorsalOmbro3">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalOmbros5()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalOmbro" value="visaoDorsalOmbro5" id="visaoDorsalOmbro5"  checked>
				<img src="img/Dorsal-Ombro5Verde.png" alt="..." class="img-thumbnail col-3"  id="imgvisaoDorsalOmbro5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalOmbro" value="visaoDorsalOmbro5" id="visaoDorsalOmbro5" >
				<img src="img/Dorsal-Ombro5.png" alt="..." class="img-thumbnail col-3"  id="imgvisaoDorsalOmbro5">
				<%} %>
				
			  </div>
			  <div class="w-100"></div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			 	 <label class="col-12">Coluna</label>
			 	 <%
				if(postural.isVisaoDorsalColuna1()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalColuna" value="visaoDorsalColuna1" id="visaoDorsalColuna1"  checked>
				<img src="img/Dorsal-Coluna1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalColuna1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalColuna" value="visaoDorsalColuna1" id="visaoDorsalColuna1" >
				<img src="img/Dorsal-Coluna1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalColuna1">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalColuna3()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalColuna" value="visaoDorsalColuna3" id="visaoDorsalColuna3"  checked>
				<img src="img/Dorsal-Coluna3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalColuna3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalColuna" value="visaoDorsalColuna3" id="visaoDorsalColuna3" >
				<img src="img/Dorsal-Coluna3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalColuna3">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalColuna5()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalColuna" value="visaoDorsalColuna5" id="visaoDorsalColuna5"  checked>
				<img src="img/Dorsal-Coluna5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalColuna5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalColuna" value="visaoDorsalColuna5" id="visaoDorsalColuna5" >
				<img src="img/Dorsal-Coluna5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalColuna5">
				<%} %>
				
			  </div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  	<label class="col-12">Quadril</label>
			  	
			  	<%
				if(postural.isVisaoDorsalQuadril1()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalQuadril" value="visaoDorsalQuadril1" id="visaoDorsalQuadril1"  checked>
				<img src="img/Dorsal-Quadril1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalQuadril1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalQuadril" value="visaoDorsalQuadril1" id="visaoDorsalQuadril1" >
				<img src="img/Dorsal-Quadril1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalQuadril1">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalQuadril3()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalQuadril" value="visaoDorsalQuadril3" id="visaoDorsalQuadril3"  checked>
				<img src="img/Dorsal-Quadril3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalQuadril3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalQuadril" value="visaoDorsalQuadril3" id="visaoDorsalQuadril3" >
				<img src="img/Dorsal-Quadril3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalQuadril3">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalQuadril5()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalQuadril" value="visaoDorsalQuadril5" id="visaoDorsalQuadril5"  checked>
				<img src="img/Dorsal-Quadril5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalQuadril5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalQuadril" value="visaoDorsalQuadril5" id="visaoDorsalQuadril5" >
				<img src="img/Dorsal-Quadril5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalQuadril5">
				<%} %>
				
			  </div>
			  
			  <div class="w-100"></div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  	<label class="col-12">Joelhos</label>
			  	
			  	<%
				if(postural.isVisaoDorsalJoelhos1()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalJoelhos" value="visaoDorsalJoelhos1" id="visaoDorsalJoelhos1"  checked>
				<img src="img/Dorsal-Joelhos1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalJoelhos1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalJoelhos" value="visaoDorsalJoelhos1" id="visaoDorsalJoelhos1" >
				<img src="img/Dorsal-Joelhos1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalJoelhos1">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalJoelhos3()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalJoelhos" value="visaoDorsalJoelhos3" id="visaoDorsalJoelhos3"  checked>
				<img src="img/Dorsal-Joelhos3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalJoelhos3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalJoelhos" value="visaoDorsalJoelhos3" id="visaoDorsalJoelhos3" >
				<img src="img/Dorsal-Joelhos3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalJoelhos3">
				<%} %>				
				
				
				<%
				if(postural.isVisaoDorsalJoelhos5()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalJoelhos" value="visaoDorsalJoelhos5" id="visaoDorsalJoelhos5"  checked>
				<img src="img/Dorsal-Joelhos5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalJoelhos5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalJoelhos" value="visaoDorsalJoelhos5" id="visaoDorsalJoelhos5" >
				<img src="img/Dorsal-Joelhos5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalJoelhos5">
				<%} %>
				
				
			  </div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  	<label class="col-12">Calcanhares</label>
				
				<%
				if(postural.isVisaoDorsalCalcanhares1()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalCalcanhares" value="visaoDorsalCalcanhares1" id="visaoDorsalCalcanhares1"  checked>
				<img src="img/Dorsal-Calcanhares1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalCalcanhares1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalCalcanhares" value="visaoDorsalCalcanhares1" id="visaoDorsalCalcanhares1" >
				<img src="img/Dorsal-Calcanhares1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalCalcanhares1">
				<%} %>			  	
				
				
				<%
				if(postural.isVisaoDorsalCalcanhares3()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalCalcanhares" value="visaoDorsalCalcanhares3" id="visaoDorsalCalcanhares3"  checked>
				<img src="img/Dorsal-Calcanhares3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalCalcanhares3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalCalcanhares" value="visaoDorsalCalcanhares3" id="visaoDorsalCalcanhares3" >
				<img src="img/Dorsal-Calcanhares3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalCalcanhares3">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalCalcanhares5()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalCalcanhares" value="visaoDorsalCalcanhares5" id="visaoDorsalCalcanhares5"  checked>
				<img src="img/Dorsal-Calcanhares5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalCalcanhares5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalCalcanhares" value="visaoDorsalCalcanhares5" id="visaoDorsalCalcanhares5" >
				<img src="img/Dorsal-Calcanhares5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalCalcanhares5">
				<%} %>
				
			  </div>
			  
			  <div class="w-100"></div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  <label class="col-12">Pés</label>
			  
			  	<%
				if(postural.isVisaoDorsalPes1()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalPes" value="visaoDorsalPes1" id="visaoDorsalPes1"  checked>
				<img src="img/Dorsal-Impressãoplantar1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalPes1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalPes" value="visaoDorsalPes1" id="visaoDorsalPes1" >
				<img src="img/Dorsal-Impressãoplantar1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalPes1">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalPes3()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalPes" value="visaoDorsalPes3" id="visaoDorsalPes3"  checked>
				<img src="img/Dorsal-Impressãoplantar3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalPes3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalPes" value="visaoDorsalPes3" id="visaoDorsalPes3" >
				<img src="img/Dorsal-Impressãoplantar3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoDorsalPes3">
				<%} %>
				
				
				<%
				if(postural.isVisaoDorsalPes5()){%>
				<input class="form-check-input" type="radio" name="visaoDorsalPes" value="visaoDorsalPes5" id="visaoDorsalPes5"  checked>
				<img src="img/Dorsal-Impressãoplantar5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalPes5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoDorsalPes" value="visaoDorsalPes5" id="visaoDorsalPes5" >
				<img src="img/Dorsal-Impressãoplantar5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoDorsalPes5">
				<%} %>
				
			  </div>
			  
			</div>	
			
			<center><label class="mt-5" >Visão Lateral</label></center>  
      		
		
			<div class="row">
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6 ">
			  	<label class="col-12">Pescoço/Peitoral</label>
			  	
			  	<%
				if(postural.isVisaoLateralPescocoPeitora1()){%>
				<input class="form-check-input" type="radio" name="visaoLateralPescoco" value="visaoLateralPescoco1" id="visaoLateralPescoco1"  checked>
				<img src="img/LateralPescoço1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralPescoco1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralPescoco" value="visaoLateralPescoco1" id="visaoLateralPescoco1" >
				<img src="img/LateralPescoço1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralPescoco1">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralPescocoPeitora3()){%>
				<input class="form-check-input" type="radio" name="visaoLateralPescoco" value="visaoLateralPescoco3" id="visaoLateralPescoco3"  checked>
				<img src="img/LateralPescoço3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralPescoco3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralPescoco" value="visaoLateralPescoco3" id="visaoLateralPescoco3" >
				<img src="img/LateralPescoço3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralPescoco3">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralPescocoPeitora5()){%>
				<input class="form-check-input" type="radio" name="visaoLateralPescoco" value="visaoLateralPescoco5" id="visaoLateralPescoco5"  checked>
				<img src="img/LateralPescoço5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralPescoco5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralPescoco" value="visaoLateralPescoco5" id="visaoLateralPescoco5" >
				<img src="img/LateralPescoço5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralPescoco5">
				<%} %>				
				
				
			  </div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  	<label class="col-12">Ombros</label>
			  	
			  	<%
				if(postural.isVisaoLateralOmbros1()){%>
				<input class="form-check-input" type="radio" name="visaoLateralOmbros" value="visaoLateralOmbros1" id="visaoLateralOmbros1"  checked>
				<img src="img/LateralOmbros1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralOmbros1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralOmbros" value="visaoLateralOmbros1" id="visaoLateralOmbros1" >
				<img src="img/LateralOmbros1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralOmbros1">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralOmbros3()){%>
				<input class="form-check-input" type="radio" name="visaoLateralOmbros" value="visaoLateralOmbros3" id="visaoLateralOmbros3"  checked>
				<img src="img/LateralOmbros3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralOmbros3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralOmbros" value="visaoLateralOmbros3" id="visaoLateralOmbros3" >
				<img src="img/LateralOmbros3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralOmbros3">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralOmbros5()){%>
				<input class="form-check-input" type="radio" name="visaoLateralOmbros" value="visaoLateralOmbros5" id="visaoLateralOmbros5"  checked>
				<img src="img/LateralOmbros5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralOmbros5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralOmbros" value="visaoLateralOmbros5" id="visaoLateralOmbros5" >
				<img src="img/LateralOmbros5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralOmbros5">
				<%} %>
				
			  </div>
			  <div class="w-100"></div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			 	 <label class="col-12">Torax</label>
			 	 
			 	<%
				if(postural.isVisaoLateralTorax1()){%>
				<input class="form-check-input" type="radio" name="visaoLateralTorax" value="visaoLateralTorax1" id="visaoLateralTorax1"  checked>
				<img src="img/LateralTorax1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralTorax1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralTorax" value="visaoLateralTorax1" id="visaoLateralTorax1" >
				<img src="img/LateralTorax1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralTorax1">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralTorax3()){%>
				<input class="form-check-input" type="radio" name="visaoLateralTorax" value="visaoLateralTorax3" id="visaoLateralTorax3"  checked>
				<img src="img/LateralTorax3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralTorax3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralTorax" value="visaoLateralTorax3" id="visaoLateralTorax3" >
				<img src="img/LateralTorax3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralTorax3">
				<%} %>				
				
				
				<%
				if(postural.isVisaoLateralTorax5()){%>
				<input class="form-check-input" type="radio" name="visaoLateralTorax" value="visaoLateralTorax5" id="visaoLateralTorax5"  checked>
				<img src="img/LateralTorax5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralTorax5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralTorax" value="visaoLateralTorax5" id="visaoLateralTorax5" >
				<img src="img/LateralTorax5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralTorax5">
				<%} %>
				
			  </div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  	<label class="col-12">Coluna Torácica</label>
			  	
			  	<%
				if(postural.isVisaoLateralColunaToracicaCifose1()){%>
				<input class="form-check-input" type="radio" name="visaoLateralColuna" value="visaoLateralColuna1" id="visaoLateralColuna1"  checked>
				<img src="img/LateralColunatoracica1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralColuna1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralColuna" value="visaoLateralColuna1" id="visaoLateralColuna1" >
				<img src="img/LateralColunatoracica1.png" alt="..." class="img-thumbnail mr-3 col-3"  id="imgvisaoLateralColuna1">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralColunaToracicaCifose3()){%>
				<input class="form-check-input" type="radio" name="visaoLateralColuna" value="visaoLateralColuna3" id="visaoLateralColuna3"  checked>
				<img src="img/LateralColunatoracica3Verde.png" alt="..." class="img-thumbnail mr-3 col-3"  id="imgvisaoLateralColuna3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralColuna" value="visaoLateralColuna3" id="visaoLateralColuna3" >
				<img src="img/LateralColunatoracica3.png" alt="..." class="img-thumbnail mr-3 col-3"  id="imgvisaoLateralColuna3">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralColunaToracicaCifose5()){%>
				<input class="form-check-input" type="radio" name="visaoLateralColuna" value="visaoLateralColuna5" id="visaoLateralColuna5"  checked>
				<img src="img/LateralColunatoracica5Verde.png" alt="..." class="img-thumbnail col-3"  id="imgvisaoLateralColuna5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralColuna" value="visaoLateralColuna5" id="visaoLateralColuna5" >
				<img src="img/LateralColunatoracica5.png" alt="..." class="img-thumbnail col-3"  id="imgvisaoLateralColuna5">
				<%} %>
				
			  </div>
			  
			  <div class="w-100"></div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  	<label class="col-12">Coluna Lombossacra</label>
			  	
			  	<%
				if(postural.isVisaoLateralColunaLombossacraLordose1()){%>
				<input class="form-check-input" type="radio" name="visaoLateralLombossacral" value="visaoLateralLombossacral1" id="visaoLateralLombossacral1"  checked>
				<img src="img/LateralColunalombossacra1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralLombossacral1" >
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralLombossacral" value="visaoLateralLombossacral1" id="visaoLateralLombossacral1" >
				<img src="img/LateralColunalombossacra1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralLombossacral1">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralColunaLombossacraLordose3()){%>
				<input class="form-check-input" type="radio" name="visaoLateralLombossacral" value="visaoLateralLombossacral3" id="visaoLateralLombossacral3"  checked>
				<img src="img/LateralColunalombossacra3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralLombossacral3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralLombossacral" value="visaoLateralLombossacral3" id="visaoLateralLombossacral3" >
				<img src="img/LateralColunalombossacra3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralLombossacral3">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralColunaLombossacraLordose5()){%>
				<input class="form-check-input" type="radio" name="visaoLateralLombossacral" value="visaoLateralLombossacral5" id="visaoLateralLombossacral5"  checked>
				<img src="img/LateralColunalombossacra5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralLombossacral5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralLombossacral" value="visaoLateralLombossacral5" id="visaoLateralLombossacral5" >
				<img src="img/LateralColunalombossacra5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralLombossacral5">
				<%} %>
				
			  </div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  	<label class="col-12">Tronco</label>
			  	
			  	<%
				if(postural.isVisaoLateralTronco1()){%>
				<input class="form-check-input" type="radio" name="visaoLateralTronco" value="visaoLateralTronco1" id="visaoLateralTronco1"  checked>
				<img src="img/LateralTronco1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralTronco1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralTronco" value="visaoLateralTronco1" id="visaoLateralTronco1" >
				<img src="img/LateralTronco1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralTronco1">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralTronco3()){%>
				<input class="form-check-input" type="radio" name="visaoLateralTronco" value="visaoLateralTronco3" id="visaoLateralTronco3"  checked>
				<img src="img/LateralTronco3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralTronco3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralTronco" value="visaoLateralTronco3" id="visaoLateralTronco3" >
				<img src="img/LateralTronco3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralTronco3">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralTronco5()){%>
				<input class="form-check-input" type="radio" name="visaoLateralTronco" value="visaoLateralTronco5" id="visaoLateralTronco5"  checked>
				<img src="img/LateralTronco5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralTronco5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralTronco" value="visaoLateralTronco5" id="visaoLateralTronco5" >
				<img src="img/LateralTronco5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralTronco5">
				<%} %>
				
			  </div>
			  
			  <div class="w-100"></div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  <label class="col-12">Abdomem</label>
			  
			  	<%
				if(postural.isVisaoLateralAbdomen1()){%>
				<input class="form-check-input" type="radio" name="visaoLateralAbdomen" value="visaoLateralAbdomen1" id="visaoLateralAbdomen1"  checked>
				<img src="img/LateralAbdomen1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralAbdomen1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralAbdomen" value="visaoLateralAbdomen1" id="visaoLateralAbdomen1" >
				<img src="img/LateralAbdomen1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralAbdomen1">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralAbdomen3()){%>
				<input class="form-check-input" type="radio" name="visaoLateralAbdomen" value="visaoLateralAbdomen3" id="visaoLateralAbdomen3"  checked>
				<img src="img/LateralAbdomen3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralAbdomen3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralAbdomen" value="visaoLateralAbdomen3" id="visaoLateralAbdomen3" >
				<img src="img/LateralAbdomen3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralAbdomen3">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralAbdomen5()){%>
				<input class="form-check-input" type="radio" name="visaoLateralAbdomen" value="visaoLateralAbdomen5" id="visaoLateralAbdomen5"  checked>
				<img src="img/LateralAbdomen5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralAbdomen5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralAbdomen" value="visaoLateralAbdomen5" id="visaoLateralAbdomen5" >
				<img src="img/LateralAbdomen5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralAbdomen5">
				<%} %>
				
				
			  </div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6">
			  <label class="col-12">Joelhos</label>
			  
			  	<%
				if(postural.isVisaoLateralJoelhos1()){%>
				<input class="form-check-input" type="radio" name="visaoLateralJoelhos" value="visaoLateralJoelhos1" id="visaoLateralJoelhos1"  checked>
				<img src="img/LateralJoelhos1Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralJoelhos1">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralJoelhos" value="visaoLateralJoelhos1" id="visaoLateralJoelhos1" >
				<img src="img/LateralJoelhos1.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralJoelhos1">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralJoelhos3()){%>
				<input class="form-check-input" type="radio" name="visaoLateralJoelhos" value="visaoLateralJoelhos3" id="visaoLateralJoelhos3"  checked>
				<img src="img/LateralJoelhos3Verde.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralJoelhos3">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralJoelhos" value="visaoLateralJoelhos3" id="visaoLateralJoelhos3" >
				<img src="img/LateralJoelhos3.png" alt="..." class="img-thumbnail mr-3 col-3" id="imgvisaoLateralJoelhos3">
				<%} %>
				
				
				<%
				if(postural.isVisaoLateralJoelhos5()){%>
				<input class="form-check-input" type="radio" name="visaoLateralJoelhos" value="visaoLateralJoelhos5" id="visaoLateralJoelhos5"  checked>
				<img src="img/LateralJoelhos5Verde.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralJoelhos5">
				<%}else {%>
				<input class="form-check-input" type="radio" name="visaoLateralJoelhos" value="visaoLateralJoelhos5" id="visaoLateralJoelhos5" >
				<img src="img/LateralJoelhos5.png" alt="..." class="img-thumbnail col-3" id="imgvisaoLateralJoelhos5">
				<%} %>
				
			  </div>
			  <div class="w-100"></div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6 mt-2">
						<label class="col-12 mt-1">Região da cabeça e pescoço</label>
						<input type="text" class="form-control col-12" id="valorRegiaoCabecaPescoco" name="valorRegiaoCabecaPescoco" value="${postural.regiaoCabecaPescoco}" style="text-align:center;"    readonly>
						<label class="col-12">Região do abdomem e do quadril</label>
						<input type="text" class="form-control col-12" id="valorRegiaoAbdomemQuadril" name="valorRegiaoAbdomemQuadril" value="${postural.regiaoAbdomenQuadril}"  style="text-align:center;" readonly>
						<label class="col-12">Indice de correção postural</label>
						<input type="text" class="form-control col-12 mb-1" id="valorIndiceCorrecaoPostural" name="valorIndiceCorrecaoPostural" value="${postural.indiceCorrecaoPostural}" style="text-align:center;" readonly>
			 </div>
			 
			 <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6 mt-2">
						<label class="col-12 mt-1">Região da coluna dorsal e lombar</label>
						<input type="text" class="form-control col-12" id="valorRegiaoColunaLombar" name="valorRegiaoColunaLombar"  value="${postural.regiaoColunaDorsalLombar}" style="text-align:center;" readonly>
						<label class="col-12">Região de membros inferiores</label>
						<input type="text" class="form-control col-12" id="valorRegiaoMembrosInferiores" name="valorRegiaoMembrosInferiores"  value="${postural.regiaoMembrosInferioers}" style="text-align:center;" readonly>
						<label class="col-12">Resultado</label>
						<input type="text" class="form-control col-12 mb-1" id="resultado" name="resultado"  value="${postural.classificacao}" style="text-align:center;" readonly>
			 </div>
			 <div class="w-100"></div>
			  <div class="border border-dark  mx-auto text-center rounded col-12 col-lg-6 mt-2">
						<label class="col-12 mt-1">Observações do avaliador</label>
						<textarea class="form-control mb-2" id="txtObservacoesAvaliador" name="txtObservacoesAvaliador" rows="2" style="text-align:center;"><c:out value="${postural.observacoes}" ></c:out></textarea>
			 </div>
			  
			  
			</div>
			
			
			
			<div class="form-group input-group-append mt-2" >
				    <button type="submit" class="btn btn-primary " id="botaoSalvar" >Salvar</button>
				</div>
				
			</form>
              </section>
            </div>
          </div>
        </div>

      </div>
    </div>
  
  <jsp:include page="javascript.jsp"></jsp:include>
</body>
<script>
//Este bloco de código altera as imagens que foram selecionadas pelo usuario avaliador
var resultadoVisaoDorsalCabeca = 0;
var resultadoVisaoDorsalOmbros = 0;
var resultadoVisaoDorsalColuna = 0;
var resultadoVisaoDorsalQuadril = 0;
var resultadoVisaoDorsalJoelhos = 0;
var resultadoVisaoDorsalCalcanhares = 0;
var resultadoVisaoDorsalPes = 0;
var resultadoVisaoLateralPescoco = 0;
var resultadoVisaoLateralOmbros = 0;
var resultadoVisaoLateralTorax = 0;
var resultadoVisaoLateralColuna = 0;
var resultadoVisaoLateralLomboSacral = 0;
var resultadoVisaoLateralTronco = 0;
var resultadoVisaoLateralAbdomen = 0;
var resultadoVisaoLateralJoelhos = 0;

function calculaTudo(){
	var valorVisaoDorsalCabeca = document.querySelector('input[name=visaoDorsalCabecaPescoco]:checked').value;
	if(valorVisaoDorsalCabeca == 'visaoDorsalCabecaPescoco1'){
		resultadoVisaoDorsalCabeca = 1;
	}else if(valorVisaoDorsalCabeca == 'visaoDorsalCabecaPescoco3'){
		resultadoVisaoDorsalCabeca = 3;
	}else{
		resultadoVisaoDorsalCabeca = 5;
	}
	
	var valorVisaoDorsalOmbros = document.querySelector('input[name=visaoDorsalOmbro]:checked').value;
	if(valorVisaoDorsalOmbros == 'visaoDorsalOmbro1'){
		resultadoVisaoDorsalOmbros = 1;
	}else if(valorVisaoDorsalOmbros == 'visaoDorsalOmbro3'){
		resultadoVisaoDorsalOmbros = 3;
	}else{
		resultadoVisaoDorsalOmbros = 5;
	}
	
	var valorVisaoDorsalColuna = document.querySelector('input[name=visaoDorsalColuna]:checked').value;
	if(valorVisaoDorsalColuna == 'visaoDorsalColuna1'){
		resultadoVisaoDorsalColuna = 1;
	}else if(valorVisaoDorsalColuna == 'visaoDorsalColuna3'){
		resultadoVisaoDorsalColuna = 3;
	}else{
		resultadoVisaoDorsalColuna = 5;
	}
	
	var valorVisaoDorsalQuadril = document.querySelector('input[name=visaoDorsalQuadril]:checked').value;
	if(valorVisaoDorsalQuadril == 'visaoDorsalQuadril1'){
		resultadoVisaoDorsalQuadril = 1;
	}else if(valorVisaoDorsalQuadril == 'visaoDorsalQuadril3'){
		resultadoVisaoDorsalQuadril = 3;
	}else{
		resultadoVisaoDorsalQuadril = 5;
	}
	
	var valorVisaoDorsalJoelhos = document.querySelector('input[name=visaoDorsalJoelhos]:checked').value;
	if(valorVisaoDorsalJoelhos == 'visaoDorsalJoelhos1'){
		resultadoVisaoDorsalJoelhos = 1;
	}else if(valorVisaoDorsalJoelhos == 'visaoDorsalJoelhos3'){
		resultadoVisaoDorsalJoelhos = 3;
	}else{
		resultadoVisaoDorsalJoelhos = 5;
	}
	
	var valorVisaoDorsalCalcanhares = document.querySelector('input[name=visaoDorsalCalcanhares]:checked').value;
	if(valorVisaoDorsalCalcanhares == 'visaoDorsalCalcanhares1'){
		resultadoVisaoDorsalCalcanhares = 1;
	}else if(valorVisaoDorsalCalcanhares == 'visaoDorsalCalcanhares3'){
		resultadoVisaoDorsalCalcanhares = 3;
	}else{
		resultadoVisaoDorsalCalcanhares = 5;
	}
	
	var valorVisaoDorsalPes = document.querySelector('input[name=visaoDorsalPes]:checked').value;
	if(valorVisaoDorsalPes == 'visaoDorsalPes1'){
		resultadoVisaoDorsalPes = 1;
	}else if(valorVisaoDorsalPes == 'visaoDorsalPes3'){
		resultadoVisaoDorsalPes = 3;
	}else{
		resultadoVisaoDorsalPes = 5;
	}
	
	var valorVisaoLateralPescoco = document.querySelector('input[name=visaoLateralPescoco]:checked').value;
	if(valorVisaoLateralPescoco == 'visaoLateralPescoco1'){
		resultadoVisaoLateralPescoco = 1;
	}else if(valorVisaoLateralPescoco == 'visaoLateralPescoco3'){
		resultadoVisaoLateralPescoco = 3;
	}else{
		resultadoVisaoLateralPescoco = 5;
	}
	
	var valorVisaoLateralOmbros = document.querySelector('input[name=visaoLateralOmbros]:checked').value;
	if(valorVisaoLateralOmbros == 'visaoLateralOmbros1'){
		resultadoVisaoLateralOmbros = 1;
	}else if(valorVisaoLateralOmbros == 'visaoLateralOmbros3'){
		resultadoVisaoLateralOmbros = 3;
	}else{
		resultadoVisaoLateralOmbros = 5;
	}
	
	var valorVisaoLateralTorax = document.querySelector('input[name=visaoLateralTorax]:checked').value;
	if(valorVisaoLateralTorax == 'visaoLateralTorax1'){
		resultadoVisaoLateralTorax = 1;
	}else if(valorVisaoLateralTorax == 'visaoLateralTorax3'){
		resultadoVisaoLateralTorax = 3;
	}else{
		resultadoVisaoLateralTorax = 5;
	}
	
	var valorVisaoLateralColuna = document.querySelector('input[name=visaoLateralColuna]:checked').value;
	if(valorVisaoLateralColuna == 'visaoLateralColuna1'){
		resultadoVisaoLateralColuna = 1;
	}else if(valorVisaoLateralColuna == 'visaoLateralColuna3'){
		resultadoVisaoLateralColuna = 3;
	}else{
		resultadoVisaoLateralColuna = 5;
	}
	
	var valorVisaoLateralLombossacral = document.querySelector('input[name=visaoLateralLombossacral]:checked').value;
	if(valorVisaoLateralLombossacral == 'visaoLateralLombossacral1'){
		resultadoVisaoLateralLomboSacral = 1;
	}else if(valorVisaoLateralLombossacral == 'visaoLateralLombossacral3'){
		resultadoVisaoLateralLomboSacral = 3;
	}else{
		resultadoVisaoLateralLomboSacral = 5;
	}
	
	var valorVisaoLateralTronco = document.querySelector('input[name=visaoLateralTronco]:checked').value;
	if(valorVisaoLateralTronco == 'visaoLateralTronco1'){
		resultadoVisaoLateralTronco = 1;
	}else if(valorVisaoLateralTronco == 'visaoLateralTronco3'){
		resultadoVisaoLateralTronco = 3;
	}else{
		resultadoVisaoLateralTronco = 5;
	}
	
	var valorVisaoLateralAbdomen = document.querySelector('input[name=visaoLateralAbdomen]:checked').value;
	if(valorVisaoLateralAbdomen == 'visaoLateralAbdomen1'){
		resultadoVisaoLateralAbdomen = 1;
	}else if(valorVisaoLateralAbdomen == 'visaoLateralAbdomen3'){
		resultadoVisaoLateralAbdomen = 3;
	}else{
		resultadoVisaoLateralAbdomen = 5;
	}
	
	var valorVisaoLateralJoelhos = document.querySelector('input[name=visaoLateralJoelhos]:checked').value;
	if(valorVisaoLateralJoelhos == 'visaoLateralJoelhos1'){
		resultadoVisaoLateralJoelhos = 1;
	}else if(valorVisaoLateralJoelhos == 'visaoLateralJoelhos3'){
		resultadoVisaoLateralJoelhos = 3;
	}else{
		resultadoVisaoLateralJoelhos = 5;
	}
	
	var resultadoIcpRegiao1 = ((resultadoVisaoDorsalCabeca + resultadoVisaoDorsalOmbros + resultadoVisaoLateralPescoco + resultadoVisaoLateralOmbros + resultadoVisaoLateralTorax)/25)*100;
	var somaIcpRegião1 = resultadoVisaoDorsalCabeca + resultadoVisaoDorsalOmbros + resultadoVisaoLateralPescoco + resultadoVisaoLateralOmbros + resultadoVisaoLateralTorax;
	
	var resultadoIcpRegiao2 = (resultadoVisaoDorsalColuna + resultadoVisaoLateralColuna + resultadoVisaoLateralLomboSacral)/15 * 100;
	var somaIcpRegião2 = resultadoVisaoDorsalColuna + resultadoVisaoLateralColuna + resultadoVisaoLateralLomboSacral;
	
	var resultadoIcpRegiao3 = (resultadoVisaoDorsalQuadril + resultadoVisaoLateralTronco + resultadoVisaoLateralAbdomen)/15 * 100;
	var somaIcpRegião3 = resultadoVisaoDorsalQuadril + resultadoVisaoLateralTronco + resultadoVisaoLateralAbdomen;
	
	var resultadoIcpRegiao4 = (resultadoVisaoDorsalJoelhos + resultadoVisaoDorsalCalcanhares + resultadoVisaoDorsalPes + resultadoVisaoLateralJoelhos)/20 * 100;
	var somaIcpRegião4 = resultadoVisaoDorsalJoelhos + resultadoVisaoDorsalCalcanhares + resultadoVisaoDorsalPes + resultadoVisaoLateralJoelhos;
	
	var somaDosPontosRegioes = somaIcpRegião1 + somaIcpRegião2 + somaIcpRegião3 + somaIcpRegião4;
	var resultadoIcpGeral = (somaDosPontosRegioes)/75 * 100;
	
	var idade = document.getElementById('idade');
	var idadeConvertida = parseInt(idade)
	
	var resultadoClassificacao = 'TESTE';
	
	if(idade.value > 17 && resultadoIcpGeral < 65){
		resultadoClassificacao = 'Necessita encaminhamento';
    }else if (idade.value > 17 && resultadoIcpGeral >= 65) {
    	resultadoClassificacao = 'Não necessita encaminhamento';
    } else if (idade.value < 18  && resultadoIcpGeral < 85) {
    	resultadoClassificacao = 'Necessita encaminhamento';
    } else if (idade.value < 18 && resultadoIcpGeral > 84) {
    	resultadoClassificacao = 'Não necessita encaminhamento';
    }
	
	//var classificacaoIcpGeral = 
	
	 document.getElementById('valorRegiaoCabecaPescoco').value = Math.round(resultadoIcpRegiao1).toFixed(2);
	 document.getElementById('valorRegiaoAbdomemQuadril').value = Math.round(resultadoIcpRegiao3).toFixed(2);
	 document.getElementById('valorIndiceCorrecaoPostural').value = Math.round(resultadoIcpGeral).toFixed(2);
	 document.getElementById('valorRegiaoColunaLombar').value = Math.round(resultadoIcpRegiao2).toFixed(2);
	 document.getElementById('valorRegiaoMembrosInferiores').value = Math.round(resultadoIcpRegiao4).toFixed(2);
	 document.getElementById('resultado').value = resultadoClassificacao;
	 
}
document.getElementById("visaoDorsalCabecaPescoco1").onclick = function () {
	document.querySelector("#imgdorsalCabecaPescoco1").src = 'img/Dorsal-Cabeça1Verde.png';
	document.querySelector("#imgdorsalCabecaPescoco3").src = 'img/Dorsal-Cabeça3.png';
	document.querySelector("#imgdorsalCabecaPescoco5").src = 'img/Dorsal-Cabeça5.png';
	
	
	calculaTudo();	
	

};

document.getElementById("visaoDorsalCabecaPescoco3").onclick = function () {
	document.querySelector("#imgdorsalCabecaPescoco1").src = 'img/Dorsal-Cabeça1.png';
	document.querySelector("#imgdorsalCabecaPescoco3").src = 'img/Dorsal-Cabeça3Verde.png';
	document.querySelector("#imgdorsalCabecaPescoco5").src = 'img/Dorsal-Cabeça5.png';
	
	calculaTudo();
	
	
};

document.getElementById("visaoDorsalCabecaPescoco5").onclick = function () {
	document.querySelector("#imgdorsalCabecaPescoco1").src = 'img/Dorsal-Cabeça1.png';
	document.querySelector("#imgdorsalCabecaPescoco3").src = 'img/Dorsal-Cabeça3.png';
	document.querySelector("#imgdorsalCabecaPescoco5").src = 'img/Dorsal-Cabeça5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalOmbro1").onclick = function () {
	document.querySelector("#imgvisaoDorsalOmbro1").src = 'img/Dorsal-Ombro1Verde.png';
	document.querySelector("#imgvisaoDorsalOmbro3").src = 'img/Dorsal-Ombro3.png';
	document.querySelector("#imgvisaoDorsalOmbro5").src = 'img/Dorsal-Ombro5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalOmbro3").onclick = function () {
	document.querySelector("#imgvisaoDorsalOmbro1").src = 'img/Dorsal-Ombro1.png';
	document.querySelector("#imgvisaoDorsalOmbro3").src = 'img/Dorsal-Ombro3Verde.png';
	document.querySelector("#imgvisaoDorsalOmbro5").src = 'img/Dorsal-Ombro5.png';
	
	calculaTudo();
};
document.getElementById("visaoDorsalOmbro5").onclick = function () {
	document.querySelector("#imgvisaoDorsalOmbro1").src = 'img/Dorsal-Ombro1.png';
	document.querySelector("#imgvisaoDorsalOmbro3").src = 'img/Dorsal-Ombro3.png';
	document.querySelector("#imgvisaoDorsalOmbro5").src = 'img/Dorsal-Ombro5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalColuna1").onclick = function () {
	document.querySelector("#imgvisaoDorsalColuna1").src = 'img/Dorsal-Coluna1Verde.png';
	document.querySelector("#imgvisaoDorsalColuna3").src = 'img/Dorsal-Coluna3.png';
	document.querySelector("#imgvisaoDorsalColuna5").src = 'img/Dorsal-Coluna5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalColuna3").onclick = function () {
	document.querySelector("#imgvisaoDorsalColuna1").src = 'img/Dorsal-Coluna1.png';
	document.querySelector("#imgvisaoDorsalColuna3").src = 'img/Dorsal-Coluna3Verde.png';
	document.querySelector("#imgvisaoDorsalColuna5").src = 'img/Dorsal-Coluna5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalColuna5").onclick = function () {
	document.querySelector("#imgvisaoDorsalColuna1").src = 'img/Dorsal-Coluna1.png';
	document.querySelector("#imgvisaoDorsalColuna3").src = 'img/Dorsal-Coluna3.png';
	document.querySelector("#imgvisaoDorsalColuna5").src = 'img/Dorsal-Coluna5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalQuadril1").onclick = function () {
	document.querySelector("#imgvisaoDorsalQuadril1").src = 'img/Dorsal-Quadril1Verde.png';
	document.querySelector("#imgvisaoDorsalQuadril3").src = 'img/Dorsal-Quadril3.png';
	document.querySelector("#imgvisaoDorsalQuadril5").src = 'img/Dorsal-Quadril5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalQuadril3").onclick = function () {
	document.querySelector("#imgvisaoDorsalQuadril1").src = 'img/Dorsal-Quadril1.png';
	document.querySelector("#imgvisaoDorsalQuadril3").src = 'img/Dorsal-Quadril3Verde.png';
	document.querySelector("#imgvisaoDorsalQuadril5").src = 'img/Dorsal-Quadril5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalQuadril5").onclick = function () {
	document.querySelector("#imgvisaoDorsalQuadril1").src = 'img/Dorsal-Quadril1.png';
	document.querySelector("#imgvisaoDorsalQuadril3").src = 'img/Dorsal-Quadril3.png';
	document.querySelector("#imgvisaoDorsalQuadril5").src = 'img/Dorsal-Quadril5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalJoelhos1").onclick = function () {
	document.querySelector("#imgvisaoDorsalJoelhos1").src = 'img/Dorsal-Joelhos1Verde.png';
	document.querySelector("#imgvisaoDorsalJoelhos3").src = 'img/Dorsal-Joelhos3.png';
	document.querySelector("#imgvisaoDorsalJoelhos5").src = 'img/Dorsal-Joelhos5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalJoelhos3").onclick = function () {
	document.querySelector("#imgvisaoDorsalJoelhos1").src = 'img/Dorsal-Joelhos1.png';
	document.querySelector("#imgvisaoDorsalJoelhos3").src = 'img/Dorsal-Joelhos3Verde.png';
	document.querySelector("#imgvisaoDorsalJoelhos5").src = 'img/Dorsal-Joelhos5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalJoelhos5").onclick = function () {
	document.querySelector("#imgvisaoDorsalJoelhos1").src = 'img/Dorsal-Joelhos1.png';
	document.querySelector("#imgvisaoDorsalJoelhos3").src = 'img/Dorsal-Joelhos3.png';
	document.querySelector("#imgvisaoDorsalJoelhos5").src = 'img/Dorsal-Joelhos5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalCalcanhares1").onclick = function () {
	document.querySelector("#imgvisaoDorsalCalcanhares1").src = 'img/Dorsal-Calcanhares1Verde.png';
	document.querySelector("#imgvisaoDorsalCalcanhares3").src = 'img/Dorsal-Calcanhares3.png';
	document.querySelector("#imgvisaoDorsalCalcanhares5").src = 'img/Dorsal-Calcanhares5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalCalcanhares3").onclick = function () {
	document.querySelector("#imgvisaoDorsalCalcanhares1").src = 'img/Dorsal-Calcanhares1.png';
	document.querySelector("#imgvisaoDorsalCalcanhares3").src = 'img/Dorsal-Calcanhares3Verde.png';
	document.querySelector("#imgvisaoDorsalCalcanhares5").src = 'img/Dorsal-Calcanhares5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalCalcanhares5").onclick = function () {
	document.querySelector("#imgvisaoDorsalCalcanhares1").src = 'img/Dorsal-Calcanhares1.png';
	document.querySelector("#imgvisaoDorsalCalcanhares3").src = 'img/Dorsal-Calcanhares3.png';
	document.querySelector("#imgvisaoDorsalCalcanhares5").src = 'img/Dorsal-Calcanhares5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalPes1").onclick = function () {
	document.querySelector("#imgvisaoDorsalPes1").src = 'img/Dorsal-Impressãoplantar1Verde.png';
	document.querySelector("#imgvisaoDorsalPes3").src = 'img/Dorsal-Impressãoplantar3.png';
	document.querySelector("#imgvisaoDorsalPes5").src = 'img/Dorsal-Impressãoplantar5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalPes3").onclick = function () {
	document.querySelector("#imgvisaoDorsalPes1").src = 'img/Dorsal-Impressãoplantar1.png';
	document.querySelector("#imgvisaoDorsalPes3").src = 'img/Dorsal-Impressãoplantar3Verde.png';
	document.querySelector("#imgvisaoDorsalPes5").src = 'img/Dorsal-Impressãoplantar5.png';
	
	calculaTudo();
};

document.getElementById("visaoDorsalPes5").onclick = function () {
	document.querySelector("#imgvisaoDorsalPes1").src = 'img/Dorsal-Impressãoplantar1.png';
	document.querySelector("#imgvisaoDorsalPes3").src = 'img/Dorsal-Impressãoplantar3.png';
	document.querySelector("#imgvisaoDorsalPes5").src = 'img/Dorsal-Impressãoplantar5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralPescoco1").onclick = function () {
	document.querySelector("#imgvisaoLateralPescoco1").src = 'img/LateralPescoço1Verde.png';
	document.querySelector("#imgvisaoLateralPescoco3").src = 'img/LateralPescoço3.png';
	document.querySelector("#imgvisaoLateralPescoco5").src = 'img/LateralPescoço5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralPescoco3").onclick = function () {
	document.querySelector("#imgvisaoLateralPescoco1").src = 'img/LateralPescoço1.png';
	document.querySelector("#imgvisaoLateralPescoco3").src = 'img/LateralPescoço3Verde.png';
	document.querySelector("#imgvisaoLateralPescoco5").src = 'img/LateralPescoço5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralPescoco5").onclick = function () {
	document.querySelector("#imgvisaoLateralPescoco1").src = 'img/LateralPescoço1.png';
	document.querySelector("#imgvisaoLateralPescoco3").src = 'img/LateralPescoço3.png';
	document.querySelector("#imgvisaoLateralPescoco5").src = 'img/LateralPescoço5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralOmbros1").onclick = function () {
	document.querySelector("#imgvisaoLateralOmbros1").src = 'img/LateralOmbros1Verde.png';
	document.querySelector("#imgvisaoLateralOmbros3").src = 'img/LateralOmbros3.png';
	document.querySelector("#imgvisaoLateralOmbros5").src = 'img/LateralOmbros5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralOmbros3").onclick = function () {
	document.querySelector("#imgvisaoLateralOmbros1").src = 'img/LateralOmbros1.png';
	document.querySelector("#imgvisaoLateralOmbros3").src = 'img/LateralOmbros3Verde.png';
	document.querySelector("#imgvisaoLateralOmbros5").src = 'img/LateralOmbros5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralOmbros5").onclick = function () {
	document.querySelector("#imgvisaoLateralOmbros1").src = 'img/LateralOmbros1.png';
	document.querySelector("#imgvisaoLateralOmbros3").src = 'img/LateralOmbros3.png';
	document.querySelector("#imgvisaoLateralOmbros5").src = 'img/LateralOmbros5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralTorax1").onclick = function () {
	document.querySelector("#imgvisaoLateralTorax1").src = 'img/LateralTorax1Verde.png';
	document.querySelector("#imgvisaoLateralTorax3").src = 'img/LateralTorax3.png';
	document.querySelector("#imgvisaoLateralTorax5").src = 'img/LateralTorax5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralTorax3").onclick = function () {
	document.querySelector("#imgvisaoLateralTorax1").src = 'img/LateralTorax1.png';
	document.querySelector("#imgvisaoLateralTorax3").src = 'img/LateralTorax3Verde.png';
	document.querySelector("#imgvisaoLateralTorax5").src = 'img/LateralTorax5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralTorax5").onclick = function () {
	document.querySelector("#imgvisaoLateralTorax1").src = 'img/LateralTorax1.png';
	document.querySelector("#imgvisaoLateralTorax3").src = 'img/LateralTorax3.png';
	document.querySelector("#imgvisaoLateralTorax5").src = 'img/LateralTorax5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralColuna1").onclick = function () {
	document.querySelector("#imgvisaoLateralColuna1").src = 'img/LateralColunatoracica1Verde.png';
	document.querySelector("#imgvisaoLateralColuna3").src = 'img/LateralColunatoracica3.png';
	document.querySelector("#imgvisaoLateralColuna5").src = 'img/LateralColunatoracica5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralColuna3").onclick = function () {
	document.querySelector("#imgvisaoLateralColuna1").src = 'img/LateralColunatoracica1.png';
	document.querySelector("#imgvisaoLateralColuna3").src = 'img/LateralColunatoracica3Verde.png';
	document.querySelector("#imgvisaoLateralColuna5").src = 'img/LateralColunatoracica5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralColuna5").onclick = function () {
	document.querySelector("#imgvisaoLateralColuna1").src = 'img/LateralColunatoracica1.png';
	document.querySelector("#imgvisaoLateralColuna3").src = 'img/LateralColunatoracica3.png';
	document.querySelector("#imgvisaoLateralColuna5").src = 'img/LateralColunatoracica5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralLombossacral1").onclick = function () {
	document.querySelector("#imgvisaoLateralLombossacral1").src = 'img/LateralColunalombossacra1Verde.png';
	document.querySelector("#imgvisaoLateralLombossacral3").src = 'img/LateralColunalombossacra3.png';
	document.querySelector("#imgvisaoLateralLombossacral5").src = 'img/LateralColunalombossacra5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralLombossacral3").onclick = function () {
	document.querySelector("#imgvisaoLateralLombossacral1").src = 'img/LateralColunalombossacra1.png';
	document.querySelector("#imgvisaoLateralLombossacral3").src = 'img/LateralColunalombossacra3Verde.png';
	document.querySelector("#imgvisaoLateralLombossacral5").src = 'img/LateralColunalombossacra5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralLombossacral5").onclick = function () {
	document.querySelector("#imgvisaoLateralLombossacral1").src = 'img/LateralColunalombossacra1.png';
	document.querySelector("#imgvisaoLateralLombossacral3").src = 'img/LateralColunalombossacra3.png';
	document.querySelector("#imgvisaoLateralLombossacral5").src = 'img/LateralColunalombossacra5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralTronco1").onclick = function () {
	document.querySelector("#imgvisaoLateralTronco1").src = 'img/LateralTronco1Verde.png';
	document.querySelector("#imgvisaoLateralTronco3").src = 'img/LateralTronco3.png';
	document.querySelector("#imgvisaoLateralTronco5").src = 'img/LateralTronco5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralTronco3").onclick = function () {
	document.querySelector("#imgvisaoLateralTronco1").src = 'img/LateralTronco1.png';
	document.querySelector("#imgvisaoLateralTronco3").src = 'img/LateralTronco3Verde.png';
	document.querySelector("#imgvisaoLateralTronco5").src = 'img/LateralTronco5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralTronco5").onclick = function () {
	document.querySelector("#imgvisaoLateralTronco1").src = 'img/LateralTronco1.png';
	document.querySelector("#imgvisaoLateralTronco3").src = 'img/LateralTronco3.png';
	document.querySelector("#imgvisaoLateralTronco5").src = 'img/LateralTronco5Verde.png';
	
	calculaTudo();
};


document.getElementById("visaoLateralAbdomen1").onclick = function () {
	document.querySelector("#imgvisaoLateralAbdomen1").src = 'img/LateralAbdomen1Verde.png';
	document.querySelector("#imgvisaoLateralAbdomen3").src = 'img/LateralAbdomen3.png';
	document.querySelector("#imgvisaoLateralAbdomen5").src = 'img/LateralAbdomen5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralAbdomen3").onclick = function () {
	document.querySelector("#imgvisaoLateralAbdomen1").src = 'img/LateralAbdomen1.png';
	document.querySelector("#imgvisaoLateralAbdomen3").src = 'img/LateralAbdomen3Verde.png';
	document.querySelector("#imgvisaoLateralAbdomen5").src = 'img/LateralAbdomen5.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralAbdomen5").onclick = function () {
	document.querySelector("#imgvisaoLateralAbdomen1").src = 'img/LateralAbdomen1.png';
	document.querySelector("#imgvisaoLateralAbdomen3").src = 'img/LateralAbdomen3.png';
	document.querySelector("#imgvisaoLateralAbdomen5").src = 'img/LateralAbdomen5Verde.png';
	
	calculaTudo();
};

document.getElementById("visaoLateralJoelhos1").onclick = function () {
	document.querySelector("#imgvisaoLateralJoelhos1").src = 'img/LateralJoelhos1Verde.png';
	document.querySelector("#imgvisaoLateralJoelhos3").src = 'img/LateralJoelhos3.png';
	document.querySelector("#imgvisaoLateralJoelhos5").src = 'img/LateralJoelhos5.png';
	
	calculaTudo();
};
document.getElementById("visaoLateralJoelhos3").onclick = function () {
	document.querySelector("#imgvisaoLateralJoelhos1").src = 'img/LateralJoelhos1.png';
	document.querySelector("#imgvisaoLateralJoelhos3").src = 'img/LateralJoelhos3Verde.png';
	document.querySelector("#imgvisaoLateralJoelhos5").src = 'img/LateralJoelhos5.png';
	
	calculaTudo();
};
document.getElementById("visaoLateralJoelhos5").onclick = function () {
	document.querySelector("#imgvisaoLateralJoelhos1").src = 'img/LateralJoelhos1.png';
	document.querySelector("#imgvisaoLateralJoelhos3").src = 'img/LateralJoelhos3.png';
	document.querySelector("#imgvisaoLateralJoelhos5").src = 'img/LateralJoelhos5Verde.png';
	
	calculaTudo();
};



</script>
</html>