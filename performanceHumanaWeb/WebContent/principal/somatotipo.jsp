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
                <p class="text-center h4">Somatotipo</p>
                
                <form  action="ServletSomatotipo" method="post">
                <input type="hidden" name="codAvaliacao" value="${avaliacao.codAvaliacao}">
			<div class=" form-row col-12 border border-dark border-right-0 border-left-0 shadow-lg rounded" id="parq1">
				<div class="form-group col-12 mt-1">
					<p class="text-center">Dobras Cultâneas</p>
				</div>
				
				<div class="form-row mt-2">
					<div class="form-group col-6">
						<label>Tríceps</label>
						<input type="text" class="form-control" id="dcTriceps" name="dcTriceps" onkeypress="return onlynumber();"  maxlength="5" value="${somatotipo.dcTriceps}">
					</div>
					
					<div class="form-group col-6">
						<label>Subescapular</label>
						<input type="text" class="form-control" id="dcSubescapulatr" name="dcSubescapulatr" onkeypress="return onlynumber();"  maxlength="5" value="${somatotipo.dcSubEscapular}">
					</div>
					
					<div class="form-group col-6">
						<label>Suprailíaca</label>
						<input type="text" class="form-control" id=dcSupraIliaca name="dcSupraIliaca" onkeypress="return onlynumber();"  maxlength="5" value="${somatotipo.dcSupraIliaca}">
					</div>
					
					<div class="form-group col-6">
						<label>Panturrilha</label>
						<input type="text" class="form-control" id="dcPanturrilha" name="dcPanturrilha" onkeypress="return onlynumber();"  maxlength="5" value="${somatotipo.dcPanturrilha}">
					</div>
					
				</div>
				
			</div>
			
			<div class=" form-row col-12 border border-dark border-right-0 border-left-0 shadow-lg rounded" id="parq1">
				<div class="form-group col-12 mt-1">
					<p class="text-center">Perimetria</p>
				</div>
				
				<div class="form-row col-12 mt-2">
					<div class="form-group col-6">
						<label>Braço direito relaxado</label>
						<input type="text" class="form-control" id="cirBracoDirRelax" name="cirBracoDirRelax" onkeypress="return onlynumber();"  maxlength="5" value="${somatotipo.circBracoDireitoRelax}">
					</div>
					
					<div class="form-group col-6">
						<label>Panturrilha</label>
						<input type="text" class="form-control" id="cirPanturrilha" name="cirPanturrilha" onkeypress="return onlynumber();"  maxlength="5" value="${somatotipo.circPanturrilha}">
					</div>
					
					
					
				</div>
				
			</div>
			
			<div class=" form-row col-12 border border-dark border-right-0 border-left-0 shadow-lg rounded" id="parq1">
				<div class="form-group col-12 mt-1">
					<p class="text-center">Diâmetros Ósseos</p>
				</div>
				
				<div class="form-row col-12 mt-2">
					<div class="form-group col-6">
						<label>Úmero</label>
						<input type="text" class="form-control" id="diametroUmero" name="diametroUmero" onkeypress="return onlynumber();"  maxlength="5" value="${somatotipo.diamUmero}">
					</div>
					
					<div class="form-group col-6">
						<label>Fêmur</label>
						<input type="text" class="form-control" id="diametroFemur" name="diametroFemur" onkeypress="return onlynumber();"  maxlength="5" value="${somatotipo.diamFemur}">
					</div>
				</div>
				
			</div>
			
			<div class=" form-row col-12 border border-dark border-right-0 border-left-0 shadow-lg rounded" id="parq1">
				<div class="form-group col-12 mt-1">
					<p class="text-center ">Outras Medidas</p>
				</div>
				
				<div class="form-row col-12 mt-2">
					<div class="form-group col">
						<label>Peso</label>
					<input type="text" class="form-control" id="peso" name="peso" onkeypress="return onlynumber();"  maxlength="7" value="${somatotipo.peso}">
					</div>
					
					<div class="form-group col-6">
						<label>Altura(metros)</label>
						<input type="text" class="form-control" id="altura" name="altura" onkeypress="return onlynumber();"  maxlength="4" value="${somatotipo.altura}">
					</div>
				</div>
				
			</div>
			
			<div class="form-row  col-12 border border-dark border-left-0 border-right-0 border-bottom-0   rounded " id="parq1">
					
					<div class="form-group col-12 mt-1">
						<p class="text-center h4">Resultado</p>
					</div>
					
					
					<div class="form-group col">
					<label class="col-12">Endomorfia</label>
						<input type="text" class="form-control col-12" id="endomorfia" name="endomorfia" value="${somatotipo.somatoTipoEndomorfia}" readonly>
					</div>
					
					
					
					<div class="form-group col">
						<label class="col-12">Mesomorfia</label>
						<input type="text" class="form-control col-12" id="mesomorfia" name="mesomorfia" value="${somatotipo.somatoTipoMesomorfia}" readonly>
					</div>
					
					
					
					<div class="form-group col">
					<label class="col-12">Ectomorfia</label>
						<input type="text" class="form-control col-12" id="ectomorfia" name="ectomorfia" value="${somatotipo.somatoTipoEctomorfia}" readonly>
					</div>
					
			</div>
			
			<div class="form-row col-12 border border-dark border-left-0 border-right-0 border-top-0  rounded" id="parametrosbiomedicos">

				<div class="form-group col-7 mx-auto text-center mt-1" id="entradaDados">
				<label>Classificação</label>
					<input type="text" class="form-control mb-2 text-center" id="classificacao" name="classificacao" value="${somatotipo.classificacaoSomatotipo}" readonly>
					<input type="text" class="form-control text-center" id="acao" name="acao"  value="${somatotipo.acaoSomatotipo}" readonly>
				</div>
				
			</div>
			
			
		
				
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
  <script type="text/javascript">
  var dcTriceps = document.querySelector('#dcTriceps');
  dcTriceps.addEventListener("change",somatotipo);
  
  var dcSubescapulatr = document.querySelector('#dcSubescapulatr');
  dcSubescapulatr.addEventListener("change",somatotipo);
  
  var dcSupraIliaca = document.querySelector('#dcSupraIliaca');
  dcSupraIliaca.addEventListener("change",somatotipo);
  
  var dcPanturrilha = document.querySelector('#dcPanturrilha');
  dcPanturrilha.addEventListener("change",somatotipo);
  
  var cirBracoDirRelax = document.querySelector('#cirBracoDirRelax');
  cirBracoDirRelax.addEventListener("change",somatotipo);
  
  var cirPanturrilha = document.querySelector('#cirPanturrilha');
  cirPanturrilha.addEventListener("change",somatotipo);
  
  var diametroUmero = document.querySelector('#diametroUmero');
  diametroUmero.addEventListener("change",somatotipo);
  
  var diametroFemur = document.querySelector('#diametroFemur');
  diametroFemur.addEventListener("change",somatotipo);
  
  var peso = document.querySelector('#peso');
  peso.addEventListener("change",somatotipo);
  
  var altura = document.querySelector('#altura');
  altura.addEventListener("change",somatotipo);
  
	  function onlynumber(evt) {
		   var theEvent = evt || window.event;
		   var key = theEvent.keyCode || theEvent.which;
		   key = String.fromCharCode( key );
		   //var regex = /^[0-9.,]+$/;
		   var regex = /^[0-9.]+$/;
		   if( !regex.test(key) ) {
		      theEvent.returnValue = false;
		      if(theEvent.preventDefault) theEvent.preventDefault();
		   }
		}
	  
	  function somatotipo(){
		  var dcTriceps = document.querySelector('#dcTriceps').value;
		  var dcSubescapulatr = document.querySelector('#dcSubescapulatr').value;
		  var dcSupraIliaca = document.querySelector('#dcSupraIliaca').value;
		  var dcPanturrilha = document.querySelector('#dcPanturrilha').value;
		  var cirBracoDirRelax = document.querySelector('#cirBracoDirRelax').value;
		  var cirPanturrilha = document.querySelector('#cirPanturrilha').value;
		  var diametroUmero = document.querySelector('#diametroUmero').value;
		  var diametroFemur = document.querySelector('#diametroFemur').value;
		  var peso = document.querySelector('#peso').value;
		  var altura = document.querySelector('#altura').value;
		  
		  var dcTricepsConv = 0;
		  var dcSubescapulatrConv = 0;
		  var dcSupraIliacaConv = 0;
		  var dcPanturrilhaConv = 0;
		  var cirBracoDirRelaxConv = 0;
		  var cirPanturrilhaConv = 0;
		  var diametroUmeroConv = 0;
		  var diametroFemurConv = 0;
		  var pesoConv = 0;
		  var alturaConv = 0;
		  
		  if(dcTriceps==""){
			  dcTricepsConv = 0;
		  }else{
			  dcTricepsConv = parseFloat(dcTriceps);
		  }
		  
		  if(dcSubescapulatr==""){
			  dcSubescapulatrConv = 0;
		  }else{
			  dcSubescapulatrConv = parseFloat(dcSubescapulatr);
		  }
		  
		  if(dcSupraIliaca==""){
			  dcSupraIliacaConv = 0;
		  }else{
			  dcSupraIliacaConv = parseFloat(dcSupraIliaca);
		  }
		  
		  if(dcPanturrilha==""){
			  dcPanturrilhaConv = 0;
		  }else{
			  dcPanturrilhaConv = parseFloat(dcPanturrilha);
		  }
		  
		  if(cirBracoDirRelax==""){
			  cirBracoDirRelaxConv = 0;
		  }else{
			  cirBracoDirRelaxConv = parseFloat(cirBracoDirRelax);
		  }
		  
		  if(cirPanturrilha==""){
			  cirPanturrilhaConv = 0;
		  }else{
			  cirPanturrilhaConv = parseFloat(cirPanturrilha);
		  }
		  
		  if(diametroUmero==""){
			  diametroUmeroConv = 0;
		  }else{
			  diametroUmeroConv = parseFloat(diametroUmero);
		  }
		  
		  if(diametroFemur==""){
			  diametroFemurConv = 0;
		  }else{
			  diametroFemurConv = parseFloat(diametroFemur);
		  }
		  
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
		  
		  var indicePonderal =  (alturaConv * 100)/(Math.pow(pesoConv, 0.3333));;
		  
		  if(dcTricepsConv > 0 && dcSubescapulatrConv > 0 && dcSupraIliacaConv > 0 && dcPanturrilhaConv > 0 && cirBracoDirRelaxConv > 0 && cirPanturrilhaConv > 0 && diametroUmeroConv > 0 && diametroFemurConv > 0 && pesoConv > 0 && alturaConv > 0){
			  var endomorfia = (-0.7182 + (0.1451 * ((dcTricepsConv + dcSubescapulatrConv + dcSupraIliacaConv) * (170.18/(alturaConv * 100))))-
                      (0.00068 * Math.pow(((dcTricepsConv + dcSubescapulatrConv + dcSupraIliacaConv) * (170.18/(alturaConv * 100))),2))+
                      (0.0000014 * Math.pow(((dcTricepsConv + dcSubescapulatrConv + dcSupraIliacaConv) * (170.18/(alturaConv * 100))),3)));
		 		document.querySelector('#endomorfia').value = endomorfia.toFixed(2);
			  var mesomorfia =(0.858 * diametroUmeroConv)+(0.601 * diametroFemurConv)+(0.188 *(cirBracoDirRelaxConv-(dcTricepsConv/10)))+(0.161 *(cirPanturrilhaConv-(dcPanturrilhaConv/10)))-(0.131 * (alturaConv * 100))+4.5;
			  document.querySelector('#mesomorfia').value = mesomorfia.toFixed(2);
		 		
		 	  var  ectomorfo = 0;
		        if (indicePonderal > 40.75) {
		            ectomorfo = indicePonderal * 0.732 - 28.58;
		        }else if (indicePonderal>38.25) {
		            ectomorfo = indicePonderal * 0.463 - 17.63;
		        }else {
		            ectomorfo = 0.1;
		        }
		        document.querySelector('#ectomorfia').value = ectomorfo.toFixed(2);
                
		        var classificacao = "";
		          if (endomorfia>mesomorfia   && endomorfia>ectomorfo) {
		        	  classificacao = "Endomorfo";
		          }else if (mesomorfia> endomorfia && mesomorfia>ectomorfo) {
		        	  classificacao = "mesomorfo";
		          }else if (ectomorfo>endomorfia && ectomorfo>mesomorfia) {
		        	  classificacao = "Ectomorfo";
		          }
		          document.querySelector('#classificacao').value = classificacao;
		          
		          var somatipoParaAcao = 0;
		          
		            if (classificacao == "Endomorfo") {
		                somatipoParaAcao = endomorfia;
		            }else if (classificacao == "mesomorfo") {
		                somatipoParaAcao = mesomorfia;
		            }else{
		                somatipoParaAcao = ectomorfo;
		            }
		            
		            var acao = "";
		            if (classificacao == "Endomorfo" && somatipoParaAcao>2) {
		                acao = "Diminuir gordura corporal";
		            }else if (classificacao == "Endomorfo" && somatipoParaAcao==2) {
		                acao = "Manter ou diminuir gordura corporal";
		            }else if (classificacao == "Endomorfo" && somatipoParaAcao<2) {
		                acao ="Baixo teor de gordura";
		            }
		            
		            if (classificacao == "mesomorfo" && somatipoParaAcao<5) {
		                acao = "Aumentar massa muscular";
		            }else if (classificacao == "mesomorfo" && somatipoParaAcao>=5) {
		                acao = "Manter ou aumentar massa muscular";
		            }
		            
		            if (classificacao == "Ectomorfo" && somatipoParaAcao<3) {
		                acao = "Aumentar massa muscular";
		            }else if (classificacao == "Ectomorfo" && somatipoParaAcao>=3) {
		                acao = "Manter ou aumentar massa muscular";
		            }
		            
		            
		            document.querySelector('#acao').value = acao;
		  }else{
			  document.querySelector('#endomorfia').value = "0";
			  document.querySelector('#mesomorfia').value ="0";
			  document.querySelector('#ectomorfia').value = "0";
			  document.querySelector('#classificacao').value = "Sem classificação";
			  document.querySelector('#acao').value = "Não informado";
			  
		  }
		  
	  }
  </script>y>
</html>