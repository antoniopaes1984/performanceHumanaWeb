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
                <p class="text-center h4">Neuromuscular</p>
                
                <form  action="ServletNeuromuscular" method="post">
                <input type="hidden" name="codAvaliacao" id="codAvaliacao" value="${avaliacao.codAvaliacao}">
                <input type="hidden" name="idade" id="idade" value="${avaliacao.idadeCliente}">
                <input type="hidden" name="sexo" id="sexo" value="${cliente.sexo}">
                <input type="hidden" name="peso" id="peso" value="${medidas.peso}">
			<hr>
			<div class="form-row col-12">
			<div class="form-row col-12">
				  <div class="form-row col-12">
				  	<label class="col-12 text-center">Resistencia Abdominal</label>
				  	<div class="form-group col-12">
				  	<label class="col ">Nº de repetições em 60s</label>
						<input type="number" class="form-control" min="0" max="150" placeholder="0" name="resistenciaAbdominal" id="resistenciaAbdominal"  value="${neuromuscular.numRepetAbdominal}"> 
						<label class="col">Classificação</label>
						<input type="text" class="form-control col" readonly name="classResisAbd" id="classResisAbd" value="${neuromuscular.classificacaoAbdominal}">
					</div>
				  </div>
			  </div>
			  <hr>
			  <div class="form-row col-12">
			  	<label class="col-12 text-center">Resistencia braquio-peitoral</label>
			  	<div class="form-group col-12">
			  		<label class="col ">Nº de repetições exaustão</label>
					<input type="number" class="form-control" min="0" max="150" placeholder="0" name="resistenciabraquiPeitoral" id="resistenciabraquiPeitoral" value="${neuromuscular.numRepetBraquioPeitoral}">
					<label class="col">Classificação</label>
					<input type="text" class="form-control col" readonly name="classResisBraquioPeitoral" id="classResisBraquioPeitoral" value="${neuromuscular.classificacaoBraquioPeitoral}">
				</div>
			  </div>
			  <hr>
			  <div class="form-row col-12">
			  	<label class="col-12 text-center">Sentar e alcançar c/ banco</label>
			  	<div class="form-group col-12">
			  	<label class="col ">Amplitude</label>
					<input type="number" class="form-control" min="0" max="120" placeholder="0" name="sentarAlcancarBanco" id="sentarAlcancarBanco" value="${neuromuscular.ampliSentarAlcancarComBanco}">
					<label class="col">Classificação</label>
					<input type="text" class="form-control col" readonly name="classSentarAlcancarBanco" id="classSentarAlcancarBanco" value="${neuromuscular.classifSentarAlcancarComBanco}">
				</div>
			  </div>
			  <hr>
			  <div class="form-row col-12">
			  	<label class="col-12 text-center">Sentar e alcançar s/ banco</label>
			  	<div class="form-group col-12">
			  	<label class="col ">Amplitude</label>
					<input type="number" class="form-control" min="0" max="120" placeholder="0" name="sentarAlcancarSemBanco" id="sentarAlcancarSemBanco" value="${neuromuscular.ampliSentarAlcancarSemBanco}">
					<label class="col">Classificação</label>
					<input type="text" class="form-control col" readonly name="classSentarAlcancarSemBanco" id="classSentarAlcancarSemBanco" value="${neuromuscular.classifSentarAlcancarSemBanco}">
				</div>
			  </div>
			  <hr>
			  <div class="form-row col-12">
			  <p class="col-12 text-center"><u>Força Muscular-Carga Máxima(Uchida et al,2003 para jovens)</u></p>
			  <div class="form-group col-12">
			  	<label class="col">Supino</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="forcaSupino" id="forcaSupino" value="${neuromuscular.cargaMaxSupino}">
			  	<label class="col">Rosca Direta</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="forcaRoscaDireta" id="forcaRoscaDireta" value="${neuromuscular.cargaMaxRoscaDir}">
			  	<label class="col">Puxada</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="forcaPuxada" id="forcaPuxada" value="${neuromuscular.cargaMaxPuxadaFrente}">
			  	<label class="col">Leg Press</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="forcaLegPress" id="forcaLegPress" value="${neuromuscular.cargaMaxLegPress}">
			  	<label class="col">Extensão joelho</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="forcaExtensaoJoelho" id="forcaExtensaoJoelho" value="${neuromuscular.cargaMaxExtensaoJoelho}">
			  	<label class="col">Flexão joelho</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="forcaFlexaoJoelho" id="forcaFlexaoJoelho" value="${neuromuscular.cargaMaxFlexaoJoelho}">
			  	<label class="col">Classificação</label>
			  	<input type="text" class="form-control col" readonly name="classForcaMuscular" id="classForcaMuscular" value="${neuromuscular.classificacaoForcaRelativa}">
			  </div>
			  </div>
			  <hr>
			  <div class="form-row col-12 ">
			  	<p class="col-12 text-center"><u>Força Muscular- Teste de Repetições Máximas</u></p>
			  	<div class="form-group col-12">
			  	<label class="col-12  mt-1 mb-2">Nome do Exercício 1</label>
			  	<input type="text" class="form-control col" name="nomeExerc1" id="nomeExerc1" value="${neuromuscular.trmNomeExer1}">
			  	<label class="col-12  mt-1 mb-2">Peso Levantado</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="pesoLevan1" id="pesoLevan1" value="${neuromuscular.trmPesoLevantadoExer1}">
			  	<label class="col-12  mt-1 mb-2">Repetições</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="repet1" id="repet1" value="${neuromuscular.trmRepetiExer1}">
			  	<label class="col-12  mt-1 mb-2">1 RM</label>
			  	<input type="text" class="form-control mb-2"  name="1RM1" id="RM1" value="${neuromuscular.trm1RMExer1}" readonly>
			  	</div>
			  	
			  	<div class="form-group col-12">
			  	<label class="col-12  mt-1 mb-2">Nome do Exercício 2</label>
			  	<input type="text" class="form-control col" name="nomeExerc2" id="nomeExerc2" value="${neuromuscular.trmNomeExer2}">
			  	<label class="col-12  mt-1 mb-2">Peso Levantado</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="pesoLevan2" id="pesoLevan2" value="${neuromuscular.trmPesoLevantadoExer2}">
			  	<label class="col-12  mt-1 mb-2">Repetições</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="repet2" id="repet2" value="${neuromuscular.trmRepetiExer2}">
			  	<label class="col-12  mt-1 mb-2">1 RM</label>
			  	<input type="text" class="form-control mb-2"  name="1RM2" id="RM2" value="${neuromuscular.trm1RMExer2}" readonly>
			  	</div>
			  	
			  	<div class="form-group col-12">
			  	<label class="col-12  mt-1 mb-2">Nome do Exercício 3</label>
			  	<input type="text" class="form-control col" name="nomeExerc3" id="nomeExerc3" value="${neuromuscular.trmNomeExer3}">
			  	<label class="col-12  mt-1 mb-2">Peso Levantado</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="pesoLevan3" id="pesoLevan3" value="${neuromuscular.trmPesoLevantadoExer3}">
			  	<label class="col-12  mt-1 mb-2">Repetições</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="repet3" id="repet3" value="${neuromuscular.trmRepetiExer3}">
			  	<label class="col-12  mt-1 mb-2">1 RM</label>
			  	<input type="text" class="form-control mb-2"  name="1RM3" id="RM3" value="${neuromuscular.trm1RMExer3}" readonly>
			  	</div>
			  	
			  	<div class="form-group col-12">
			  	<label class="col-12  mt-1 mb-2">Nome do Exercício 4</label>
			  	<input type="text" class="form-control col" name="nomeExerc4" id="nomeExerc4" value="${neuromuscular.trmNomeExer4}">
			  	<label class="col-12  mt-1 mb-2">Peso Levantado</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="pesoLevan4" id="pesoLevan4" value="${neuromuscular.trmPesoLevantadoExer4}">
			  	<label class="col-12  mt-1 mb-2">Repetições</label>
			  	<input type="number" class="form-control" min="0" max="500" placeholder="0" name="repet4" id="repet4" value="${neuromuscular.trmRepetiExer4}">
			  	<label class="col-12  mt-1 mb-2">1 RM</label>
			  	<input type="text" class="form-control mb-2"  name="1RM4" id="RM4" value="${neuromuscular.trm1RMExer4}" readonly>
			  						
										<div class="form-group input-group-append mt-2">
											<button type="submit" class="btn btn-primary "
												id="botaoSalvar">Salvar</button>
										</div>
									
			  	</div>
			  	
			  </div>



									

			</div>
			  
			  </form>
              </section>
		</div>
			  
			  
			  
			</div>	
			
			
				
			
            </div>
          </div>
        </div>

      
  
  <jsp:include page="javascript.jsp"></jsp:include>
  <script type="text/javascript">
  
  var abdominal = document.querySelector('#resistenciaAbdominal');
  abdominal.addEventListener("change",calculaClassAbdominal)
  
  var resistenciabraquiPeitoral = document.querySelector('#resistenciabraquiPeitoral');
  resistenciabraquiPeitoral.addEventListener("change",calculaResistenciaBraquiPeitoral);
  
  var sentarAlcancarBanco = document.querySelector('#sentarAlcancarBanco');
  sentarAlcancarBanco.addEventListener("change",calculaSentarAlcancarBanco);
  
  var sentarAlcancarSemBanco = document.querySelector('#sentarAlcancarSemBanco');
  sentarAlcancarSemBanco.addEventListener("change",calculaSentarAlcancarSemBanco);
  
  var forcaSupino = document.querySelector('#forcaSupino');
  forcaSupino.addEventListener("change",classForcaMuscular);
  
  var forcaRoscaDireta = document.querySelector('#forcaRoscaDireta');
  forcaRoscaDireta.addEventListener("change",classForcaMuscular);
  
  var forcaPuxada = document.querySelector('#forcaPuxada');
  forcaPuxada.addEventListener("change",classForcaMuscular);
  
  var forcaLegPress = document.querySelector('#forcaLegPress');
  forcaLegPress.addEventListener("change",classForcaMuscular);
  
  var forcaExtensaoJoelho = document.querySelector('#forcaExtensaoJoelho');
  forcaExtensaoJoelho.addEventListener("change",classForcaMuscular);
  
  var forcaFlexaoJoelho = document.querySelector('#forcaFlexaoJoelho');
  forcaFlexaoJoelho.addEventListener("change",classForcaMuscular);
  
  var pesoLevan1 = document.querySelector('#pesoLevan1');
  pesoLevan1.addEventListener("change",calculo1RM1);
 
  var pesoLevan2 = document.querySelector('#pesoLevan2');
  pesoLevan2.addEventListener("change",calculo1RM2);
 
  var pesoLevan3 = document.querySelector('#pesoLevan3');
  pesoLevan3.addEventListener("change",calculo1RM3);
 
  var pesoLevan4 = document.querySelector('#pesoLevan4');
  pesoLevan4.addEventListener("change",calculo1RM4);
 
  var repet1 = document.querySelector('#repet1');
  repet1.addEventListener("change",calculo1RM1);
 
  var repet2 = document.querySelector('#repet2');
  repet2.addEventListener("change",calculo1RM2);
 
  var repet3 = document.querySelector('#repet3');
  repet3.addEventListener("change",calculo1RM3);
 
  var repet4 = document.querySelector('#repet4');
  repet4.addEventListener("change",calculo1RM4);
 
  
  var idade = document.querySelector('#idade').value;
  
  
  
  
  	function calculaClassAbdominal(){
  		
  		var numRepetcoes = abdominal.value;
  		var sexo = document.querySelector('#sexo').value;
  		var resultado = "Sem Classificação";
  		if (numRepetcoes == 0) {
  			document.querySelector('#classResisAbd').value = "Sem Classificação";
        }else{
        	if(sexo=="M"){
        	
	        	if ((idade <=19 && numRepetcoes <= 32) || (idade <=29 && numRepetcoes <= 28) || (idade<=39 && numRepetcoes <=21) || (idade<=49 && numRepetcoes <= 16) || (idade <= 59 && numRepetcoes <= 12) || (idade >=60 && numRepetcoes <= 6)) {
	                resultado = "Fraco";
	            }else if ((idade <=19 && numRepetcoes <= 37) || (idade <=29 && numRepetcoes <= 32) || (idade<=39 && numRepetcoes <=26) || (idade<=49 && numRepetcoes <= 21) || (idade <= 59 && numRepetcoes <= 17) || (idade >=60 && numRepetcoes <= 11)) {
	                resultado = "Regular";
	            }else if ((idade <=19 && numRepetcoes <= 41) || (idade <=29 && numRepetcoes <= 36) || (idade<=39 && numRepetcoes <=30) || (idade<=49 && numRepetcoes <= 25) || (idade <= 59 && numRepetcoes <= 21) || (idade >=60 && numRepetcoes <= 16)) {
	                resultado = "Médio";
	            }else if ((idade <=19 && numRepetcoes <= 47) || (idade <=29 && numRepetcoes <= 42) || (idade<=39 && numRepetcoes <=35) || (idade<=49 && numRepetcoes <= 30) || (idade <= 59 && numRepetcoes <= 25) || (idade >=60 && numRepetcoes <= 22)) {
	                resultado = "Bom";
	            }else if ((idade <=19 && numRepetcoes >= 48) || (idade <=29 && numRepetcoes >= 43) || (idade<=39 && numRepetcoes >=36) || (idade<=49 && numRepetcoes >= 31) || (idade <= 59 && numRepetcoes >= 26) || (idade >=60 && numRepetcoes >= 23)) {
	                resultado = "Excelente";
	            }
        	}else{
        		if ((idade <=19 && numRepetcoes <= 26) || (idade <=29 && numRepetcoes <= 20) || (idade<=39 && numRepetcoes <=14) || (idade<=49 && numRepetcoes <= 6) || (idade <= 59 && numRepetcoes <= 2) || (idade >=60 && numRepetcoes <= 1)) {
                    resultado = "Fraco";
                }else if ((idade <=19 && numRepetcoes <= 31) || (idade <=29 && numRepetcoes <= 24) || (idade<=39 && numRepetcoes <=19) || (idade<=49 && numRepetcoes <= 14) || (idade <= 59 && numRepetcoes <= 4) || (idade >=60 && numRepetcoes <= 3)) {
                    resultado = "Regular";
                }else if ((idade <=19 && numRepetcoes <= 35) || (idade <=29 && numRepetcoes <= 30) || (idade<=39 && numRepetcoes <=23) || (idade<=49 && numRepetcoes <= 19) || (idade <= 59 && numRepetcoes <= 11) || (idade >=60 && numRepetcoes <= 11)) {
                    resultado = "Médio";
                }else if ((idade <=19 && numRepetcoes <= 41) || (idade <=29 && numRepetcoes <= 35) || (idade<=39 && numRepetcoes <=28) || (idade<=49 && numRepetcoes <= 24) || (idade <= 59 && numRepetcoes <= 18) || (idade >=60 && numRepetcoes <= 15)) {
                    resultado = "Bom";
                }else if ((idade <=19 && numRepetcoes >= 42) || (idade <=29 && numRepetcoes >= 36) || (idade<=39 && numRepetcoes >=29) || (idade<=49 && numRepetcoes >= 25) || (idade <= 59 && numRepetcoes >= 19) || (idade >=60 && numRepetcoes >= 16)) {
                    resultado = "Excelente";
                }
        	}
           
        	document.querySelector('#classResisAbd').value = resultado;
            
        
        }
  	}
  
  	function calculaResistenciaBraquiPeitoral(){
  		var sexo = document.querySelector('#sexo').value;
  		var numRepetcoes = resistenciabraquiPeitoral.value;
  		var resultado = "Sem Classificação";
  		
  		
  		if (numRepetcoes == 0) {
  			document.querySelector('#classResisBraquioPeitoral').value = "Sem Classificação";
        }else{
        	if(sexo=="M"){
        		
                if ((idade <=19 && numRepetcoes <= 17) || (idade <=29 && numRepetcoes <= 16) || (idade<=39 && numRepetcoes <=11) || (idade<=49 && numRepetcoes <= 9) || (idade <= 59 && numRepetcoes <= 6) || (idade >=60 && numRepetcoes <= 4)) {
                    resultado = "Fraco";
                }else if ((idade <=19 && numRepetcoes <= 22) || (idade <=29 && numRepetcoes <= 21) || (idade<=39 && numRepetcoes <=18) || (idade<=49 && numRepetcoes <= 12) || (idade <= 59 && numRepetcoes <= 9) || (idade >=60 && numRepetcoes <= 7)) {
                    resultado = "Regular";
                }else if ((idade <=19 && numRepetcoes <= 28) || (idade <=29 && numRepetcoes <= 28) || (idade<=39 && numRepetcoes <=21) || (idade<=49 && numRepetcoes <= 16) || (idade <= 59 && numRepetcoes <= 12) || (idade >=60 && numRepetcoes <= 10)) {
                    resultado = "Médio";
                }else if ((idade <=19 && numRepetcoes <= 38) || (idade <=29 && numRepetcoes <= 35) || (idade<=39 && numRepetcoes <=29) || (idade<=49 && numRepetcoes <= 21) || (idade <= 59 && numRepetcoes <= 20) || (idade >=60 && numRepetcoes <= 17)) {
                    resultado = "Bom";
                }else if ((idade <=19 && numRepetcoes >= 39) || (idade <=29 && numRepetcoes >= 36) || (idade<=39 && numRepetcoes >=30) || (idade<=49 && numRepetcoes >= 22) || (idade <= 59 && numRepetcoes >= 21) || (idade >=60 && numRepetcoes >= 18)) {
                    resultado = "Excelente";
                }
        	}else{
        		
        		if ((idade <=19 && numRepetcoes <= 11) || (idade <=29 && numRepetcoes <= 9) || (idade<=39 && numRepetcoes <=7) || (idade<=49 && numRepetcoes <= 4) || (idade <= 59 && numRepetcoes <= 1) || (idade >=60 && numRepetcoes <= 1)) {
                    resultado = "Fraco";
                }else if ((idade <=19 && numRepetcoes <= 17) || (idade <=29 && numRepetcoes <= 14) || (idade<=39 && numRepetcoes <=12) || (idade<=49 && numRepetcoes <= 10) || (idade <= 59 && numRepetcoes <= 6) || (idade >=60 && numRepetcoes <= 4)) {
                    resultado = "Regular";
                }else if ((idade <=19 && numRepetcoes <= 24) || (idade <=29 && numRepetcoes <= 20) || (idade<=39 && numRepetcoes <=19) || (idade<=49 && numRepetcoes <= 14) || (idade <= 59 && numRepetcoes <= 10) || (idade >=60 && numRepetcoes <= 11)) {
                    resultado = "Médio";
                }else if ((idade <=19 && numRepetcoes <= 32) || (idade <=29 && numRepetcoes <= 29) || (idade<=39 && numRepetcoes <=26) || (idade<=49 && numRepetcoes <= 23) || (idade <= 59 && numRepetcoes <= 20) || (idade >=60 && numRepetcoes <= 16)) {
                    resultado = "Bom";
                }else if ((idade <=19 && numRepetcoes >= 33) || (idade <=29 && numRepetcoes >= 30) || (idade<=39 && numRepetcoes >=27) || (idade<=49 && numRepetcoes >= 24) || (idade <= 59 && numRepetcoes >= 21) || (idade >=60 && numRepetcoes >= 17)) {
                    resultado = "Excelente";
                }
        		
        	}
    		document.querySelector('#classResisBraquioPeitoral').value = resultado;
        	
        }
  		
  	}
  	
  	function calculaSentarAlcancarBanco(){
  		var numRepetcoes  = sentarAlcancarBanco.value;
  		var sexo = document.querySelector('#sexo').value;
  		var resultado = "Sem Classificação";
  		
  		if (numRepetcoes == 0) {
  			document.querySelector('#classSentarAlcancarBanco').value = "Sem Classificação";
        }else{
        	if(sexo=="M"){
        		if ((idade <=19 && numRepetcoes <= 23) || (idade >= 20 && idade <=29 && numRepetcoes <= 24) || (idade >= 30 && idade<=39 && numRepetcoes <=22) || (idade >= 40 && idade<=49 && numRepetcoes <= 17) || (idade >= 50 && idade <= 59 && numRepetcoes <= 15) || (idade >=60 && numRepetcoes <= 14)) {
                    resultado = "Ruim";
                }else if ((idade <=19 && numRepetcoes <= 28) || (idade >= 20 && idade <=29 && numRepetcoes <= 29) || (idade >= 30 && idade<=39 && numRepetcoes <=27) || (idade >= 40 && idade<=49 && numRepetcoes <= 23) || (idade >= 50 && idade <= 59 && numRepetcoes <= 23) || (idade >=60 && numRepetcoes <= 19)) {
                    resultado = "Abaixo";
                }else if ((idade <=19 && numRepetcoes <= 33) || (idade >= 20 && idade <=29 && numRepetcoes <= 33) || (idade >= 30 && idade<=39 && numRepetcoes <=32) || (idade >= 40 && idade<=49 && numRepetcoes <= 28) || (idade >= 50 && idade <= 59 && numRepetcoes <= 27) || (idade >=60 && numRepetcoes <= 24)) {
                    resultado = "Média";
                }else if ((idade <=19 && numRepetcoes <= 38) || (idade >= 20 && idade <=29 && numRepetcoes <= 39) || (idade >= 30 && idade<=39 && numRepetcoes <=37) || (idade >= 40 && idade<=49 && numRepetcoes <= 34) || (idade >= 50 && idade <= 59 && numRepetcoes <= 34) || (idade >=60 && numRepetcoes <= 32)) {
                    resultado = "Acima";
                }else if ((idade <=19 && numRepetcoes > 38) || (idade >= 20 && idade <=29 && numRepetcoes > 39) || (idade >= 30 &&   idade<=39 && numRepetcoes > 37) || (idade >= 40 && idade<=49 && numRepetcoes > 34) || (idade >= 50 && idade <= 59 && numRepetcoes > 34) || (idade >=60 && numRepetcoes > 32)) {
                    resultado = "Excelente";
                }else {
                    resultado = "Sem classificação";
                }
        	}else{
        		
        		if ((idade <=19 && numRepetcoes <= 28) || (idade <=29 && numRepetcoes <= 27) || (idade<=39 && numRepetcoes <=26) || (idade<=49 && numRepetcoes <= 24) || (idade <= 59 && numRepetcoes <= 24) || (idade >=60 && numRepetcoes <= 22)) {
                    resultado = "Ruim";
                }else if ((idade <=19 && numRepetcoes <= 33) || (idade <=29 && numRepetcoes <= 32) || (idade<=39 && numRepetcoes <=31) || (idade<=49 && numRepetcoes <= 29) || (idade <= 59 && numRepetcoes <= 29) || (idade >=60 && numRepetcoes <= 26)) {
                    resultado = "Abaixo";
                }else if ((idade <=19 && numRepetcoes <= 37) || (idade <=29 && numRepetcoes <= 36) || (idade<=39 && numRepetcoes <=35) || (idade<=49 && numRepetcoes <= 33) || (idade <= 59 && numRepetcoes <= 32) || (idade >=60 && numRepetcoes <= 30)) {
                    resultado = "Média";
                }else if ((idade <=19 && numRepetcoes <= 42) || (idade <=29 && numRepetcoes <= 40) || (idade<=39 && numRepetcoes <=40) || (idade<=49 && numRepetcoes <= 37) || (idade <= 59 && numRepetcoes <= 38) || (idade >=60 && numRepetcoes <= 34)) {
                    resultado = "Acima";
                }else if ((idade <=19 && numRepetcoes >= 43) || (idade <=29 && numRepetcoes >= 41) || (idade<=39 && numRepetcoes >=41) || (idade<=49 && numRepetcoes >= 38) || (idade <= 59 && numRepetcoes >= 39) || (idade >=60 && numRepetcoes >= 35)) {
                    resultado = "Excelente";
                }
        	}
        	document.querySelector('#classSentarAlcancarBanco').value = resultado;
        }
  	}
  	
  	function calculaSentarAlcancarSemBanco(){
  		var numRepetcoes  = sentarAlcancarSemBanco.value;
  		var sexo = document.querySelector('#sexo').value;
  		var resultado = "Sem Classificação";
  		
  		if (numRepetcoes == 0) {
  			document.querySelector('#classSentarAlcancarSemBanco').value = "Sem Classificação";
        }else{
        	if(sexo=="M"){
        		if ((idade <=25 && numRepetcoes <= 13) || (idade >= 26 && idade <=35 && numRepetcoes <= 11) || (idade >= 36 && idade<=45 && numRepetcoes <=11) || (idade >= 46 && idade<=55 && numRepetcoes <= 9) || (idade >= 56 && idade <= 65 && numRepetcoes <= 7) || (idade >65 && numRepetcoes <= 7)) {
                    resultado = "Fraco";
                }else if ((idade <=25 && numRepetcoes <= 15) || (idade >= 26 && idade <=35 && numRepetcoes <= 14) || (idade >= 36 && idade<=45 && numRepetcoes <=13) || (idade >= 46 && idade<=55 && numRepetcoes <=11) || (idade >= 56 && idade <= 65 && numRepetcoes <= 10) || (idade >65 && numRepetcoes <= 9)) {
                    resultado = "Abaixo média";
                }else if ((idade <=25 && numRepetcoes <= 18) || (idade >= 26 && idade <=35 && numRepetcoes <= 17) || (idade >= 36 && idade<=45 && numRepetcoes <=16) || (idade >= 46 && idade<=55 && numRepetcoes <= 14) || (idade >= 56 && idade <= 65 && numRepetcoes <= 13) || (idade >65 && numRepetcoes <= 12)){
                    resultado = "Média";
                }else if ((idade <=25 && numRepetcoes <= 20) || (idade >= 26 && idade <=35 && numRepetcoes <= 19) || (idade >= 36 && idade<=45 && numRepetcoes <=19) || (idade >= 46 && idade<=55 && numRepetcoes <= 17) || (idade >= 56 && idade <= 65 && numRepetcoes <= 15) || (idade >65 && numRepetcoes <= 15)) {
                    resultado = "Acima média";
                }else if ((idade <=25 && numRepetcoes >= 21) || (idade >= 26 && idade <=35 && numRepetcoes >= 20) || (idade >= 36 && idade<=45 && numRepetcoes >=20) || (idade >= 46 && idade<=55 && numRepetcoes >= 18) || (idade >= 56 && idade <= 65 && numRepetcoes >= 16) || (idade >65 && numRepetcoes >= 16)) {
                    resultado = "Excelente";
                }else{
                    resultado = "Sem classificação";
                }
        	}else{
        		
        		if ((idade <=19 && numRepetcoes <= 16) || (idade <=29 && numRepetcoes <= 15) || (idade<=39 && numRepetcoes <=14) || (idade<=49 && numRepetcoes <= 12) || (idade <= 59 && numRepetcoes <=11) || (idade >=60 && numRepetcoes <= 11)) {
                    resultado = "Ruim";
                }else if ((idade <=19 && numRepetcoes <= 18) || (idade <=29 && numRepetcoes <= 17) || (idade<=39 && numRepetcoes <=16) || (idade<=49 && numRepetcoes <= 14) || (idade <= 59 && numRepetcoes <= 14) || (idade >=60 && numRepetcoes <= 14)) {
                    resultado = "Abaixo";
                }else if ((idade <=19 && numRepetcoes <= 20) || (idade <=29 && numRepetcoes <= 20) || (idade<=39 && numRepetcoes <=18) || (idade<=49 && numRepetcoes <= 17) || (idade <= 59 && numRepetcoes <= 16) || (idade >=60 && numRepetcoes <= 17)) {
                    resultado = "Média";
                }else if ((idade <=19 && numRepetcoes <= 22) || (idade <=29 && numRepetcoes <= 22) || (idade<=39 && numRepetcoes <=21) || (idade<=49 && numRepetcoes <= 20) || (idade <= 59 && numRepetcoes <= 19) || (idade >=60 && numRepetcoes <= 19)) {
                    resultado = "Acima";
                }else if ((idade <=19 && numRepetcoes >= 23) || (idade <=29 && numRepetcoes >= 23) || (idade<=39 && numRepetcoes >=22) || (idade<=49 && numRepetcoes >= 21) || (idade <= 59 && numRepetcoes >= 20) || (idade >=60 && numRepetcoes >= 20)) {
                    resultado = "Excelente";
                }
        	}
        	document.querySelector('#classSentarAlcancarSemBanco').value = resultado;
        }
  	}
  	
  	function classForcaMuscular(){
  		var sexo = document.querySelector('#sexo').value;
	  	var peso = document.querySelector('#peso').value;
	  	
	  	
	  	var pontoSupino = 0;
	  	var pontoRoscaDireta = 0;
	  	var pontoPuxadaFrente = 0;
	  	var pontoLegPres = 0;
	  	var pontoExtensaoJoelho = 0;
	  	var pontoFlexaoJoelho = 0;
	  	var somaDosPontos = 0;
	  	
	  	var pesoLevantadoSupino = forcaSupino.value;
	  	var pesoLevantadoRoscaDireta = forcaRoscaDireta.value;
	  	var pesolevantadoPuxadaFrente = forcaPuxada.value;
	  	var pesoLevantadoLegPress = forcaLegPress.value;
	  	var pesoLevantadoExtensaoJoelho = forcaExtensaoJoelho.value;
	  	var pesoLevantadoFlexaoJoelho = forcaFlexaoJoelho.value;
	  	
	  	
	  	
	  	 var frSupino = pesoLevantadoSupino / peso;
	       var frRoscaDireta = pesoLevantadoRoscaDireta / peso;
	       var frPuxadaFrente = pesolevantadoPuxadaFrente / peso;
	       var frLegPress = pesoLevantadoLegPress / peso;
	       var frExtensaoJoelho = pesoLevantadoExtensaoJoelho / peso;
	       var frflexaoDeJoelho = pesoLevantadoFlexaoJoelho / peso;
	       
	      
	       
	  	
	  	if(pesoLevantadoSupino == 0 || pesoLevantadoRoscaDireta == 0 || pesolevantadoPuxadaFrente == 0 || pesoLevantadoLegPress ==0 || pesoLevantadoExtensaoJoelho == 0 || pesoLevantadoFlexaoJoelho ==0 || peso==0){
	  		document.querySelector('#classForcaMuscular').value = "Sem classificação";
	  		
	  	}else{
	  		if(sexo=="M"){
	  			
	  		  
	  			if (frSupino <= 0.6) {
	  	           pontoSupino = 1;
	  	       } else if (frSupino > 0.6 && frSupino <= 0.7) {
	  	           pontoSupino = 2;
	  	       } else if (frSupino > 0.7 && frSupino <= 0.8) {
	  	           pontoSupino = 3;
	  	       }else if (frSupino > 0.8 && frSupino <= 0.9) {
	  	           pontoSupino = 4;
	  	       }else if (frSupino > 0.9 && frSupino <= 1) {
	  	           pontoSupino = 5;
	  	       }else if (frSupino > 1.0 && frSupino <= 1.1) {
	  	           pontoSupino = 6;
	  	       }else if (frSupino > 1.1 && frSupino <= 1.2) {
	  	           pontoSupino = 7;
	  	       }else if (frSupino > 1.2 && frSupino <= 1.3) {
	  	           pontoSupino = 8;
	  	       }else if (frSupino > 1.3 && frSupino <= 1.4) {
	  	           pontoSupino = 9;
	  	       }else if (frSupino > 1.4) {
	  	           pontoSupino = 10;
	  	       }
	  	       // Calcula a frequência relativa da rosca direta
	  	       
	  	       if (frRoscaDireta <= 0.25) {
	  	           pontoRoscaDireta = 1;
	  	       }else if (frRoscaDireta > 0.25 && frRoscaDireta <= 0.3) {
	  	           pontoRoscaDireta = 2;
	  	       }else if (frRoscaDireta > 0.3 && frRoscaDireta <= 0.35) {
	  	           pontoRoscaDireta = 3;
	  	       }else if (frRoscaDireta > 0.35 && frRoscaDireta <= 0.4) {
	  	           pontoRoscaDireta = 4;
	  	       }else if (frRoscaDireta > 0.4 && frRoscaDireta <= 0.45) {
	  	           pontoRoscaDireta = 5;
	  	       }else if (frRoscaDireta > 0.45 && frRoscaDireta <= 0.5) {
	  	           pontoRoscaDireta = 6;
	  	       }else if (frRoscaDireta > 0.5 && frRoscaDireta <= 0.55) {
	  	           pontoRoscaDireta = 7;
	  	       }else if (frRoscaDireta > 0.55 && frRoscaDireta <= 0.60) {
	  	           pontoRoscaDireta = 8;
	  	       }else if (frRoscaDireta > 0.60 && frRoscaDireta <= 0.65) {
	  	           pontoRoscaDireta = 9;
	  	       }else if (frRoscaDireta > 0.65) {
	  	           pontoRoscaDireta = 10;
	  	       }
	  	       
	  	       //Calcula a frequência relativa da puxada frente
	  	       if (frPuxadaFrente <= 0.75) {
	  	           pontoPuxadaFrente = 1;
	  	       }else if (frPuxadaFrente > 0.75 &&  frPuxadaFrente <= 0.8) {
	  	           pontoPuxadaFrente = 2;
	  	       }else if (frPuxadaFrente > 0.8 && frPuxadaFrente <= 0.85) {
	  	           pontoPuxadaFrente = 3;
	  	       }else if (frPuxadaFrente > 0.85 && frPuxadaFrente <= 0.9) {
	  	           pontoPuxadaFrente = 4;
	  	       }else if (frPuxadaFrente > 0.9 && frPuxadaFrente <= 0.95) {
	  	           pontoPuxadaFrente = 5;
	  	       }else if (frPuxadaFrente > 0.95 && frPuxadaFrente <= 1) {
	  	            pontoPuxadaFrente = 6;
	  	       }else if (frPuxadaFrente > 1.0 && frPuxadaFrente <= 1.05) {
	  	           pontoPuxadaFrente = 7;
	  	       }else if (frPuxadaFrente > 1.05 && frPuxadaFrente <= 1.1) {
	  	           pontoPuxadaFrente = 8;
	  	       }else if (frPuxadaFrente > 1.1 && frPuxadaFrente <=1.15) {
	  	           pontoPuxadaFrente = 9;
	  	       }else if (frPuxadaFrente > 1.15) {
	  	           pontoPuxadaFrente = 10;
	  	       }
	  	       
	  	       //Calcula a frequência relativa do leg press
	  	       
	  	       if (frLegPress <= 1.2) {
	  	           pontoLegPres = 1;
	  	       }else if (frLegPress > 1.2 && frLegPress <= 1.4) {
	  	           pontoLegPres = 2;
	  	       }else if (frLegPress > 1.4 && frLegPress <= 1.6) {
	  	           pontoLegPres = 3;
	  	       }else if (frLegPress > 1.6 && frLegPress <=1.8) {
	  	           pontoLegPres = 4;
	  	       }else if (frLegPress > 1.8 && frLegPress <= 2.0) {
	  	           pontoLegPres = 5;
	  	       }else if (frLegPress > 2.0 && frLegPress <= 2.2) {
	  	           pontoLegPres = 6;
	  	       }else if (frLegPress > 2.2 && frLegPress <= 2.4) {
	  	           pontoLegPres = 7;
	  	       }else if (frLegPress > 2.4 && frLegPress <= 2.6) {
	  	           pontoLegPres = 8;
	  	       }else if (frLegPress > 2.6 && frLegPress <= 2.8) {
	  	           pontoLegPres = 9;
	  	       }else if (frLegPress > 2.8) {
	  	           pontoLegPres = 10;
	  	       }
	  	       
	  	       // Calcula a força relativa da extensão de joelho
	  	       if (frExtensaoJoelho <= 0.35) {
	  	           pontoExtensaoJoelho = 1;
	  	       }else if (frExtensaoJoelho > 0.35 && frExtensaoJoelho <= 0.4) {
	  	           pontoExtensaoJoelho = 2;
	  	       }else if (frExtensaoJoelho > 0.4 && frExtensaoJoelho <= 0.45) {
	  	           pontoExtensaoJoelho = 3;
	  	       }else if (frExtensaoJoelho > 0.45 && frExtensaoJoelho <= 0.5) {
	  	           pontoExtensaoJoelho = 4;
	  	       }else if (frExtensaoJoelho > 0.50 && frExtensaoJoelho <= 0.55) {
	  	           pontoExtensaoJoelho = 5;
	  	       }else if (frExtensaoJoelho > 0.55 && frExtensaoJoelho <= 0.6) {
	  	           pontoExtensaoJoelho = 6;
	  	       }else if (frExtensaoJoelho > 0.6 && frExtensaoJoelho <= 0.65) {
	  	           pontoExtensaoJoelho = 7;
	  	       }else if (frExtensaoJoelho > 0.65 && frExtensaoJoelho <= 0.7) {
	  	           pontoExtensaoJoelho = 8;
	  	       }else if (frExtensaoJoelho > 0.7 && frExtensaoJoelho <= 0.75) {
	  	           pontoExtensaoJoelho = 9;
	  	       }else if (frExtensaoJoelho > 0.75) {
	  	           pontoExtensaoJoelho = 10;
	  	       }
	  	       
	  	       // Calcula a força relativa da flexão de joelho
	  	       if (frflexaoDeJoelho <= 0.25) {
	  	           pontoFlexaoJoelho = 1;
	  	       }else if (frflexaoDeJoelho > 0.25 && frflexaoDeJoelho <= 0.3) {
	  	           pontoFlexaoJoelho = 2;
	  	       }else if (frflexaoDeJoelho > 0.3 && frflexaoDeJoelho <= 0.35) {
	  	           pontoFlexaoJoelho = 3;
	  	       }else if (frflexaoDeJoelho > 0.35 && frflexaoDeJoelho <= 0.4 ) {
	  	           pontoFlexaoJoelho = 4;
	  	       }else if (frflexaoDeJoelho > 0.4 && frflexaoDeJoelho <= 0.45) {
	  	           pontoFlexaoJoelho = 5;
	  	       }else if (frflexaoDeJoelho > 0.45 && frflexaoDeJoelho <= 0.5) {
	  	           pontoFlexaoJoelho = 6;
	  	       }else if (frflexaoDeJoelho > 0.5 && frflexaoDeJoelho <= 0.55) {
	  	           pontoFlexaoJoelho = 7;
	  	       }else if (frflexaoDeJoelho > 0.55 && frflexaoDeJoelho <= 0.6) {
	  	           pontoFlexaoJoelho = 8;
	  	       }else if (frflexaoDeJoelho > 0.6 && frflexaoDeJoelho <= 0.65) {
	  	           pontoFlexaoJoelho = 9;
	  	       }else if (frflexaoDeJoelho > 0.65) {
	  	           pontoFlexaoJoelho = 10;
	  	       }
	  		}else{
	  			if (frSupino <= 0.35) {
	  	           pontoSupino = 1;
	  	       } else if (frSupino <= 0.45) {
	  	           pontoSupino = 2;
	  	       } else if (frSupino <= 0.5) {
	  	           pontoSupino = 3;
	  	       }else if (frSupino <= 0.55) {
	  	           pontoSupino = 4;
	  	       }else if (frSupino <= 0.60) {
	  	           pontoSupino = 5;
	  	       }else if (frSupino <= 0.65) {
	  	           pontoSupino = 6;
	  	       }else if (frSupino <= 0.70) {
	  	           pontoSupino = 7;
	  	       }else if (frSupino <= 0.8) {
	  	           pontoSupino = 8;
	  	       }else if (frSupino <= 0.85) {
	  	           pontoSupino = 9;
	  	       }else if (frSupino > 0.85) {
	  	           pontoSupino = 10;
	  	       }
	  	       // Calcula a frequência relativa da rosca direta
	  	       
	  	       if (frRoscaDireta <= 0.18) {
	  	           pontoRoscaDireta = 1;
	  	       }else if (frRoscaDireta <= 0.21) {
	  	           pontoRoscaDireta = 2;
	  	       }else if (frRoscaDireta <= 0.25) {
	  	           pontoRoscaDireta = 3;
	  	       }else if (frRoscaDireta <= 0.28) {
	  	           pontoRoscaDireta = 4;
	  	       }else if (frRoscaDireta <= 0.32) {
	  	           pontoRoscaDireta = 5;
	  	       }else if (frRoscaDireta <= 0.35) {
	  	           pontoRoscaDireta = 6;
	  	       }else if (frRoscaDireta <= 0.38) {
	  	           pontoRoscaDireta = 7;
	  	       }else if (frRoscaDireta <= 0.42) {
	  	           pontoRoscaDireta = 8;
	  	       }else if (frRoscaDireta <= 0.45) {
	  	           pontoRoscaDireta = 9;
	  	       }else if (frRoscaDireta > 0.45) {
	  	           pontoRoscaDireta = 10;
	  	       }
	  	       
	  	       //Calcula a frequência relativa da puxada frente
	  	       if (frPuxadaFrente <= 0.50) {
	  	           pontoPuxadaFrente = 1;
	  	       }else if (frPuxadaFrente <= 0.55) {
	  	           pontoPuxadaFrente = 2;
	  	       }else if (frPuxadaFrente <= 0.60) {
	  	           pontoPuxadaFrente = 3;
	  	       }else if (frPuxadaFrente <= 0.63) {
	  	           pontoPuxadaFrente = 4;
	  	       }else if (frPuxadaFrente <= 0.65) {
	  	           pontoPuxadaFrente = 5;
	  	       }else if (frPuxadaFrente <= 0.70) {
	  	            pontoPuxadaFrente = 6;
	  	       }else if (frPuxadaFrente <= 0.73) {
	  	           pontoPuxadaFrente = 7;
	  	       }else if (frPuxadaFrente <= 0.75) {
	  	           pontoPuxadaFrente = 8;
	  	       }else if (frPuxadaFrente <= 0.80) {
	  	           pontoPuxadaFrente = 9;
	  	       }else if (frPuxadaFrente > 0.80) {
	  	           pontoPuxadaFrente = 10;
	  	       }
	  	       
	  	       //Calcula a frequência relativa do leg press
	  	       
	  	       if (frLegPress <= 1.0) {
	  	           pontoLegPres = 1;
	  	       }else if (frLegPress <= 1.2) {
	  	           pontoLegPres = 2;
	  	       }else if (frLegPress <= 1.4) {
	  	           pontoLegPres = 3;
	  	       }else if (frLegPress <=1.6) {
	  	           pontoLegPres = 4;
	  	       }else if (frLegPress <= 1.8) {
	  	           pontoLegPres = 5;
	  	       }else if (frLegPress <= 2.0) {
	  	           pontoLegPres = 6;
	  	       }else if (frLegPress <= 2.1) {
	  	           pontoLegPres = 7;
	  	       }else if (frLegPress <= 2.3) {
	  	           pontoLegPres = 8;
	  	       }else if (frLegPress <= 2.5) {
	  	           pontoLegPres = 9;
	  	       }else if (frLegPress >2.5) {
	  	           pontoLegPres = 10;
	  	       }
	  	       
	  	       // Calcula a força relativa da extensão de joelho
	  	       if (frExtensaoJoelho <= 0.30) {
	  	           pontoExtensaoJoelho = 1;
	  	       }else if (frExtensaoJoelho <= 0.35) {
	  	           pontoExtensaoJoelho = 2;
	  	       }else if (frExtensaoJoelho <= 0.40) {
	  	           pontoExtensaoJoelho = 3;
	  	       }else if (frExtensaoJoelho <= 0.45) {
	  	           pontoExtensaoJoelho = 4;
	  	       }else if (frExtensaoJoelho <= 0.50) {
	  	           pontoExtensaoJoelho = 5;
	  	       }else if (frExtensaoJoelho <= 0.52) {
	  	           pontoExtensaoJoelho = 6;
	  	       }else if (frExtensaoJoelho <= 0.55) {
	  	           pontoExtensaoJoelho = 7;
	  	       }else if (frExtensaoJoelho <= 0.60) {
	  	           pontoExtensaoJoelho = 8;
	  	       }else if (frExtensaoJoelho <= 0.65) {
	  	           pontoExtensaoJoelho = 9;
	  	       }else if (frExtensaoJoelho > 0.65) {
	  	           pontoExtensaoJoelho = 10;
	  	       }
	  	       
	  	       // Calcula a força relativa da flexão de joelho
	  	       if (frflexaoDeJoelho <= 0.2) {
	  	           pontoFlexaoJoelho = 1;
	  	       }else if (frflexaoDeJoelho <= 0.25) {
	  	           pontoFlexaoJoelho = 2;
	  	       }else if (frflexaoDeJoelho <= 0.3) {
	  	           pontoFlexaoJoelho = 3;
	  	       }else if (frflexaoDeJoelho <= 0.35 ) {
	  	           pontoFlexaoJoelho = 4;
	  	       }else if (frflexaoDeJoelho <= 0.40) {
	  	           pontoFlexaoJoelho = 5;
	  	       }else if (frflexaoDeJoelho <= 0.45) {
	  	           pontoFlexaoJoelho = 6;
	  	       }else if (frflexaoDeJoelho <= 0.50) {
	  	           pontoFlexaoJoelho = 7;
	  	       }else if (frflexaoDeJoelho <= 0.52) {
	  	           pontoFlexaoJoelho = 8;
	  	       }else if (frflexaoDeJoelho <= 0.55) {
	  	           pontoFlexaoJoelho = 9;
	  	       }else if (frflexaoDeJoelho > 0.55) {
	  	           pontoFlexaoJoelho = 10;
	  	       }
	  		}
	  		somaDosPontos = pontoSupino + pontoRoscaDireta + pontoPuxadaFrente + pontoLegPres + pontoExtensaoJoelho + pontoFlexaoJoelho;
	        var resultado = "";
	        if (somaDosPontos <= 12) {
	            resultado = "Fraco";
	        }else if (somaDosPontos > 12 && somaDosPontos <= 24) {
	            resultado = "Satisfatório";
	        }else if (somaDosPontos > 24 && somaDosPontos <= 36) {
	            resultado = "Na média";
	        }else if (somaDosPontos > 36 && somaDosPontos <= 47) {
	            resultado = "Boa";
	        }else if (somaDosPontos >47) {
	            resultado = "Excelente";
	        }
	        
	  		document.querySelector('#classForcaMuscular').value = resultado;
	  	}
  	}
  	
  	function calculo1RM1(){
  		var pesoLevantado = pesoLevan1.value;
  		
  		var repeticao = repet1.value;
  		
  		if(pesoLevantado == 0 || repeticao == 0){
  			document.querySelector('#RM1').value = 0;
  		}else{
  			var rm = pesoLevantado / (1.0278 - 0.0278 * repeticao);
  			document.querySelector('#RM1').value = rm.toFixed(2);
  		}
  	}
  	
  	function calculo1RM2(){
  		var pesoLevantado = pesoLevan2.value;
  		
  		var repeticao = repet2.value;
  		
  		if(pesoLevantado == 0 || repeticao == 0){
  			document.querySelector('#RM2').value = 0;
  		}else{
  			var rm = pesoLevantado / (1.0278 - 0.0278 * repeticao);
  			document.querySelector('#RM2').value = rm.toFixed(2);
  		}
  	}
  	
  	function calculo1RM3(){
  		var pesoLevantado = pesoLevan3.value;
  		
  		var repeticao = repet3.value;
  		
  		if(pesoLevantado == 0 || repeticao == 0){
  			document.querySelector('#RM3').value = 0;
  		}else{
  			var rm = pesoLevantado / (1.0278 - 0.0278 * repeticao);
  			document.querySelector('#RM3').value = rm.toFixed(2);
  		}
  	}
  	
  	function calculo1RM4(){
  		var pesoLevantado = pesoLevan4.value;
  		
  		var repeticao = repet4.value;
  		
  		if(pesoLevantado == 0 || repeticao == 0){
  			document.querySelector('#RM4').value = 0;
  		}else{
  			var rm = pesoLevantado / (1.0278 - 0.0278 * repeticao);
  			document.querySelector('#RM4').value = rm.toFixed(2);
  		}
  	}
  </script>
</body>
</html>