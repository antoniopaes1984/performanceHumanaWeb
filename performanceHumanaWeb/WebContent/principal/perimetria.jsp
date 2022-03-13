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

        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-lg-11 col-xl-9">
              <section class="py-4 py-lg-5">
              <input type="text" name="nomeCliente" class="form-control text-center mb-4 mt-0" value="${avaliacao.nomeCliente}" readonly>
                <p class="text-center h4">Perimetria</p>
                
                <form  action="ServletPerimetria" method="post">
             		<input type="hidden" id="codAvaliacao" name="codAvaliacao" value="${avaliacao.codAvaliacao}"> 
									<input type="hidden" id="idade" name="idade" value="${avaliacao.idadeCliente}">
									<input type="hidden" id="sexo" name="sexo" value="${sexo}">
									<input type="hidden" id="altura" name="altura" value="${altura}">
									<input type="hidden" id="peso" name="peso" value="${peso}">
			<div class=" form-row col-12 border border-dark border-right-0 border-left-0 shadow-lg rounded" id="parq1">
				
				<div class="form-row mt-2">
					<div class="form-group col-6 col-md-3">
						<label>Ombro</label>
						<input type="text" class="form-control" id="txtCirOmbro" name="txtCirOmbro" value="${circunferencia.cirOmbro}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Toráx</label>
						<input type="text" class="form-control" id="txtCirTorax" name="txtCirTorax" value="${circunferencia.cirTorax}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Braço dir relax</label>
						<input type="text" class="form-control" id="txtCirBracoDirRelax" name="txtCirBracoDirRelax" value="${circunferencia.cirBracoDirRelax}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Braço esq relax</label>
						<input type="text" class="form-control" id="txtCirBracoEsqRelax" name="txtCirBracoEsqRelax" value="${circunferencia.cirBracoEsqRelax}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
				</div>
				
				<div class="form-row mt-2">
					<div class="form-group col-6 col-md-3">
						<label>Braço dir contraido</label>
						<input type="text" class="form-control" id="txtCirBracoDirCont" name="txtCirBracoDirCont" value="${circunferencia.cirBracoDirCont}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Braço esq contraido</label>
						<input type="text" class="form-control" id="txtCirBracoEsqCont" name="txtCirBracoEsqCont" value="${circunferencia.cirBracoEsqCont}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Antebraço dir</label>
						<input type="text" class="form-control" id="txtCirAnteBracoDir" name="txtCirAnteBracoDir" value="${circunferencia.cirAntebracoDir}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Antebraço esq</label>
						<input type="text" class="form-control" id="txtCirAnteBracoEsq" name="txtCirAnteBracoEsq" value="${circunferencia.cirAntebracoEsq}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
				</div>
				
				<div class="form-row mt-2">
					<div class="form-group col-6 col-md-3">
						<label>Cintura</label>
						<input type="text" class="form-control" id="txtCirCintura" name="txtCirCintura" value="${circunferencia.cirCintura}" onkeypress="return onlynumber();"  maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Ilíaco</label>
						<input type="text" class="form-control" id="txtCirIliaco" name="txtCirIliaco" value="${circunferencia.cirIliaco}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Abdomem</label>
						<input type="text" class="form-control" id="txtCirAbdomen" name="txtCirAbdomen" value="${circunferencia.cirAbdomen}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Quadril</label>
						<input type="text" class="form-control" id="txtCirQuadril" name="txtCirQuadril" value="${circunferencia.cirQuadril}" onkeypress="return onlynumber();" maxlength="5">
					</div>
				</div>
				
				<div class="form-row mt-2">
					<div class="form-group col-6 col-md-3">
						<label>Coxa proximal dir</label>
						<input type="text" class="form-control" id="txtCirCoxaProxDir" name="txtCirCoxaProxDir" value="${circunferencia.cirCoxaProxDir}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Coxa proximal esq</label>
						<input type="text" class="form-control" id="txtCirCoxaProxEsq" name="txtCirCoxaProxEsq" value="${circunferencia.cirCoxaProxEsq}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Coxa medial dir</label>
						<input type="text" class="form-control" id="txtCirCoxaMedialDir" name="txtCirCoxaMedialDir" value="${circunferencia.cirCoxaMediaDir}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Coxa medial esq</label>
						<input type="text" class="form-control" id="txtCirCoxaMedialEsq" name="txtCirCoxaMedialEsq" value="${circunferencia.cirCoxaMediaEsq}" onkeypress="return onlynumber();" maxlength="5">
					</div>
				</div>
				
				<div class="form-row mt-2">
					<div class="form-group col-6 col-md-3">
						<label>Coxa distal dir</label>
						<input type="text" class="form-control" id="txtCirCoxaDistalDir" name="txtCirCoxaDistalDir" value="${circunferencia.cirCoxaDistalDir}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Coxa distal esq</label>
						<input type="text" class="form-control" id="txtCirCoxaDistalEsq" name="txtCirCoxaDistalEsq" value="${circunferencia.cirCoxaDistalEsq}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Panturrilha dir</label>
						<input type="text" class="form-control" id="txtCirPanturrilhaDir" name="txtCirPanturrilhaDir" value="${circunferencia.cirPanturrilhaDir}" onkeypress="return onlynumber();" maxlength="5">
					</div>
					
					<div class="form-group col-6 col-md-3">
						<label>Panturrilha esq</label>
						<input type="text" class="form-control" id="txtCirPanturrilhaEsq" name="txtCirPanturrilhaEsq" value="${circunferencia.cirPanturrilhaEsq}" onkeypress="return onlynumber();" maxlength="5">
					</div>
				</div>
				
			</div>
			
			<div class="form-row" id="parametrosbiomedicos">
				<div class="form-group col-12 mt-2">
				<p class="text-center">Índices antropométricos</p>
				</div>
				
				<div class="form-group col-6 col-md-3" id="entradaDados">
					<label>Relação cintura/quadril</label>
					<input type="text" class="form-control mb-2" id="txtRelacaoCinturaQuadril" name="txtRelacaoCinturaQuadril" value="${circunferencia.relacaoCinturaQuadril}" readonly >
					<input type="text" class="form-control" id="txtResultadoRelacaoCinturaQuadril" name="txtResultadoRelacaoCinturaQuadril" value="${circunferencia.classRelacaoCinturaQuadril}" readonly>
				</div>
				
				<div class="form-group col-6 col-md-3" id="entradaDados">
					<label>Circunferência cintura</label>
					<input type="text" class="form-control mb-2" id="txtRelacaoCircunferenciaCintura" name="txtRelacaoCircunferenciaCintura" value="${circunferencia.relacaoCirCintura}"  readonly>
					<input type="text" class="form-control" id="txtResultadoRelacaoCircunferenciaCintura" name="txtResultadoRelacaoCircunferenciaCintura" value="${circunferencia.classRelacaoCirCintura}" readonly>
				</div>
				
				<div class="form-group col-6 col-md-3" id="entradaDados">
					<label>Relação cintura/estatura</label>
					<input type="text" class="form-control mb-2" id="txtRelacaoCinturaEstatura" name="txtRelacaoCinturaEstatura" value="${circunferencia.relacaoCinturaEstatura}" readonly>
					<input type="text" class="form-control" id="txtResultadoRelacaoCinturaEstatura" name="txtResultadoRelacaoCinturaEstatura" value="${circunferencia.classRelacaoCinturaEstatura}" readonly>
				</div>
				
				<div class="form-group col-6 col-md-3" id="entradaDados">
					<label>Índice de conicidade</label>
					<input type="text" class="form-control mb-2" id="txtIndiceConicidade" name="txtIndiceConicidade" value="${circunferencia.indiceConicidade}" readonly>
					<input type="text" class="form-control" id="txtResultadoIndiceConicidade" name="txtResultadoIndiceConicidade" value="${circunferencia.classIndiceConicidade}" readonly>
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
  <script>
  var cirCinturaEventListener = document.querySelector('#txtCirCintura');
  cirCinturaEventListener.addEventListener("change",calculaRelacaoCinturaQuadril);
  cirCinturaEventListener.addEventListener("change",circunferenciaCintura);
  cirCinturaEventListener.addEventListener("change",relacaoCinturaEstatura);
  cirCinturaEventListener.addEventListener("change",indiceConicidade);
  
  var cirQuadrilEventListener = document.querySelector('#txtCirQuadril');
  cirQuadrilEventListener.addEventListener("change",calculaRelacaoCinturaQuadril);
  
  function calculaRelacaoCinturaQuadril(){
	  	
		var cirCintura = document.querySelector('#txtCirCintura').value;
		var cirQuadril = document.querySelector('#txtCirQuadril').value;
		var idade = document.querySelector('#idade').value;
		var idadeConv = parseFloat(idade);
		var sexo = document.querySelector('#sexo').value;
		
		var cirCinturaConv = 0;
		var cirQuadrilConv = 0;
		
		if(cirCintura==""){
			cirCinturaConv = 0;
		}else{
			cirCinturaConv = parseFloat(cirCintura);
		}
		
		if(cirQuadril==""){
		cirQuadrilConv = 0;
		}else{
			cirQuadrilConv = parseFloat(cirQuadril);
		}
		var RelacaoCinturaQuadril = 0;
		
		
		if(cirCinturaConv > 0 && cirQuadrilConv > 0 && sexo=="F"){
			var resultado = "";
			RelacaoCinturaQuadril = cirCinturaConv / cirQuadrilConv;
			document.querySelector('#txtRelacaoCinturaQuadril').value = RelacaoCinturaQuadril.toFixed(2);
			if (idadeConv <= 60 && RelacaoCinturaQuadril <= 0.86) {
		          resultado = "Baixo risco";
		      }else if (idadeConv <=60 && RelacaoCinturaQuadril >0.86 ) {
		          resultado = " Alto risco";
		      }else if (idadeConv >60 && RelacaoCinturaQuadril <= 0.9) {
		          resultado = "Baixo risco";
		      }else if (idadeConv >60 && RelacaoCinturaQuadril > 0.9) {
		          resultado = "Alto risco";
		      }
			document.querySelector('#txtResultadoRelacaoCinturaQuadril').value = resultado;
		}else if(cirCinturaConv > 0 && cirQuadrilConv > 0 && sexo=="M"){
			relacaoCinturaQuadril = cirCinturaConv / cirQuadrilConv;
			document.querySelector('#txtRelacaoCinturaQuadril').value = relacaoCinturaQuadril.toFixed(2);
			var resultado = "";
			if (idadeConv <= 60 && relacaoCinturaQuadril <= 0.95) {
		           resultado = "Baixo risco";
		       }else if (idadeConv <=60 && relacaoCinturaQuadril >0.95 ) {
		           resultado = " Alto risco";
		       }else if (idadeConv >60 && relacaoCinturaQuadril <= 1.03) {
		           resultado = "Baixo risco";
		       }else if (idadeConv >60 && relacaoCinturaQuadril > 1.03) {
		           resultado = "Alto risco";
		       }
			document.querySelector('#txtResultadoRelacaoCinturaQuadril').value = resultado;
		}else{
			document.querySelector('#txtRelacaoCinturaQuadril').value = 0;
			document.querySelector('#txtResultadoRelacaoCinturaQuadril').value = "Sem classificação";
		}
	}
  
  function circunferenciaCintura(){
	  var cirCintura = document.querySelector('#txtCirCintura').value;
	  var cirCinturaConv = 0;
	  var sexo = document.querySelector('#sexo').value;
	  
		
		if(cirCintura==""){
			cirCinturaConv = 0;
		}else{
			cirCinturaConv = parseFloat(cirCintura);
		}
		
		document.querySelector('#txtRelacaoCircunferenciaCintura').value = cirCinturaConv;
	  if(sexo=="F"){
	  var resultado = "";
      if (cirCinturaConv<=80) {
          resultado = "Sem risco";
      }else if (cirCinturaConv<88) {
          resultado = "Com risco";
      }else if (cirCinturaConv>=88) {
          resultado = "Alto risco";
      }
      document.querySelector('#txtResultadoRelacaoCircunferenciaCintura').value = resultado;
	  }else{
		  
		  if(cirCinturaConv==0){
			  resultado = "Sem classificação";
		  }else if (cirCinturaConv<=94) {
	           resultado = "Sem risco";
	       }else if (cirCinturaConv<102) {
	           resultado = "Com risco";
	       }else if (cirCinturaConv>=102) {
	           resultado = "Alto risco";
	       }
		  document.querySelector('#txtResultadoRelacaoCircunferenciaCintura').value = resultado;
	  }
  }
  
  function relacaoCinturaEstatura(){
	  var cirCintura = document.querySelector('#txtCirCintura').value;
	  var cirCinturaConv = 0;
	  var altura = document.querySelector('#altura').value;
	  var alturaConv = 0
	  
	  
		if(cirCintura==""){
			cirCinturaConv = 0;
		}else{
			cirCinturaConv = parseFloat(cirCintura);
		}
	  
	  if(altura==""){
		  alturaConv = 0;
		}else{
			alturaConv = parseFloat(altura);
		}
	  
	 
	  
	  if(alturaConv>0 && cirCinturaConv>0){
		  var relacaoCinturaEstatura =  cirCinturaConv/(alturaConv * 100);
		  document.querySelector('#txtRelacaoCinturaEstatura').value = relacaoCinturaEstatura.toFixed(2);
		  var classificacao = "Sem classificação"
		  if (relacaoCinturaEstatura<=0.5) {
	          classificacao = "Baixo risco";
	      }else{
	          classificacao = "Alto risco";
	      }
		  document.querySelector('#txtResultadoRelacaoCinturaEstatura').value = classificacao;
	  }else{
		  document.querySelector('#txtRelacaoCinturaEstatura').value = 0;
		  document.querySelector('#txtResultadoRelacaoCinturaEstatura').value = "Sem classificação";
		  
	  }
	  
	  
	  
  }
  
  function indiceConicidade(){
	  var sexo = document.querySelector('#sexo').value;
	  var cirCintura = document.querySelector('#txtCirCintura').value;
	  var cirCinturaConv = 0;
	  alert('cirCintura '+cirCintura)
	  var altura = document.querySelector('#altura').value;
	  var alturaConv = 0
	  alert('altura '+altura)
	  var peso = document.querySelector('#peso').value;
	  var pesoConv = 0;
	  alert('peso '+peso)
	  
	  if(cirCintura==""){
			cirCinturaConv = 0;
		}else{
			cirCinturaConv = parseFloat(cirCintura);
		}
	  
	  if(altura==""){
		  alturaConv = 0;
		}else{
			alturaConv = parseFloat(altura);
		}
	  
	  if(peso==""){
		  pesoConv = 0;
	  }else{
		  pesoConv = parseFloat(peso);
	  }
	  alert("Antes do indice de conicidade")
	  if(pesoConv>0 && alturaConv >0 && cirCinturaConv>0){
		  var indiceConicidade = (cirCinturaConv/100)/(0.109 * (Math.sqrt(pesoConv /alturaConv)));
		  alert('Indice de conicidade :'+indiceConicidade)
		  document.querySelector('#txtIndiceConicidade').value = indiceConicidade.toFixed(2);
		  var classificacao = "Sem classificacao";
		  if(sexo="M"){
			  if (indiceConicidade<=1.25) {
		           classificacao = "Baixo risco";
		       }else{
		           classificacao = "Alto risco";
		       }
			  document.querySelector('#txtResultadoIndiceConicidade').value = classificacao;
		  }else{
			  if (indiceConicidade<=1.18) {
		           classificacao = "Baixo risco";
		       }else{
		           classificacao = "Alto risco";
		       }
			  document.querySelector('#txtResultadoIndiceConicidade').value = classificacao;
		  }
	  }else{
		  document.querySelector('#txtIndiceConicidade').value = 0;
		  document.querySelector('#txtResultadoIndiceConicidade').value = "Sem classificação";
	  }
	  
  }
  
  
  
  </script>
</body>
</html>