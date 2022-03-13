<%@page import="model.ModelCliente"%>
<%@page import="model.ModelAvaliacao"%>
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
<body onload="habilitaCampos()">

  <div class="layout layout-nav-side">
      <jsp:include page="menulateralresponsivo2.jsp"></jsp:include>
      <div class="main-container">

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-11 col-xl-9">
              <section class="py-4 py-lg-5">
              <input type="text" name="nomeCliente" class="form-control text-center mb-4 mt-0" value="${avaliacao.nomeCliente}" readonly>
                <p class="text-center h4">Cardiovascular</p>
                <hr>
                
                <form  action="ServletCardiovascular" method="post">
                <input type="hidden" name="codAvaliacao" id="codAvaliacao" value="${codAvaliacao}">
                <input type="hidden" name="idade" id="idade" value="${avaliacao.idadeCliente}">
                <input type="hidden" name="sexo" id="sexo" value="${cliente.sexo}">
                <input type="hidden" name="percGordura" id="percGordura" value="${medidas.percentualGorduraAtual}">
                <input type="hidden" name="imc" id="imc" value="${resultado.imc}">
           <div class="form-row col-12 mb-2">
           <label class="text-center col-12 mb-2">Protocolo</label>
           <div class="form-group col">
           <%
           	ModelAvaliacao avaliacao = new ModelAvaliacao();
           avaliacao = (ModelAvaliacao)request.getAttribute("avaliacao");
           ModelCliente cliente = new ModelCliente();
           cliente = (ModelCliente)request.getAttribute("cliente");
           if(avaliacao.getIdadeCliente()<6){%>
           <select class="form-control" id="protocoloCardio"  name="protocoloCardio">
           <option><c:out value="${cardiovascular.formulaUsada}"></c:out></option>
           <option>Submáximo de Banco Queens College</option>
           <option>Bicicleta ergométrica Astrand (carga em Watts) - Submáximo</option>
           <option>Bicicleta ergométrica Astrand (carga em Kg) - Submáximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Watts) - Máximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Kg) - Máximo</option>
           <option>Esteira Bruce Submáximo</option>
           <option>Esteira Bruce Máximo</option>
           <option>Esteira Lima/Vianna(Máximo sem inclinação)</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com % Gordura</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com IMC</option>
           <option>Corrida 2400m (Cooper)</option>
           <option>Corrida 3200m (Weltman)</option>
           <option>Corrida 3200 (Ribisl & Kachodorian)</option>
           <option>Corrida de 15 minutos (Balke)</option>
           <option>Andar e correr 12 minutos (Cooper)</option>
           <option>Caminhada de 1 Milha (Rockport Walking Institute) - Submáximo</option>
           </select>
           <%}else if(avaliacao.getIdadeCliente()<10 || avaliacao.getIdadeCliente()>70){ %>
           <select class="form-control" id="protocoloCardio"  name="protocoloCardio">
           <option><c:out value="${cardiovascular.formulaUsada}"></c:out></option>
           <option>Submáximo de Banco Queens College</option>
           <option>Bicicleta ergométrica Astrand (carga em Watts) - Submáximo</option>
           <option>Bicicleta ergométrica Astrand (carga em Kg) - Submáximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Watts) - Máximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Kg) - Máximo</option>
           <option>Esteira Bruce Submáximo</option>
           <option>Esteira Bruce Máximo</option>
           <option>Esteira Lima/Vianna(Máximo sem inclinação)</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com % Gordura</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com IMC</option>
           <option>Corrida 2400m (Cooper)</option>
           <option>Corrida 3200m (Weltman)</option>
           <option>Corrida 3200 (Ribisl & Kachodorian)</option>
           <option>Corrida de 15 minutos (Balke)</option>
           <option>Shuttle Run” ou “vai e vem” -(Léger et al.)</option>
           <option>Caminhada de 1 Milha (Rockport Walking Institute) - Submáximo</option>
           </select>
           <%}else if(avaliacao.getIdadeCliente()<13 || avaliacao.getIdadeCliente()>60){ %>
           <select class="form-control" id="protocoloCardio"  name="protocoloCardio">
           <option><c:out value="${cardiovascular.formulaUsada}"></c:out></option>
           <option>Submáximo de Banco Queens College</option>
           <option>Bicicleta ergométrica Astrand (carga em Watts) - Submáximo</option>
           <option>Bicicleta ergométrica Astrand (carga em Kg) - Submáximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Watts) - Máximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Kg) - Máximo</option>
           <option>Esteira Bruce Submáximo</option>
           <option>Esteira Bruce Máximo</option>
           <option>Esteira Lima/Vianna(Máximo sem inclinação)</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com % Gordura</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com IMC</option>
           <option>Corrida 3200m (Weltman)</option>
           <option>Corrida 3200 (Ribisl & Kachodorian)</option>
           <option>Andar e correr 12 minutos (Cooper)</option>
           <option>Shuttle Run” ou “vai e vem” -(Léger et al.)</option>
           <option>Caminhada de 1 Milha (Rockport Walking Institute) - Submáximo</option>
           </select>
           <%}else if(avaliacao.getIdadeCliente()<15 || avaliacao.getIdadeCliente()>50){ %>
           <select class="form-control" id="protocoloCardio"  name="protocoloCardio">
           <option><c:out value="${cardiovascular.formulaUsada}"></c:out></option>
           <option>Submáximo de Banco Queens College</option>
           <option>Bicicleta ergométrica Astrand (carga em Watts) - Submáximo</option>
           <option>Bicicleta ergométrica Astrand (carga em Kg) - Submáximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Watts) - Máximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Kg) - Máximo</option>
           <option>Esteira Bruce Submáximo</option>
           <option>Esteira Bruce Máximo</option>
           <option>Esteira Lima/Vianna(Máximo sem inclinação)</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com % Gordura</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com IMC</option>
           <option>Corrida 2400m (Cooper)</option>
           <option>Corrida 3200m (Weltman)</option>
           <option>Corrida 3200 (Ribisl & Kachodorian)</option>
           <option>Andar e correr 12 minutos (Cooper)</option>
           <option>Shuttle Run” ou “vai e vem” -(Léger et al.)</option>
           <option>Caminhada de 1 Milha (Rockport Walking Institute) - Submáximo</option>
           </select>
           <%}else if(avaliacao.getIdadeCliente()<30 || avaliacao.getIdadeCliente() > 69){ %>
           <select class="form-control" id="protocoloCardio"  name="protocoloCardio">
           <option><c:out value="${cardiovascular.formulaUsada}"></c:out></option>
           <option>Submáximo de Banco Queens College</option>
           <option>Bicicleta ergométrica Astrand (carga em Watts) - Submáximo</option>
           <option>Bicicleta ergométrica Astrand (carga em Kg) - Submáximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Watts) - Máximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Kg) - Máximo</option>
           <option>Esteira Bruce Submáximo</option>
           <option>Esteira Bruce Máximo</option>
           <option>Esteira Lima/Vianna(Máximo sem inclinação)</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com % Gordura</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com IMC</option>
           <option>Corrida 2400m (Cooper)</option>
           <option>Corrida 3200m (Weltman)</option>
           <option>Corrida 3200 (Ribisl & Kachodorian)</option>
           <option>Corrida de 15 minutos (Balke)</option>
           <option>Andar e correr 12 minutos (Cooper)</option>
           <option>Shuttle Run” ou “vai e vem” -(Léger et al.)</option>
           </select>
           <%}else {%>
           <select class="form-control" id="protocoloCardio"  name="protocoloCardio">
           <option><c:out value="${cardiovascular.formulaUsada}"></c:out></option>
           <option>Submáximo de Banco Queens College</option>
           <option>Bicicleta ergométrica Astrand (carga em Watts) - Submáximo</option>
           <option>Bicicleta ergométrica Astrand (carga em Kg) - Submáximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Watts) - Máximo</option>
           <option>Bicicleta ergométrica Balke (Carga em Kg) - Máximo</option>
           <option>Esteira Bruce Submáximo</option>
           <option>Esteira Bruce Máximo</option>
           <option>Esteira Lima/Vianna(Máximo sem inclinação)</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com % Gordura</option>
           <option>Equação de Jackson et al. (1990)- Sem exercício - com IMC</option>
           <option>Corrida 2400m (Cooper)</option>
           <option>Corrida 3200m (Weltman)</option>
           <option>Corrida 3200 (Ribisl & Kachodorian)</option>
           <option>Corrida de 15 minutos (Balke)</option>
           <option>Andar e correr 12 minutos (Cooper)</option>
           <option>Shuttle Run” ou “vai e vem” -(Léger et al.)</option>
           <option>Caminhada de 1 Milha (Rockport Walking Institute) - Submáximo</option>
           </select>
           <%}%>
           </div>
           </div>
      		<hr>
		
			<div class="form-row col-12 mb-0">
			<label class="col-12 text-center mt-0 mb-2"><strong>Tempo</strong></label>
			  <div class=" form-group col-6 border border-light bl-1  ">
			  	<label class="col">Minutos</label>
			  	<input type="number" class="form-control" value="${cardiovascular.tempoMinutos}" id="tempoMinutos" name="tempoMinutos" min="0" max="80">
				</div>
				
				<div class="form-group col-6">
					<label class="col">Segundos</label>
					<input type="number" class="form-control" value="${cardiovascular.tempoMinutos}" id="tempoSegundos" name="tempoSegundos" min="0" max="60">
					
				</div>
				<hr>
				<label class="text-center col-12 mb-2"><strong>Carga</strong></label>
				<div class=" form-group col-6 ">
			  	<label class="col ">Watts</label>
					<select id="cargaWatts"
						name="cargaWatts" class="form-control col">
						<option><c:out value="${cardiovascular.cargaWatts}"></c:out></option>
						<option>25</option>
						<option>50</option>
						<option>75</option>
						<option>100</option>
						<option>125</option>
						<option>150</option>
						<option>175</option>
					</select>
			    </div>
			    <div class=" form-group col-6 mb-2">
					<label class="col">Kg</label>
					<select id="cargaKg"
						name="cargaKg" class="form-control col">
						<option><c:out value="${cardiovascular.cargaKg}"></c:out></option>
						<option>0.5</option>
						<option>1.0</option>
						<option>1.5</option>
						<option>2.0</option>
						<option>2.5</option>
						<option>3.0</option>
						<option>3.5</option>
						<option>4.0</option>
						<option>4.5</option>
						<option>5.0</option>
						<option>5.5</option>
						<option>6.0</option>
						<option>6.5</option>
						<option>7.0</option>
						<option>7.5</option>
						<option>8.0</option>
						<option>8.5</option>
						<option>9.0</option>
						<option>9.5</option>
						<option>10</option>
					</select>
				</div>
				<hr>
			  
			  
			  <div class="form-group  col-6 mb-2">
			 	 <label class="col-12 text-center mt-1 mb-2"><strong>Distância percorrida</strong></label>
			 	 	<label class="col ">metros</label>
			 	 	<input type="number" class="form-control" value="${cardiovascular.distanciaMetros}" id="distanciaPercorrida" name="distanciaPercorrida" min="0" max="5000">
			  </div>
			  
			  
			  <div class="form-group  col-6 mb-2">
			  	<label class="col-12 text-center mt-1 mb-2"><strong>Freq cardiaca do teste</strong></label>
			  	<label class="col ">FC</label>
			  	<input type="number" class="form-control" value="${cardiovascular.fcTeste}" id="fcTeste" name="fcTeste" min="0" max="250">
			  </div>
			  <hr>
			  <div class="form-group  col-6">
			  	  <label class="col-12 text-center mt-1 mb-2"><strong>Condição atual</strong></label>
			  	  <label class="col-12  mt-1 mb-2">Condicionamento</label>
				  <select class="form-control mb2" id="condicaAtual" name="condicaAtual">
				  <option><c:out value="${cardiovascular.condicaoAtual}"></c:out></option>
				  <option>Ativo</option>
				  <option>Sedentario</option>
				  </select>
			  </div>
			  
			  <div class="form-group  col-6">
				  <label class="col-12 text-center mt-1 mb-2"><strong>Velocidade</strong></label>
				  <label class="col-12 mt-1 mb-2">Km/h</label>
				  <select class="form-control mb-2" id="velocidadeKmh" name="velocidadeKm/h">
				  <option><c:out value="${cardiovascular.velocidadeKmHora}"></c:out></option>
				  <option>2.7</option>
				  <option>4.0</option>
				  <option>5.0</option>
				  <option>5.4</option>
				  <option>6.0</option>
				  <option>6.7</option>
				  <option>7.0</option>
				  </select>
			  </div>
			  
			  <hr>
			  
			  <div class="form-group col-6">
			  	<label class="col-12 text-center mt-1 mb-2"><strong>Nível de Ativ. Fís.</strong></label>
				<select class="form-control mb-2" id="nivelAtvFisica" name="nivelAtvFisica">
				<option><c:out value="${cardiovascular.nivelAtvFisica}"></c:out></option>
				<option>0</option>
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				</select>
			  </div>
			  <div class="form-group col-6">
			  	<label class="col-12 text-center mt-1 mb-2"><strong>Inclinação Esteira</strong></label>
			  	<select class="form-control mb-2" id="inclinacaoEsteira" name="inclinacaoEsteira">
			  	<option><c:out value="${cardiovascular.inclinacaoEsteira}"></c:out></option>
			  	<option>10</option>
			  	<option>12</option>
			  	<option>14</option>
			  	<option>16</option>
			  	<option>18</option>
			  	<option>20</option>
			  	<option>22</option>
			  	<option>24</option>
			  	</select>
			  </div>
			  <hr>
			  <div class="form-group col-12">
			  <label class="col-12 text-center mt-1 mb-2"><strong>Peso</strong></label>
			  <input type="text" class= "form-control" id="peso" name="peso" value="${cardiovascular.peso}">
			  </div>
			  
			</div>	
			<hr>
			
			<p class="text-center"><strong>Resultado</strong></p>
      		
		
			<div class="form-row col-12">
			  <div class="form-group col-6">
			  	<label class="col-12  mt-1 mb-2">VO2 carga l.min-¹</label>
			  	<input type="text" class="form-control mb-2 disabled" id="vo2CargaLmin" name="vo2CargaLmin" value="${cardiovascular.vo2CargaLMin}" readonly>
			  </div>
			  
			  <div class="form-group col-6">
			  	<label class="col-12  mt-1 mb-2">VO2máx.ml.kg-¹.min-¹</label>
			  	<input type="text" class="form-control mb-2 disabled" id="vo2MaxMlMin" name="vo2MaxMlMin" value="${cardiovascular.vo2maxMlKgMin}" readonly>
			  </div>
			  
			  <div class="form-group col-6">
			  	<label class="col-12  mt-1 mb-2">VO2máx.l.min-¹</label>
			  	<input type="text" class="form-control mb-2 disabled" id="vo2MaxLMin" name="vo2MaxLMin"  value="${cardiovascular.vo2MaxLMin}" readonly>
			  </div>
			  
			  
			  
			  <div class="form-group col-6">
			  	<label class="col-12  mt-1 mb-2">VO2 predito(ml.kg-¹.min-¹)</label>
			  	<input type="text" class="form-control mb-2 disabled" id="vo2Predito" name="vo2Predito" value="${cardiovascular.vo2Predito}" readonly>
			  </div>
			  
			  <div class="form-group col-6">
			  	<label class="col-12  mt-1 mb-2">Kcal.min-1</label>
			  	<input type="text" class="form-control mb-2 disabled" id="kcalMin" name="kcalMin" value="${cardiovascular.kcalMin}" readonly>
			  </div>
			  
			  <div class="form-group col-6">
			  	<label class="col-12  mt-1 mb-2 mt-1 mb-2">Met máx.</label>
			  	<input type="text" class="form-control mb-2 disabled" id="metMax" name="metMax" value="${cardiovascular.metMax}" readonly>
			  </div>
			  
			   
			  <div class="form-group col-6">
			  	<label class="col-12  mt-1 mb-2 mt-1 mb-2">Deficit funcional (FAI)</label>
			  	<input type="text" class="form-control mb-2 disabled" id="deficitFuncional" name="deficitFuncional" value="${cardiovascular.defictFuncional}" readonly>
			  </div>
			  
			  <div class="form-group col-6">
			  	<label class="col-12  mt-1 mb-2 mt-1 mb-2">Classificação AHA</label>
			  	<input type="text" class="form-control mb-2  " id="classificacao" name="classificacao" value="${cardiovascular.classificaoAHA}" readonly>
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
  <script>
    var protocoloClicado = document.querySelector('#protocoloCardio');
    protocoloClicado.addEventListener("change",habilitaCampos);
  
  	var tempoMinutos = document.querySelector('#tempoMinutos');
  	tempoMinutos.addEventListener("change",calculaDadosCardio);
  	
	var tempoSegundos = document.querySelector('#tempoSegundos');
	tempoSegundos.addEventListener("change",calculaDadosCardio);
	
	var cargaWatts = document.querySelector('#cargaWatts');
	cargaWatts.addEventListener("change",calculaDadosCardio);
	
	var cargaKg = document.querySelector('#cargaKg');
	cargaKg.addEventListener("change",calculaDadosCardio);
	
	var distanciaPercorrida = document.querySelector('#distanciaPercorrida');
	distanciaPercorrida.addEventListener("change",calculaDadosCardio);
	
	var fcTeste = document.querySelector('#fcTeste');
	fcTeste.addEventListener("change",calculaDadosCardio);
	
	var condicaAtual = document.querySelector('#condicaAtual');
	condicaAtual.addEventListener("change",calculaDadosCardio);
	
	var velocidadeKmh = document.querySelector('#velocidadeKmh');
	velocidadeKmh.addEventListener("change",calculaDadosCardio);
	
	var nivelAtvFisica = document.querySelector('#nivelAtvFisica');
	nivelAtvFisica.addEventListener("change",calculaDadosCardio);
	
	var inclinacaoEsteira = document.querySelector('#inclinacaoEsteira');
	inclinacaoEsteira.addEventListener("change",calculaDadosCardio);
	
	var peso = document.querySelector('#peso');
	peso.addEventListener("change",calculaDadosCardio);
	
	
  	function habilitaCampos(){
  		alert("Entrou no ONBOARD")
  		var protocolo = document.querySelector('#protocoloCardio').value;
  		
  		var tempoMinutos = document.querySelector('#tempoMinutos');
  		var tempoSegundos = document.querySelector('#tempoSegundos');
  		var cargaWatts = document.querySelector('#cargaWatts');
  		var cargaKg = document.querySelector('#cargaKg');
  		var distanciaPercorrida = document.querySelector('#distanciaPercorrida');
  		var fcTeste = document.querySelector('#fcTeste');
  		var condicaAtual = document.querySelector('#condicaAtual');
  		var velocidadeKmh = document.querySelector('#velocidadeKmh');
  		var nivelAtvFisica = document.querySelector('#nivelAtvFisica');
  		var inclinacaoEsteira = document.querySelector('#inclinacaoEsteira');
  		var peso = document.querySelector('#peso');
  		
  		
  		
  		if(protocolo=='Escolher protocolo'){
  			alert("Entrou no escolher")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = true;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = true;
  		} else if(protocolo=='Submáximo de Banco Queens College'){
  			alert("Entrou no Submáximo de banco Queens")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = false;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Bicicleta ergométrica Astrand (carga em Watts) - Submáximo'){
  			alert("Entrou no Bicicleta Astrand watts")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = false;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = false;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Bicicleta ergométrica Astrand (carga em Kg) - Submáximo'){
  			alert("Entrou no Bicicleta Astrand kg")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = false;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = false;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Bicicleta ergométrica Balke (Carga em Watts) - Máximo'){
  			alert("Entrou no Bicicleta Balke watts")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = false;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Bicicleta ergométrica Balke (Carga em Kg) - Máximo'){
  			alert("Entrou no Bicicleta Balke kg")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = false;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Esteira Bruce Submáximo'){
  			alert("Entrou no Bruce submaximo")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = false;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = false;
  			peso.disabled = false;
  		}else if(protocolo=='Esteira Bruce Máximo'){
  			alert("Entrou no Bruce Máximo")
  			tempoMinutos.disabled = false;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Esteira Lima/Vianna(Máximo sem inclinação)'){
  			alert("Entrou no Estwira Lima/Viana")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = false;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Equação de Jackson et al. (1990)- Sem exercício - com % Gordura'){
  			alert("Entrou na Equação de jackson com %G")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = false;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Equação de Jackson et al. (1990)- Sem exercício - com IMC'){
  			alert("Entrou na Equação de jackson com imc")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = false;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Corrida 2400m (Cooper)' || protocolo=='Corrida 3200m (Weltman)' || protocolo=='Corrida 3200 (Ribisl & Kachodorian)'){
  			alert("Entrou na corrida 2400 cooper ou 3200 Weltman ou Ribisl")
  			tempoMinutos.disabled = false;
  			tempoSegundos.disabled = false;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Corrida de 15 minutos (Balke)' || protocolo=='Andar e correr 12 minutos (Cooper)'){
  			alert("Entrou na corrida 15 min Balke e 12 min cooper")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = false;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = true;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Shuttle Run” ou “vai e vem” -(Léger et al.)'){
  			alert("Entrou no shuttle Run")
  			tempoMinutos.disabled = true;
  			tempoSegundos.disabled = true;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = true;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = false;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}else if(protocolo=='Caminhada de 1 Milha (Rockport Walking Institute) - Submáximo'){
  			alert("Entrou na caminhada de 1 milha")
  			tempoMinutos.disabled = false;
  			tempoSegundos.disabled = false;
  			cargaWatts.disabled = true;
  			cargaKg.disabled = true;
  			distanciaPercorrida.disabled = true;
  			fcTeste.disabled = false;
  			condicaAtual.disabled = false;
  			velocidadeKmh.disabled = false;
  			nivelAtvFisica.disabled = true;
  			inclinacaoEsteira.disabled = true;
  			peso.disabled = false;
  		}
  	}
  	
  	function classificacaoAhaTesteCardioMasculino(idade , vo2){
  		var resultado = "";
        if ((idade>=20 && idade <=29 && vo2<25) || (idade>=30 && idade<=39 && vo2 <23) || (idade>=40 && idade <=49 && vo2 < 20) || (idade >=50 && idade<=59 && vo2<18) || (idade>=60 && idade <=69 && vo2<16)) {
            resultado = "Muito fraca";
        }else if ((idade>=20 && idade <=29 && vo2>=25 && vo2<=33) || (idade>=30 && idade<=39 && vo2 >=23 && vo2 <=30) || (idade>=40 && idade <=49 && vo2 >=20 && vo2 <=26) || (idade >=50 && idade<=59 && vo2>=18 && vo2<=24) || (idade>=60 && idade <=69 && vo2>=16 && vo2<=22)) {
            resultado = "Fraca";
        }else if ((idade>=20 && idade <=29 && vo2>33 && vo2<=42) || (idade>=30 && idade<=39 && vo2 >30 && vo2 <=38) || (idade>=40 && idade <=49 && vo2 >26 && vo2 <=35) || (idade >=50 && idade<=59 && vo2>24 && vo2<=33) || (idade>=60 && idade <=69 && vo2>22 && vo2<=30)) {
            resultado = "Regular";
        }else if ((idade>=20 && idade <=29 && vo2>42 && vo2<=52) || (idade>=30 && idade<=39 && vo2 >38 && vo2 <=48) || (idade>=40 && idade <=49 && vo2 >35 && vo2 <=44) || (idade >=50 && idade<=59 && vo2>33 && vo2<=42) || (idade>=60 && idade <=69 && vo2>30 && vo2<=40)) {
            resultado = "Boa";
        }else if ((idade>=20 && idade <=29 && vo2>52) || (idade>=30 && idade<=39 && vo2 >48) || (idade>=40 && idade <=49 && vo2 >44) || (idade >=50 && idade<=59 && vo2>42) || (idade>=60 && idade <=69 && vo2>40)) {
            resultado = "Excelente";
        }else {
            resultado = "Sem classificação";
        }
        return resultado;
  	}
  	
  	function classificacaoAhaTesteCardioFeminino(idade , vo2){
  		 var resultado = "";
         if ((idade>=20 && idade <=29 && vo2<24) || (idade>=30 && idade<=39 && vo2 <20) || (idade>=40 && idade <=49 && vo2 < 17) || (idade >=50 && idade<=59 && vo2<15) || (idade>=60 && idade <=69 && vo2<13)) {
             resultado = "Muito fraca";
         }else if ((idade>=20 && idade <=29 && vo2>=24 && vo2<=30) || (idade>=30 && idade<=39 && vo2 >=20 && vo2 <=27) || (idade>=40 && idade <=49 && vo2 >=17 && vo2 <=23) || (idade >=50 && idade<=59 && vo2>=15 && vo2<=20) || (idade>=60 && idade <=69 && vo2>=13 && vo2<=17)) {
             resultado = "Fraca";
         }else if ((idade>=20 && idade <=29 && vo2>30 && vo2<=37) || (idade>=30 && idade<=39 && vo2 >27 && vo2 <=33) || (idade>=40 && idade <=49 && vo2 >23 && vo2 <=30) || (idade >=50 && idade<=59 && vo2>20 && vo2<=27) || (idade>=60 && idade <=69 && vo2>17 && vo2<=23)) {
             resultado = "Regular";
         }else if ((idade>=20 && idade <=29 && vo2>37 && vo2<=48) || (idade>=30 && idade<=39 && vo2 >33 && vo2 <=44) || (idade>=40 && idade <=49 && vo2 >30 && vo2 <=41) || (idade >=50 && idade<=59 && vo2>27 && vo2<=37) || (idade>=60 && idade <=69 && vo2>23 && vo2<=34)) {
             resultado = "Boa";
         }else if ((idade>=20 && idade <=29 && vo2>48) || (idade>=30 && idade<=39 && vo2 >44) || (idade>=40 && idade <=49 && vo2 >41) || (idade >=50 && idade<=59 && vo2>37) || (idade>=60 && idade <=69 && vo2>34)) {
             resultado = "Excelente";
         }else {
             resultado = "Sem classificação";
         }
         return resultado;
  	}
  	
  	function calculaDadosCardio(){
  		var sexo = document.querySelector('#sexo');
  		var idade = document.querySelector('#idade');
  		var tempoMinutos = document.querySelector('#tempoMinutos');
  		var tempoSegundos = document.querySelector('#tempoSegundos');
  		var cargaWatts = document.querySelector('#cargaWatts');
  		var cargaKg = document.querySelector('#cargaKg');
  		var distanciaPercorrida = document.querySelector('#distanciaPercorrida');
  		var fcTeste = document.querySelector('#fcTeste');
  		var condicaAtual = document.querySelector('#condicaAtual');
  		var velocidadeKmh = document.querySelector('#velocidadeKmh');
  		var nivelAtvFisica = document.querySelector('#nivelAtvFisica');
  		var inclinacaoEsteira = document.querySelector('#inclinacaoEsteira');
  		var peso = document.querySelector('#peso'); 
  		var pesoConvertido = parseFloat(peso.value);
  		var percGordura = document.querySelector('#percGordura');
  		var percGorduraConv = parseFloat(percGordura.value)
  		var imc = document.querySelector('#imc');
  		
  		
  		
  		if (protocoloClicado.value == 'Submáximo de Banco Queens College') {
  			

            if (condicaAtual.value != "Selecionar" && fcTeste.value > 0  && pesoConvertido.value > 0) {
                //converte a frequencia cardia  para Inteiro
                var frequenciaCardiacaConvertida = parseInt(fcTeste.value);
                var vo2MaxMlKgMin = 0;
                //Formula para calcular o vo2MaxMlKgMin
                if(sexo.value == "F"){
               		  vo2MaxMlKgMin = 65.81 - (0.1847 * frequenciaCardiacaConvertida);
                }else{
                	  vo2MaxMlKgMin = 111.33 - (0.42 * frequenciaCardiacaConvertida);
                }
                //Envia o resultado de vo2MaxMlKgMin para a tela
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                var vo2MaxLMin = (vo2MaxMlKgMin * pesoConvertido) / 1000;
                //Envia o valor do vo2MaxMin para o campo de texto da tela.
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                //Formula para calcular o valor do kcalMin
                var kcalMin = vo2MaxLMin * 5;
                //envia o valor do kcalMin para o campo de texto da tela
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                // Formula para calcular a metMax
                var metMax = vo2MaxMlKgMin / 3.5;
                // Envia o valor da metMax para o campo de texto da tela
                document.querySelector('#metMax').value = metMax.toFixed(2);
                var vo2MaxPredito = 0;
                var idadeConvertida = parseInt(idade.value);
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Bicicleta ergométrica Astrand (carga em Watts) - Submáximo') {
  			alert('Entrou no astrand carga watts')
  			var cargaWattsConvertido = 0;
  			if(cargaWatts.value=="Selecionar"){
  				cargaWattsConvertido = 0;
  			}else{
  				cargaWattsConvertido = parseFloat(cargaWatts.value);
  			}
  			alert('CargaWattsConvertido: '+cargaWattsConvertido)
  			alert('peso: ' + pesoConvertido)

             if (cargaWattsConvertido > 0 && condicaAtual.value != "Selecionar" && fcTeste.value > 0  && pesoConvertido > 0) {
            	var vo2CargaLMin = (0.014 * cargaWattsConvertido) + 0.129;
            	document.querySelector('#vo2CargaLmin').value = vo2CargaLMin.toFixed(2);
            	alert('aqui')
            	var vo2MaxLMin = 0;
            	if(sexo.value == "F"){
            		 vo2MaxLMin = 126 / (fcTeste.value - 72) * vo2CargaLMin;
            	}else{
            		 vo2MaxLMin = 134 / (fcTeste.value - 61) * vo2CargaLMin;
            	}
            	document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
            
            	//converte a frequencia cardia  para Inteiro
             	 var frequenciaCardiacaConvertida = parseInt(fcTeste.value);
                var vo2MaxMlKgMin = 0;
                //Formula para calcular o vo2MaxMlKgMin
                if(sexo.value == "F"){
               		  vo2MaxMlKgMin = 65.81 - (0.1847 * frequenciaCardiacaConvertida);
                }else{
                	  vo2MaxMlKgMin = 111.33 - (0.42 * frequenciaCardiacaConvertida);
                }
                //Envia o resultado de vo2MaxMlKgMin para a tela
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                var vo2MaxLMin = (vo2MaxMlKgMin * pesoConvertido) / 1000;
                //Envia o valor do vo2MaxMin para o campo de texto da tela.
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                //Formula para calcular o valor do kcalMin
                var kcalMin = vo2MaxLMin * 5;
                //envia o valor do kcalMin para o campo de texto da tela
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                // Formula para calcular a metMax
                var metMax = vo2MaxMlKgMin / 3.5;
                // Envia o valor da metMax para o campo de texto da tela
                document.querySelector('#metMax').value = metMax.toFixed(2);
                var vo2MaxPredito = 0;
                var idadeConvertida = parseInt(idade.value);
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Bicicleta ergométrica Astrand (carga em Kg) - Submáximo') {
  			alert('Entrou no astrand carga kg') 
  			var cargaKgConvertido = 0;
  			if(cargaKg.value=="Selecionar"){
  				cargaKgConvertido = 0;
  			}else{
  				cargaKgConvertido = parseFloat(cargaKg.value);
  			}
  			alert('CargaWattsConvertido: '+cargaKgConvertido)
  			alert('peso: ' + pesoConvertido)

             if (cargaKgConvertido > 0 && condicaAtual.value != "Selecionar" && fcTeste.value > 0  && pesoConvertido > 0) {
            	 cargaWattsConvertido = (cargaKgConvertido * 1000 * 50) / 1000;
            	var vo2CargaLMin = (0.014 * cargaWattsConvertido) + 0.129;
            	document.querySelector('#vo2CargaLmin').value = vo2CargaLMin.toFixed(2);
            	alert('aqui')
            	var vo2MaxLMin = 0;
            	if(sexo.value == "F"){
            		 vo2MaxLMin = 126 / (fcTeste.value - 72) * vo2CargaLMin;
            	}else{
            		 vo2MaxLMin = 134 / (fcTeste.value - 61) * vo2CargaLMin;
            	}
            	document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
            
            	//converte a frequencia cardia  para Inteiro
             	 var frequenciaCardiacaConvertida = parseInt(fcTeste.value);
                var vo2MaxMlKgMin = 0;
                //Formula para calcular o vo2MaxMlKgMin
                if(sexo.value == "F"){
               		  vo2MaxMlKgMin = 65.81 - (0.1847 * frequenciaCardiacaConvertida);
                }else{
                	  vo2MaxMlKgMin = 111.33 - (0.42 * frequenciaCardiacaConvertida);
                }
                //Envia o resultado de vo2MaxMlKgMin para a tela
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                var vo2MaxLMin = (vo2MaxMlKgMin * pesoConvertido) / 1000;
                //Envia o valor do vo2MaxMin para o campo de texto da tela.
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                //Formula para calcular o valor do kcalMin
                var kcalMin = vo2MaxLMin * 5;
                //envia o valor do kcalMin para o campo de texto da tela
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                // Formula para calcular a metMax
                var metMax = vo2MaxMlKgMin / 3.5;
                // Envia o valor da metMax para o campo de texto da tela
                document.querySelector('#metMax').value = metMax.toFixed(2);
                var vo2MaxPredito = 0;
                var idadeConvertida = parseInt(idade.value);
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Bicicleta ergométrica Balke (Carga em Watts) - Máximo') {
  			alert('Entrou no balke carga watts')
  			var cargaWattsConvertido = 0;
  			if(cargaWatts.value=="Selecionar"){
  				cargaWattsConvertido = 0;
  			}else{
  				cargaWattsConvertido = parseFloat(cargaWatts.value);
  			}
  			alert('CargaWattsConvertido: '+cargaWattsConvertido)
  			alert('peso: ' + pesoConvertido)

             if (cargaWattsConvertido > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0) {
               
            	var vo2MaxMlKgMin = (200 + (12 * cargaWattsConvertido)) / pesoConvertido;
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
                var idadeConvertida = parseInt(idade.value);
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Bicicleta ergométrica Balke (Carga em Kg) - Máximo') {
  			alert('Entrou no balke carga Kg')
  			cargaKgConv = parseFloat((cargaKg).value);
  			alert('carga conv: '+cargaKgConv)
  			var cargaWattsConvertido = (cargaKgConv * 1000 * 50) / 1000;;
  			alert('CargaWattsConvertido: '+cargaWattsConvertido)
  			alert('peso: ' + pesoConvertido)

             if (cargaWattsConvertido > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0) {
               
            	var vo2MaxMlKgMin = (200 + (12 * cargaWattsConvertido)) / pesoConvertido;
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
                var idadeConvertida = parseInt(idade.value);
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Esteira Bruce Submáximo') {
  			alert('Entrou no Bruce subMáximo')
  			velocidadeKmhConv = parseFloat((velocidadeKmh).value);
  			inclinacaoEsteiraConv = parseFloat((inclinacaoEsteira).value);
  			alert('Veloc km/h: '+velocidadeKmhConv)
  			alert('peso: ' + pesoConvertido)

             if (velocidadeKmhConv > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && inclinacaoEsteiraConv > 0) {
               
            	var velocMetroMin = velocidadeKmhConv * 16.667;
            	
            	var vo2MaxMlKgMin = 0.25 * (velocMetroMin) + (0.95 * inclinacaoEsteiraConv) + 3.5;
            	 
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
                var idadeConvertida = parseInt(idade.value);
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Esteira Bruce Máximo') {
  			alert('Entrou no Bruce Máximo')
			tempoMinutosConv = parseFloat((tempoMinutos).value);

             if (tempoMinutosConv > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0 ) {
               alert('Entrou aqui')
               alert('Condição atual '+ condicaAtual.value)
            	 var vo2MaxMlKgMin = 0;
            	 var condicao = condicaAtual.value;
            	 switch (condicao) {
                 case "Ativo":
                     vo2MaxMlKgMin = (3.36 * tempoMinutosConv) + 1.06;
                     break;
                 case "Sedentário":
                     vo2MaxMlKgMin = (3.36 * tempoMinutosConv) + 1.06;
                     break;
                 case "Cardiopata":
                     vo2MaxMlKgMin = (3.36 * tempoMinutosConv) + 1.06;
                     break;
                 default:
                     break;
             }             	
            	
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
                var idadeConvertida = parseInt(idade.value);
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Esteira Lima/Vianna(Máximo sem inclinação)') {
  			alert('Entrou no Lima/Viana')
  			var velocidadeNumber = velocidadeKmh.value
  			velocidadeKmhCon = 0;
  			
  			
  			if(velocidadeNumber==null || velocidadeNumber==""){
  				velocidadeKmhCon = 0;
  			}else{
  				velocidadeKmhCon = parseFloat(velocidadeNumber);
  			}
  			
  			alert("velocidadeKmhCon "+velocidadeKmhCon)

             if (velocidadeKmhCon > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0 ) {
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
               alert('velocidadeKmhCon '+ velocidadeKmhCon)
               
               var vo2MaxMlKgMin = (velocidadeKmhCon + 1.05) / 0.3;
            
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
                var idadeConvertida = parseInt(idade.value);
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Equação de Jackson et al. (1990)- Sem exercício - com % Gordura') {
  			alert('Entrou na equação Jackson % de gordura')
  			var nivelAtvFisConv = nivelAtvFisica.value;
  			velocidadeKmhCon = 0;
  			
  			if(nivelAtvFisConv==null || nivelAtvFisConv==""){
  				nivelAtvFisConv = 0;
  			}else{
  				nivelAtvFisConv = parseFloat(nivelAtvFisConv);
  			}
  			
  			
  			

             if (nivelAtvFisConv > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && percGorduraConv>0) {
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
                var idadeConvertida = parseInt(idade.value);
               var vo2MaxMlKgMin = 50.513 + 1.589 * (nivelAtvFisConv) - 0.289 * (idadeConvertida) - 0.552 * (percGorduraConv) + 5.863 * (1);
               
            
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
               
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Equação de Jackson et al. (1990)- Sem exercício - com IMC') {
  			alert('Entrou na equação Jackson com IMC')
  			var nivelAtvFisConv = nivelAtvFisica.value;
  			alert('Nivel '+nivelAtvFisConv)
  			
  			
  			var imcConv = parseFloat((imc).value);
  			alert("IMC " + imcConv)
  			if(nivelAtvFisConv==null || nivelAtvFisConv==""){
  				nivelAtvFisConv = 0;
  			}else{
  				nivelAtvFisConv = parseFloat(nivelAtvFisConv);
  			}
  			
             if (nivelAtvFisConv > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && imcConv>0) {
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
                var idadeConvertida = parseInt(idade.value);
               var vo2MaxMlKgMin = 50.513 + 1.589 * (nivelAtvFisConv) - 0.289 * (idadeConvertida) - 0.552 * (percGorduraConv) + 5.863 * (1);
               
            
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
               
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Corrida 2400m (Cooper)') {
        	alert('Entrou corrida 2400m cooper');
        	var tempoMinutosCon = parseFloat((tempoMinutos).value);
      		var tempoSegundosCon = parseFloat((tempoSegundos).value);
  			
             if (tempoMinutosCon > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && tempoSegundosCon>0) {
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
               var idadeConvertida = parseInt(idade.value);
               alert('Idade conv '+ idadeConvertida);
               
               var tempoTotalEmSegundos = (tempoMinutosCon * 60)+tempoSegundosCon;
               
               var vo2MaxMlKgMin = ((2400 * 60 * 0.2)+3.5)/tempoTotalEmSegundos;
               
            
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
               
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Corrida 3200m (Weltman)') {
        	alert('Entrou corrida 3200 Weltman');
        	var tempoMinutosCon = parseFloat((tempoMinutos).value);
      		var tempoSegundosCon = parseFloat((tempoSegundos).value);
  			
             if (tempoMinutosCon > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && tempoSegundosCon>0) {
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
               var idadeConvertida = parseInt(idade.value);
               alert('Idade conv '+ idadeConvertida);
               
               var tempoTotalEmSegundos = (tempoMinutosCon * 60)+tempoSegundosCon;
               var tempoTotalEmMinutos = tempoTotalEmSegundos / 60;
               
               var vo2MaxMlKgMin = 118.4 - 4.77 * tempoTotalEmMinutos;
               
               
            
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
               
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Corrida 3200 (Ribisl & Kachodorian)') {
        	alert('Entrou corrida 3200 ribisli');
        	var tempoMinutosCon = parseFloat((tempoMinutos).value);
      		var tempoSegundosCon = parseFloat((tempoSegundos).value);
      		alert('Tempo minutos '+tempoMinutosCon)
      		alert('Tempo segundos '+tempoSegundosCon)
  			
             if (tempoMinutosCon > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && tempoSegundosCon>0) {
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
               var idadeConvertida = parseInt(idade.value);
               alert('Idade conv '+ idadeConvertida);
               
               var tempoTotalEmSegundos = (tempoMinutosCon * 60)+tempoSegundosCon;
               
               
               var vo2MaxMlKgMin = 114.496 - 0.04689 * (tempoTotalEmSegundos) - 0.37817 * (idadeConvertida) - 0.15406 * pesoConvertido;
               
            
            	alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
               
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Corrida de 15 minutos (Balke)') {
        	alert('Entrou corrida 15 min balke');
        	var distanciaPercorridaConv = parseInt(distanciaPercorrida.value);
             if (condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && distanciaPercorridaConv > 0 ) {
            	 
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
               var idadeConvertida = parseInt(idade.value);
               alert('Idade conv '+ idadeConvertida);
               
               var velocidadeMetroPorMinuto = distanciaPercorridaConv / 15;
               var vo2MaxMlKgMin = 33+(0.178 *(velocidadeMetroPorMinuto-133));

               alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
               
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Andar e correr 12 minutos (Cooper)') {
        	alert('Entrou corrida 12 min cooper');
        	var distanciaPercorridaConv = parseInt(distanciaPercorrida.value);
             if (condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && distanciaPercorridaConv > 0 ) {
            	 
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
               var idadeConvertida = parseInt(idade.value);
               alert('Idade conv '+ idadeConvertida);
               
               var vo2MaxMlKgMin = (distanciaPercorridaConv - 504) / 45;
               alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
               
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Shuttle Run” ou “vai e vem” -(Léger et al.)') {
        	var velocidadeKmhCon = parseFloat(velocidadeKmh.value)
        	alert('Entrou no shuttle Run');
        	var distanciaPercorridaConv = parseInt(distanciaPercorrida.value);
             if (condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && velocidadeKmhCon > 0 ) {
            	 
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
               var idadeConvertida = parseInt(idade.value);
               alert('Idade conv '+ idadeConvertida);
               
               var vo2MaxMlKgMin = (distanciaPercorridaConv - 504) / 45;
               alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
               
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }else if (protocoloClicado.value == 'Caminhada de 1 Milha (Rockport Walking Institute) - Submáximo') {
        	alert('Entrou no 1 Milha');
        	var tempoMinutosCon = parseFloat((tempoMinutos).value);
      		var tempoSegundosCon = parseFloat((tempoSegundos).value);
        	
        	var distanciaPercorridaConv = parseInt(distanciaPercorrida.value);
             if (tempoMinutosCon > 0 &&  tempoSegundosCon > 0 && condicaAtual.value != "Selecionar"  && pesoConvertido > 0 && fcTeste.value > 0 ) {
            	 var idadeConvertida = parseInt(idade.value);
            	 var tempoTotalEmSegundos = ((tempoMinutosCon) * 60) + (tempoSegundosCon);
                 var totalTempoEmMinutos = tempoTotalEmSegundos / 60;
            	 var fcTesteConv = fcTeste.value;
            	 
            	 var vo2MaxMlKgMin = 132.853 - (0.0769 * (pesoConvertido * 2.2046)) - (0.3877 * idadeConvertida) + (6.3115 * 1) - (3.2649 * tempoMinutosCon) - (0.1565 * fcTesteConv);
               alert('Entrou aqui no if')
               alert('Condição atual '+ condicaAtual.value)
               
               alert('Idade conv '+ idadeConvertida);
               
               alert('vo2MaxMlKgMin' + vo2MaxMlKgMin)
                document.querySelector('#vo2MaxMlMin').value = vo2MaxMlKgMin.toFixed(2);
                
                var vo2MaxLMin = vo2MaxMlKgMin * pesoConvertido / 1000;
                alert('vo2MaxLMin' + vo2MaxLMin)
                document.querySelector('#vo2MaxLMin').value = vo2MaxLMin.toFixed(2);
                
                var kcalMin = vo2MaxLMin * 5;
                document.querySelector('#kcalMin').value = kcalMin.toFixed(2);
                
                var metMax = vo2MaxMlKgMin / 3.5;
                document.querySelector('#metMax').value = metMax.toFixed(2);
                
                //Converte o valor do peso para Número
                var pesoConvertido = parseFloat(peso.value);
                //Formula para Calcular o valor do  vo2MaxMin
                
                var vo2MaxPredito = 0;
               
                alert('Idade convertida: '+idadeConvertida)
                if(sexo.value == "F"){
                
	                if (condicaAtual.value == "Selecionar") {
	
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 42.9 - 0.312 * idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 42.3 - 0.356 * idadeConvertida;
	                }
                
                }else{
                	
                	if (condicaAtual.value == "Selecionar") {
                		
	                } else if (condicaAtual.value == "Ativo") {
	                    vo2MaxPredito = 69.7 - 0.612 *  idadeConvertida;
	                } else if (condicaAtual.value == "Sedentário") {
	                    vo2MaxPredito = 57.8 - 0.445  * idadeConvertida;
	                }
                	
                }
                document.querySelector('#vo2Predito').value = vo2MaxPredito.toFixed(2);
                var fai = ((vo2MaxPredito - vo2MaxMlKgMin) / vo2MaxPredito) * 100;
                document.querySelector('#deficitFuncional').value = fai.toFixed(2);
                //RegrasCliente regrasCliente = new RegrasCliente();
                var classificacao;
                if(sexo.value == "F"){
                	classificacao = classificacaoAhaTesteCardioFeminino(idadeConvertida, vo2MaxMlKgMin);
                }else{
                	classificacao = classificacaoAhaTesteCardioMasculino(idadeConvertida, vo2MaxMlKgMin);
                }
                    
                    //txtVo2Obtid.setText(String.format("%.2f", vo2MaxMlKgMin));
                    document.querySelector('#classificacao').value = classificacao;
                
            } else {
            	 document.querySelector('#vo2CargaLmin').value= '0';
            	 document.querySelector('#vo2MaxMlMin').value = '0';
            	 document.querySelector('#vo2MaxLMin').value ='0';
            	 document.querySelector('#kcalMin').value = '0';
            	 document.querySelector('#metMax').value = '0';
            	 document.querySelector('#vo2Predito').value = '0';
            	 document.querySelector('#deficitFuncional').value = '0';
            	 document.querySelector('#classificacao').value = 'Sem classificação';
            }

        }
  	}
  </script>
</body>
</html>