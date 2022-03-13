<%@page import="model.ModelAha"%>
<%@page import="javax.naming.Context"%>
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
      <jsp:include page="menulateralresponsivo2.jsp"></jsp:include>
      <div class="main-container">

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-11 col-xl-9">
              <section class="py-4 py-lg-5">
              <input type="text" name="nomeCliente" class="form-control text-center mb-4 mt-0" value="${avaliacao.nomeCliente}" readonly>
              <p class="text-center h4">Aha</p>
              <hr>
                	<form  action="ServletAha" method="post">
                <input type="hidden" name="codAvaliacao" value="${aha.codAvaliacao}">
      			
		
			<div class="form-row  col border border-dark border-left-0 border-top-0 border-right-0" id="parq1">
				<div class="form-group input-group-append col-9" id="button-addon4">
					<label>Hitórico</label>
				</div>
				<div class="form-group input-group-append col-9" id="button-addon4">
					<label>Você tem ou já teve:</label>
				</div>
				<div class="form-check col-12">
				<%
				ModelAha aha = new ModelAha();
				
				aha = (ModelAha)request.getAttribute("aha");
				if(aha.isHistPerg1()){%>
				<input class="form-check-input" type="checkbox" name="historico1" value="historico1" id="historicopergunta1"  checked>
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico1" value="historico1" id="historicopergunta1" >
				<%} %>
				  <label class="form-check-label" for="labelPergunta1">
				    Um ataque cardíaco
				  </label>
				</div>
				
				<div class="form-check col-12">
				<%
				if(aha.isHistPerg2()){%>
				 <input class="form-check-input" type="checkbox" name="historico2" value="historico2" id="historicopergunta2" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico2" value="historico2" id="historicopergunta2" >
				<%} %>
				 
				  <label class="form-check-label" for="labelPergunta2">
				    Uma cirugia cardíaca
				  </label>
				</div>
				
				<div class="form-check col-12">
				<%
				if(aha.isHistPerg3()){%>
				 <input class="form-check-input" type="checkbox" name="historico3" value="historico3" id="historicopergunta3" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico3" value="historico3" id="historicopergunta3" >
				<%} %>
				  <label class="form-check-label" for="labelPergunta3">
				    Uma cateterização cardiaca
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				if(aha.isHistPerg4()){%>
				 <input class="form-check-input" type="checkbox" name="historico4" value="historico4" id="historicopergunta4" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico4" value="historico4" id="historicopergunta4" >
				<%} %>
				  <label class="form-check-label" for="labelPergunta4">
				    Uma angioplastia coronária 
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				if(aha.isHistPerg5()){%>
				 <input class="form-check-input" type="checkbox" name="historico5" value="historico5" id="historicopergunta5" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico5" value="historico5" id="historicopergunta5" >
				<%} %>
				  <label class="form-check-label" for="labelPergunta5">
				    Um implante de marcapasso 
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				if(aha.isHistPerg6()){%>
				 <input class="form-check-input" type="checkbox" name="historico6" value="historico6" id="historicopergunta6" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico6" value="historico6" id="historicopergunta6" >
				<%} %>
				  <label class="form-check-label" for="labelPergunta6">
				    Um transplante cardíaco 
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				if(aha.isHistPerg7()){%>
				 <input class="form-check-input" type="checkbox" name="historico7" value="historico7" id="historicopergunta7" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico7" value="historico7" id="historicopergunta7" >
				<%} %>
				  <label class="form-check-label" for="labelPergunta7">
				    Um colapso cardíaco 
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				if(aha.isHistPerg8()){%>
				 <input class="form-check-input" type="checkbox" name="historico8" value="historico8" id="historicopergunta8" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico8" value="historico8" id="historicopergunta8" >
				<%} %>
				  <label class="form-check-label" for="labelPergunta8">
				    Uma doença de válvula cardíaca 
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				if(aha.isHistPerg9()){%>
				 <input class="form-check-input" type="checkbox" name="historico9" value="historico9" id="historicopergunta9" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico9" value="historico9" id="historicopergunta9" >
				<%} %>
				  <label class="form-check-label" for="labelPergunta9">
				    Uma desfiblilação ou distúrbio de ritmo cardíaco 
				  </label>
				</div>
				
				<div class="form-check col-12 ">
				  <%
				if(aha.isHistPerg10()){%>
				 <input class="form-check-input" type="checkbox" name="historico10" value="historico10" id="historicopergunta10" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="historico10" value="historico10" id="historicopergunta10" >
				<%} %>
				  <label class="form-check-label" for="labelPergunta10">
				    Uma doença cardiaca congênita 
				  </label>
				</div>
			</div>
			
			<div class="form-row  col border border-dark border-left-0 border-top-0 border-right-0" id="parq1">
				<div class="form-group input-group-append col-9" id="button-addon4">
					
					<div class="form-group input-group-append col-9" id="button-addon4">
						<label>Sintomas:</label>
					</div>
					
				</div>
				<div class="form-check col-12">
				<%
				if(aha.isSintoPerg1()){%>
				 <input class="form-check-input" type="checkbox" name="sintomaspergunta1" id="sintomaspergunta1" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="sintomaspergunta1" id="sintomaspergunta1" >
				<%} %>
				  <label class="form-check-label" for="sintomaspergunta1">
				    Já experimentou desconforto no peito com o esforço?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				if(aha.isSintoPerg2()){%>
				 <input class="form-check-input" type="checkbox" name="sintomaspergunta2" id="sintomaspergunta2" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="sintomaspergunta2" id="sintomaspergunta2" >
				<%} %>
				  <label class="form-check-label" for="sintomaspergunta2">
				    Já experimentou falta de ar sem motivo?
				  </label>
				</div>
				
				<div class="form-check col-12">
				 <%
				if(aha.isSintoPerg3()){%>
				 <input class="form-check-input" type="checkbox" name="sintomaspergunta3" id="sintomaspergunta3" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="sintomaspergunta3" id="sintomaspergunta3" >
				<%} %>
				  <label class="form-check-label" for="sintomaspergunta3">
				    Já experimentou tonturas,desmaios ou perda de sentidos?
				  </label>
				</div>
				
				<div class="form-check col-12">
				 <%
				if(aha.isSintoPerg4()){%>
				 <input class="form-check-input" type="checkbox" name="sintomaspergunta4" id="sintomaspergunta4" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="sintomaspergunta4" id="sintomaspergunta4" >
				<%} %>
				  <label class="form-check-label" for="sintomaspergunta4">
				    Já experimentou inchaço no tornozelo?
				  </label>
				</div>
				
				<div class="form-check col-12">
				<%
				if(aha.isSintoPerg5()){
				%>
				 <input class="form-check-input" type="checkbox" name="sintomaspergunta5" id="sintomaspergunta5" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="sintomaspergunta5" id="sintomaspergunta5" >
				<%} %>
				  <label class="form-check-label" for="sintomaspergunta5">
				    Já experimentou uma consciência desagradável dos batimentos cardiacos, que são rápidos ou fortes?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				if(aha.isSintoPerg6()){%>
				 <input class="form-check-input" type="checkbox" name="sintomaspergunta6" id="sintomaspergunta6" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="sintomaspergunta6" id="sintomaspergunta6" >
				<%} %>
				  <label class="form-check-label" for="sintomaspergunta6">
				    Toma remédio para o coração?
				  </label>
				</div>
				
			</div>
		
			
			<div class="form-row  col border border-dark border-left-0 border-top-0 border-right-0" id="parq1">
				<div class="form-group input-group-append col-9" id="button-addon4">
					<label>Outras questões de saúde:</label>
				</div>
				
				<div class="form-check col-12">
				<%
				  if(aha.isSaudePerg1()){%>
				 <input class="form-check-input" type="checkbox" name="saudepergunta1" id="saudepergunta1" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="saudepergunta1" id="saudepergunta1" >
				<%} %>
				  <label class="form-check-label" for="saudepergunta1">
				    Você tem diabetes?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isSaudePerg2()){%>
				 <input class="form-check-input" type="checkbox" name="saudepergunta2" id="saudepergunta2" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="saudepergunta2" id="saudepergunta2" >
				<%} %>
				  <label class="form-check-label" for="saudepergunta2">
				    Você possui asma ou doença pulmonar?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isSaudePerg3()){%>
				 <input class="form-check-input" type="checkbox" name="saudepergunta3" id="saudepergunta3" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="saudepergunta3" id="saudepergunta3" >
				<%} %>
				  <label class="form-check-label" for="saudepergunta3">
				    Você já sentiu queimação ou caimbras em seus MMII?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isSaudePerg4()){%>
				 <input class="form-check-input" type="checkbox" name="saudepergunta4" id="saudepergunta4" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="saudepergunta4" id="saudepergunta4" >
				<%} %>
				  <label class="form-check-label" for="saudepergunta4">
				    Você tem algum problema musculo-esquelético?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isSaudePerg5()){%>
				 <input class="form-check-input" type="checkbox" name="saudepergunta5" id="saudepergunta5" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="saudepergunta5" id="saudepergunta5" >
				<%} %>
				  <label class="form-check-label" for="saudepergunta5">
				    Você tem preocupações quanto a segurança de se exercitar?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isSaudePerg6()){%>
				 <input class="form-check-input" type="checkbox" name="saudepergunta6" id="saudepergunta6" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="saudepergunta6" id="saudepergunta6" >
				<%} %>
				  <label class="form-check-label" for="saudepergunta6">
				    Você tem alguma prescrição para medicamentos?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isSaudePerg7()){%>
				 <input class="form-check-input" type="checkbox" name="saudepergunta7" id="saudepergunta7" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="saudepergunta7" id="saudepergunta7" >
				<%} %>
				  <label class="form-check-label" for="saudepergunta7">
				    Você esta grávida?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isSaudePerg8()){%>
				 <input class="form-check-input" type="checkbox" name="saudepergunta8" id="saudepergunta8" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="saudepergunta8" id="saudepergunta8" >
				<%} %>
				  <label class="form-check-label" for="saudepergunta8">
				    Você possui alguma doença da tireóide, dos rins ou fígado?
				  </label>
				</div>
				
			</div>
			
			<div class="form-row  col border border-dark border-left-0 border-top-0 border-right-0" id="parq1">
				<div class="form-group input-group-append col-9" id="button-addon4">
					<label>Fatores de riscos cardiovasculares:</label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isCardioPerg1()){%>
				 <input class="form-check-input" type="checkbox" name="cardiopergunta1" id="cardiopergunta1" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="cardiopergunta1" id="cardiopergunta1" >
				<%} %>
				  <label class="form-check-label" for="cardiopergunta1">
				    Você fuma ou parou de fumar a menos de 6 meses?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isCardioPerg2()){%>
				 <input class="form-check-input" type="checkbox" name="cardiopergunta2" id="cardiopergunta2" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="cardiopergunta2" id="cardiopergunta2" >
				<%} %>
				  <label class="form-check-label" for="cardiopergunta2">
				    Sua pressão arterial é superior a 140/90 mmHg?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isCardioPerg3()){%>
				 <input class="form-check-input" type="checkbox" name="cardiopergunta3" id="cardiopergunta3" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="cardiopergunta3" id="cardiopergunta3" >
				<%} %>
				  <label class="form-check-label" for="cardiopergunta3">
				    Seu colesterol sanguíneo é superior a 200mg/dl?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isCardioPerg4()){%>
				 <input class="form-check-input" type="checkbox" name="cardiopergunta4" id="cardiopergunta4" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="cardiopergunta4" id="cardiopergunta4" >
				<%} %>
				  <label class="form-check-label" for="cardiopergunta4">
				    O seu pai ou irmão(antes dos 55 anos) ou mãe e irmã (antes de 65 anos), teve ou tiverem um ataque cardiaco, ou fez/fizeram uma cirurgia cardiaca?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isCardioPerg5()){%>
				 <input class="form-check-input" type="checkbox" name="cardiopergunta5" id="cardiopergunta5" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="cardiopergunta5" id="cardiopergunta5" >
				<%} %>
				  <label class="form-check-label" for="cardiopergunta5">
				    Seu açucar sanguíneo é superior ao ideal?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isCardioPerg6()){%>
				 <input class="form-check-input" type="checkbox" name="cardiopergunta6" id="cardiopergunta6" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="cardiopergunta6" id="cardiopergunta6" >
				<%} %>
				  <label class="form-check-label" for="cardiopergunta6">
				    Você faz menos que 120 min por semana de atividade física moderada(que levem a um discreto aumento da respiração)?
				  </label>
				</div>
				
				<div class="form-check col-12">
				  <%
				  if(aha.isCardioPerg7()){%>
				 <input class="form-check-input" type="checkbox" name="cardiopergunta7" id="cardiopergunta7" checked >
				<%}else {%>
				<input class="form-check-input" type="checkbox" name="cardiopergunta7" id="cardiopergunta7" >
				<%} %>
				  <label class="form-check-label" for="cardiopergunta7">
				    Você esta a mais de 9 kg a cima do seu peso ideal?
				  </label>
				</div>
				
			</div>
		
			<div class="form-row  col-12" id="parq1">
			
				<div class="form-group input-group-append col-12" id="button-addon4">
					<input class="form-control mt-2" type="text" name="situacaoAha" id="situacaoAha" value="${aha.situacao}" readonly>
				</div>
			
				<div class="form-group input-group-append" >
				    <button type="submit" class="btn btn-primary " id="botaoSalvar" >Salvar</button>
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
</body>
<script>
	
