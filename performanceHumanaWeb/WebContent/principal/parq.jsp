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
              <p class="text-center h4">ParQ</p>
              <hr>
                	<form action="ServletParq" method="post">
                <input type="hidden" name="codAvaliacao" value="${parq.codAvaliacao}">
		<div id="divExterna">
			<div class="form-row  col-12 " id="parq1">
				
				<div class="form-group input-group-append col-9 " id="button-addon4">
					<textarea class="form-control" rows="3" cols="74" readonly="readonly">Seu médico já disse que você possui um problema cardiaco e recomendou atividades físicas apenas sob supervisão médica?</textarea>
				</div>
				
				<div class="col-3">
				<select id="selectPergunta1"
						name="selectPergunta1" class="form-control col-12" onChange="ChecaSituacao(this.value)">
						<option><c:out value="${parq.pergunta1}"></c:out></option>
						<option>Não</option>
						<option>Sim</option>
					</select>
				</div>
				
				<div class="form-group input-group-append col-9" id="button-addon4">
					<textarea class="form-control" rows="3" cols="74" readonly="readonly">Você tem dor no peito provocada por atividades físicas?</textarea>
				</div>
				
				<div class="col-3">
				<select id="selectPergunta2"
						name="selectPergunta2" class="form-control col-12" onChange="ChecaSituacao(this.value)">
						<option><c:out value="${parq.pergunta2}"></c:out></option>
						<option>Não</option>
						<option>Sim</option>
					</select>
				</div>
				
				<div class="form-group input-group-append col-9" id="button-addon4">
					<textarea class="form-control" rows="3" cols="74" readonly="readonly">Você sentiu dor no peito no último mês?</textarea>
				</div>
				
				<div class="col-3">
					<select id="selectPergunta3"
						name="selectPergunta3" class="form-control col-12" onChange="ChecaSituacao(this.value)">
						<option><c:out value="${parq.pergunta3}"></c:out></option>
						<option>Não</option>
						<option>Sim</option>
					</select>
				</div>
				
				<div class="form-group input-group-append col-9" id="button-addon4">
					<textarea class="form-control" rows="3" cols="74" readonly="readonly">Você já perdeu a consciência em alguma ocasião ou sofreu alguma queda em virtude de tontura?</textarea>
				</div>
				<div class="col-3">
					<select id="selectPergunta4"
						name="selectPergunta4" class="form-control col-12" onChange="ChecaSituacao(this.value)">
						<option><c:out value="${parq.pergunta4}"></c:out></option>
						<option>Não</option>
						<option>Sim</option>
					</select>
				</div>
				
				<div class="form-group input-group-append col-9" id="button-addon4">
					<textarea class="form-control" rows="3" cols="74" readonly="readonly">Você tem algum problema ósseo ou articular que poderia agravar-se com a pratica de atividade física?</textarea>
				</div>
				
				<div class="col-3">
				<select id="selectPergunta5"
						name="selectPergunta5" class="form-control col-12" onChange="ChecaSituacao(this.value)">
						<option><c:out value="${parq.pergunta5}"></c:out></option>
						<option>Não</option>
						<option>Sim</option>
					</select>
				</div>
				
				<div class="form-group input-group-append col-9" id="button-addon4">
					<textarea class="form-control" rows="3" cols="74" readonly="readonly">Algum médico já lhe prescreu medicamento para pressão arterial ou para o coração?</textarea>
				</div>
				
				<div class="col-3">
				<select id="selectPergunta6"
						name="selectPergunta6" class="form-control col-12" onChange="ChecaSituacao(this.value)">
						<option><c:out value="${parq.pergunta6}"></c:out></option>
						<option>Não</option>
						<option>Sim</option>
					</select>
				</div>
				
				<div class="form-group input-group-append col-9" id="button-addon4">
					<textarea class="form-control" rows="3" cols="74" readonly="readonly">Você tem conhecimento, por informação médica ou pela própria experiência, de algum motivo que poderia impedi-lo de participar de atividades físicas sem supervisão médica?</textarea>
				</div>
				
				<div class="col-3">
				<select id="selectPergunta7"
						name="selectPergunta7" class="form-control col-12" onChange="ChecaSituacao(this.value)" >
						<option><c:out value="${parq.pergunta7}"></c:out></option>
						<option>Não</option>
						<option>Sim</option>
					</select>
				</div>
				
				<div class="form-group input-group-append col-12" id="button-addon4">
					<input class="form-control col-9" id="situacaoParq" name="situacaoParq" readonly value="${parq.situacao}">
				</div>
				
			</div>
			</div>
		
			<div class="form-row  col-12" id="parq1">
			<hr>
				<div class="form-group input-group-append" >
				    <button type="submit" class="btn btn-primary" id="botaoSalvar" >Salvar</button>
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
	function ChecaSituacao(valorSelect){
		
		if(valorSelect=="Sim"){
			document.getElementById('situacaoParq').value = "Necessita parecer médico"
		}else{
			var select1 = document.getElementById('selectPergunta1').value;
			var select2 = document.getElementById('selectPergunta2').value;
			var select3 = document.getElementById('selectPergunta3').value;
			var select4 = document.getElementById('selectPergunta4').value;
			var select5 = document.getElementById('selectPergunta5').value;
			var select6 = document.getElementById('selectPergunta6').value;
			var select7 = document.getElementById('selectPergunta7').value;
			
			if(select1=="Não" && select2=="Não" && select3=="Não" && select4=="Não" && select5=="Não" && select6=="Não" && select7=="Não" ){
				document.getElementById('situacaoParq').value = "Não Necessita parecer médico"
			}else{
				document.getElementById('situacaoParq').value = "Necessita parecer médico"
			}
		}
			
		
		}
	
</script>
</html>