<%@page import="model.ModelAvaliacao"%>
<%@page import="model.ModelTMB"%>
<%@page import="dao.DAOTMB"%>
<%@page import="javax.naming.Context"%>
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
                <p class="text-center h4">Taxa Metabólica Basal</p>
                
                <form  action="ServletTMB" method="post">
                <input type="hidden"  id="idade" name="idade" value ="${avaliacao.idadeCliente}">
                <input type="hidden"  id="codAvaliacao" name="codAvaliacao" value ="${avaliacao.codAvaliacao}">
                <input type="hidden"  id="sexo" name="sexo" value ="${cliente.sexo}">
                <input type="hidden"  id="peso" name="peso" value ="${medidas.peso}">
                <input type="hidden"  id="altura" name="altura" value ="${medidas.altura}">
			
		
			<div class="form-row   col-12 border border-dark border-left-0 border-right-0   shadow-lg rounded mt-1" id="parq1">
				
				<div class="form-group col-7 mx-auto text-center mt-2">
				<%    
				   ModelAvaliacao avaliacao = new ModelAvaliacao();
				   avaliacao = (ModelAvaliacao) request.getAttribute("avaliacao");
				   if(avaliacao.getIdadeCliente()<=17){%>
				
					<select id="protocolotmb"
						name="protocolotmb" class="form-control" onchange="if (this.selectedIndex) calculoDeTmb();">
						<option><c:out value="${tmb.protocoloTmb}"></c:out></option>
						<option>"Harris & Benedict (1919)"</option>
					</select>
					<%}else if (avaliacao.getIdadeCliente()<=60){%>
					<select id="protocolotmb"
						name="protocolotmb" class="form-control" onchange="if (this.selectedIndex) calculoDeTmb();">
						<option><c:out value="${tmb.protocoloTmb}"></c:out></option>
						<option>Harris & Benedict (1919)</option>
						<option>Schofield (1985)</option>
						<option>FAO/WHO/UNU (1995)</option>
						<option>Henry & Rees (1991)</option>
					</select>
					<%}else {%>
					<select id="protocolotmb"
						name="protocolotmb" class="form-control" onchange="if (this.selectedIndex) calculoDeTmb();">
						<option><c:out value="${tmb.protocoloTmb}"></c:out></option>
						<option>Harris & Benedict (1919)</option>
					</select>
					<%} %>
					<input type="text" class="form-control col-12 mt-1" id="resultadotmb" name="resultadotmb" value="${tmb.tmb}" readonly>
					
				</div>
			</div>
			
			
			<p class="text-danger small" id="aviso">*Para calculo da TMB é necessário que o peso e altura da tela de composição estejam preenchidos</p>
			<div class="form-group input-group-append mt-1">
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
  <script>

  //var protocolo = document.querySelector('#protocolotmb').value;
  function calculoDeTmb(){
	  	var protocolo = document.querySelector('#protocolotmb').value;
		var idade = document.querySelector('#idade').value;
		var idadeConv = parseFloat(idade);
		var sexo = document.querySelector('#sexo').value;
		var peso = document.querySelector('#peso').value;
		var altura = document.querySelector('#altura').value;
		var pesoConv = 0;
		var alturaConv = 0;
		
		if(peso==""){
			pesoConv = 0;
		}else{
			pesoConv = parseFloat(peso);
		}
		
		if(altura==""){
			alturaConv = 0;
		}else{
			alturaConv = parseFloat(altura);
		}
		
		var tmb = 0;
		
		if (sexo=="F") {
	        if (protocolo == "Selecione") {
	            request.querySelector('#resultadotmb').value = 0;
	        } else if (protocolo == "Harris & Benedict (1919)") {
	        	alert('Entrou no Harris')
	        	if(pesoConv>0 && alturaConv>0){
	        		tmb = 655.0955 + (9.5634 * pesoConv) + (1.8496 * (alturaConv * 100)) - (4.6756 * idadeConv);
	                document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	        	}else{
	        		document.querySelector('#resultadotmb').value = 0;
	        	}
	        }else if (protocolo == "Schofield (1985)") {
	        	alert('Entrou no schofield')
	        	if(pesoConv>0){
	        		if (idadeConv>=18 && idadeConv<=30) {
	                    tmb = ((0.062 * pesoConv + 2.036) * 239);
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                 }else if (idadeConv>31 && idadeConv <=60) {
	                    tmb = ((0.034 * pesoConv + 3.538) * 239);
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                 }
	        	}else{
	        		document.querySelector('#resultadotmb').value = 0;
	        	}
	        }else if (protocolo == "FAO/WHO/UNU (1995)") {
	        	alert('Entrou no FAO')
	        	if(pesoConv>0){
	        		if (idadeConv>=18 && idadeConv<=30 ) {
	                    tmb = (14.7 * pesoConv) + 496;
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                }else if (idadeConv>30 && idadeConv<=60) {
	                    tmb = (8.7 * pesoConv) + 829;
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                }
	        	}else{
	        		document.querySelector('#resultadotmb').value = 0;
	        	}
	            
	        }else if (protocolo == "Henry & Rees (1991)") {
	        	alert('Entrou no henry')
	        	if(pesoConv>0){
	        		if (idadeConv>=18 && idadeConv<=30) {
	                    tmb = ((0.048 * pesoConv) + 2.562)* 239;
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                }else if (idadeConv>30 && idadeConv<=60) {
	                    tmb = ((0.048 * pesoConv) + 2.448)* 239;
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                }
	        	}else{
	        		document.querySelector('#resultadotmb').value = 0;
	        	}
	        }
	     }else{
	    	 if (protocolo == "Selecione") {
		            request.querySelector('#resultadotmb').value = 0;
		    }else if (protocolo == "Harris & Benedict (1919)") {
	        	if(pesoConv>0 && alturaConv>0){
	        		tmb = 66.47 + (13.75 * pesoConv) + (5 * (alturaConv * 100)) - (6.76 * idadeConv);
	                document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	        	}else{
	        		document.querySelector('#resultadotmb').value = 0;
	        	}
		    }else if (protocolo == "Schofield (1985)") {
	        	if(pesoConv>0){
	        		if (idadeConv>=18 && idadeConv<=30) {
	                    tmb = ((0.063 * pesoConv + 2.896) * 239);
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                 }else if (idadeConv>31 && idadeConv <=60) {
	                    tmb = ((0.048 * pesoConv + 3.653) * 239);
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                 }
	        	}else{
	        		document.querySelector('#resultadotmb').value = 0;
	        	}
	        }else if (protocolo == "FAO/WHO/UNU (1995)") {
	        	if(pesoConv>0){
	        		if (idadeConv>=18 && idadeConv<=30 ) {
	        			tmb = 15.3 * pesoConv + 679;
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                }else if (idadeConv>30 && idadeConv<=60) {
	                	tmb = 11.6 * pesoConv + 879;
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                }
	        	}else{
	        		document.querySelector('#resultadotmb').value = 0;
	        	}
	            
	        }else if (protocolo == "Henry & Rees (1991)") {
	        	if(pesoConv>0){
	        		if (idadeConv>=18 && idadeConv<=30) {
	        			tmb = ((0.056 * pesoConv) + 2.8)* 239;
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                }else if (idadeConv>30 && idadeConv<=60) {
	                	tmb = ((0.046 * pesoConv) + 3.160)* 239;
	                    document.querySelector('#resultadotmb').value = tmb.toFixed(2);
	                }
	        	}else{
	        		document.querySelector('#resultadotmb').value = 0;
	        	}
	        }
 }
		
  }

</script>
</body>

</html>