document.getElementById("historicopergunta1").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("historicopergunta2").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("historicopergunta3").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("historicopergunta4").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("historicopergunta5").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("historicopergunta6").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("historicopergunta7").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("historicopergunta8").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("historicopergunta9").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("historicopergunta10").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("sintomaspergunta1").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("sintomaspergunta2").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("sintomaspergunta3").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("sintomaspergunta4").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("sintomaspergunta5").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("sintomaspergunta6").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("saudepergunta1").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("saudepergunta2").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("saudepergunta3").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("saudepergunta4").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("saudepergunta5").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("saudepergunta6").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("saudepergunta7").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("saudepergunta8").onclick = function () {
	if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
};

document.getElementById("cardiopergunta1").onclick = function () {
    if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
    
};

document.getElementById("cardiopergunta2").onclick = function () {
    if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
    
};

document.getElementById("cardiopergunta3").onclick = function () {
    if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
    
};

document.getElementById("cardiopergunta4").onclick = function () {
    if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
    
};

document.getElementById("cardiopergunta5").onclick = function () {
    if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
    
};

document.getElementById("cardiopergunta6").onclick = function () {
    if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
    
};

document.getElementById("cardiopergunta7").onclick = function () {
    if (historicopergunta1.checked || historicopergunta2.checked || historicopergunta3.checked || historicopergunta4.checked || historicopergunta5.checked || historicopergunta6.checked || historicopergunta7.checked || historicopergunta8.checked || historicopergunta9.checked || historicopergunta10.checked ||
    		sintomaspergunta1.checked  || sintomaspergunta2.checked  || sintomaspergunta3.checked  || sintomaspergunta4.checked  || sintomaspergunta5.checked  || sintomaspergunta6.checked || 
    		saudepergunta1.checked  || saudepergunta2.checked  || saudepergunta3.checked  || saudepergunta4.checked  || saudepergunta5.checked  || saudepergunta6.checked  || saudepergunta7.checked  || saudepergunta8.checked) {
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else if((cardiopergunta1.checked && cardiopergunta2.checked) || (cardiopergunta1.checked && cardiopergunta3.checked) || (cardiopergunta1.checked && cardiopergunta4.checked) || (cardiopergunta1.checked && cardiopergunta5.checked) || (cardiopergunta1.checked && cardiopergunta6.checked) || (cardiopergunta1.checked && cardiopergunta7.checked)
    		|| (cardiopergunta2.checked && cardiopergunta1.checked) || (cardiopergunta2.checked && cardiopergunta3.checked) || (cardiopergunta2.checked && cardiopergunta4.checked) || (cardiopergunta2.checked && cardiopergunta5.checked) || (cardiopergunta2.checked && cardiopergunta6.checked) || (cardiopergunta2.checked && cardiopergunta7.checked)
    		|| (cardiopergunta3.checked && cardiopergunta1.checked) || (cardiopergunta3.checked && cardiopergunta2.checked) || (cardiopergunta3.checked && cardiopergunta4.checked) || (cardiopergunta3.checked && cardiopergunta5.checked) || (cardiopergunta3.checked && cardiopergunta6.checked) || (cardiopergunta3.checked && cardiopergunta7.checked)
    		|| (cardiopergunta4.checked && cardiopergunta1.checked) || (cardiopergunta4.checked && cardiopergunta2.checked) || (cardiopergunta4.checked && cardiopergunta3.checked) || (cardiopergunta4.checked && cardiopergunta5.checked) || (cardiopergunta4.checked && cardiopergunta6.checked) || (cardiopergunta4.checked && cardiopergunta7.checked)
    		|| (cardiopergunta5.checked && cardiopergunta1.checked) || (cardiopergunta5.checked && cardiopergunta2.checked) || (cardiopergunta5.checked && cardiopergunta3.checked) || (cardiopergunta5.checked && cardiopergunta4.checked) || (cardiopergunta5.checked && cardiopergunta6.checked) || (cardiopergunta5.checked && cardiopergunta7.checked)
    		|| (cardiopergunta6.checked && cardiopergunta1.checked) || (cardiopergunta6.checked && cardiopergunta2.checked) || (cardiopergunta6.checked && cardiopergunta3.checked) || (cardiopergunta6.checked && cardiopergunta4.checked) || (cardiopergunta6.checked && cardiopergunta5.checked) || (cardiopergunta6.checked && cardiopergunta7.checked)){
    	document.getElementById('situacaoAha').value = "Necessário acompanhamento médico";
    } else{
    	document.getElementById('situacaoAha').value = "Não é necessário acompanhamento médico";   
    }
    
};


		
		
	
</script>
</html>