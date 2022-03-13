<%@page import="model.ModelCliente"%>
<%@page import="model.ModelAvaliacao"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Performance Humana</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Sistema de Avaliação Física">
<link href="<%=request.getContextPath()%>/assets/img/favicon.ico"
	rel="icon" type="image/x-icon">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Gothic+A1"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/theme.css"
	rel="stylesheet" type="text/css" media="all" />
</head>
<body onload="protocoloEscolhido()">

	<div class="layout layout-nav-side">
		<jsp:include page="menulateralresponsivo2.jsp"></jsp:include>
		<div class="main-container">

			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-11 col-xl-9">
						<section class="py-4 py-lg-5">
						<input type="text" name="nomeCliente" class="form-control text-center mb-4 mt-0" value="${avaliacao.nomeCliente}" readonly>
						<p class="text-center h4">Composição Corporal</p>
							<form action="ServletComposicao" method="post">
								<input type="hidden" name="codAvaliacao"
									value="${composicao.codAvaliacao}"> 
									<input type="hidden" id="idade" name="idade" value="${avaliacao.idadeCliente}">
									<input type="hidden" id="sexo" name="sexo" value="${cliente.sexo}">
								<div
									class=" form-row col-12 border border-dark shadow-lg rounded"
									id="parq1">

									
										<div class="form-group col-6 ">
											<label class="col-12 mt-2">Peso</label>
											<input type="text" class="form-control col-12 mb-1" id="txtPeso" 
												name="txtPeso" value="${composicao.peso}" onkeypress="return onlynumber();" maxlength="7">
										</div>

										<div class="form-group col-6">
											<label class="col-12 mt-2">Altura</label>
											<input type="text" class="form-control col-12 mb-1" id="txtAltura"
												name="txtAltura" value="${composicao.altura}" onkeypress="return onlynumber();" maxlength="4">
										</div>

									
								</div>

								<div
									class="form-row  col-12 border border-dark  shadow-lg rounded mt-1"
									id="parq1">
									<div class="form-row col-12">
										<div class="form-group col">
											<p class="text-center mt-2">Dobras cultâneas</p>
											<%
												ModelAvaliacao avaliacao = new ModelAvaliacao();
												avaliacao = (ModelAvaliacao) request.getAttribute("avaliacao");
												ModelCliente cliente = new ModelCliente();
												cliente = (ModelCliente) request.getAttribute("cliente");
												
												if(avaliacao.getIdadeCliente()<8 && cliente.getSexo().equals("M")){%>
												<select id="txtFormulaUsada" name="txtFormulaUsada"
												class="form-control"> 
													<option><c:out value="${composicao.formula_usada}"></c:out></option>
													<option>Bioimpedância</option>
													<option>Soma das dobras</option>
													<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
												</select>
												<%}else if(avaliacao.getIdadeCliente()<=11 && cliente.getSexo().equals("M")){%>
													<select id="txtFormulaUsada" name="txtFormulaUsada"
													class="form-control"> 
														<option><c:out value="${composicao.formula_usada}"></c:out></option>
														<option>Slaughter et al, 1988 (2 dobras) - Crianças/Adolescentes - Idade 08 a 29 anos</option>
														<option>Bioimpedância</option>
														<option>Soma das dobras</option>
														<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
												<%}else if(avaliacao.getIdadeCliente()<=14 && cliente.getSexo().equals("M")){%>
													<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Slaughter et al, 1988 (2 dobras) - Crianças/Adolescentes - Idade 08 a 29 anos</option>
															<option>Lohman, 1986 (2 dobras) - Adolescentes - Idade 12 a 14 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
														</select>
													<%}else if(avaliacao.getIdadeCliente()<=16 && cliente.getSexo().equals("M")){%>
															<select id="txtFormulaUsada" name="txtFormulaUsada"
																class="form-control"> 
																	<option><c:out value="${composicao.formula_usada}"></c:out></option>
																	<option>Slaughter et al, 1988 (2 dobras) - Crianças/Adolescentes - Idade 08 a 29 anos</option>
																	<option>Bioimpedância</option>
																	<option>Soma das dobras</option>
																	<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
															</select>
														<%}else if(avaliacao.getIdadeCliente()==17 && cliente.getSexo().equals("M")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Slaughter et al, 1988 (2 dobras) - Crianças/Adolescentes - Idade 08 a 29 anos</option>
															<option>Lean, et al., 1996 (CC, Idade) - % de gordura pela CIRC.DA CINTURA</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=29 && cliente.getSexo().equals("M")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Jackson & Pollock, 1980 (7 dobras) - Homem Adulto -  Idade 18 a 61 anos</option>
															<option>Jackson & Pollock, 1980 (3 dobras) - Homem Adulto -  Idade 18 a 61 anos</option>
															<option>Petroski, 1995 (4 dobras) - Homem Adulto - Idade 18 a 61 anos</option>
															<option>Slaughter et al, 1988 (2 dobras) - Crianças/Adolescentes - Idade 08 a 29 anos</option>
															<option>Lean, et al., 1996 (CC, Idade) - % de gordura pela CIRC.DA CINTURA</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=59 && cliente.getSexo().equals("M")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada" 
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Jackson & Pollock, 1980 (7 dobras) - Homem Adulto -  Idade 18 a 61 anos</option>
															<option>Jackson & Pollock, 1980 (3 dobras) - Homem Adulto -  Idade 18 a 61 anos</option>
															<option>Petroski, 1995 (4 dobras) - Homem Adulto - Idade 18 a 61 anos</option>
															<option>Lean, et al., 1996 (CC, Idade) - % de gordura pela CIRC.DA CINTURA</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=61 && cliente.getSexo().equals("M")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Jackson & Pollock, 1980 (7 dobras) - Homem Adulto -  Idade 18 a 61 anos</option>
															<option>Jackson & Pollock, 1980 (3 dobras) - Homem Adulto -  Idade 18 a 61 anos</option>
															<option>Petroski, 1995 (4 dobras) - Homem Adulto - Idade 18 a 61 anos</option>
															<option>Lean, et al., 1996 (CC, Idade) - % de gordura pela CIRC.DA CINTURA</option>
															<option>Tran e Weltman, 1988 (Pabd, PQd, Pil, MC) - Homem Idoso - 60 a 81 anos (IMC >25Kg/m2)</option>
															<option>Deuremberg et al. 1991 (IMC, Idade)-Homem Idoso - Acima de 60 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=65 && cliente.getSexo().equals("M")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Lean, et al., 1996 (CC, Idade) - % de gordura pela CIRC.DA CINTURA</option>
															<option>Tran e Weltman, 1988 (Pabd, PQd, Pil, MC) - Homem Idoso - 60 a 81 anos (IMC >25Kg/m2)</option>
															<option>Deuremberg et al. 1991 (IMC, Idade)-Homem Idoso - Acima de 60 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=81 && cliente.getSexo().equals("M")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Tran e Weltman, 1988 (Pabd, PQd, Pil, MC) - Homem Idoso - 60 a 81 anos (IMC >25Kg/m2)</option>
															<option>Deuremberg et al. 1991 (IMC, Idade)-Homem Idoso - Acima de 60 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()>81 && cliente.getSexo().equals("M")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Deuremberg et al. 1991 (IMC, Idade)-Homem Idoso - Acima de 60 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=14 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Slaughter et al, 1988 (2 dobras) Crianças (todas as idades)</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=16 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Tran & Weltman, 1989 - 15 a 79 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()==17 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Tran & Weltman, 1989 - 15 a 79 anos</option>
															<option>Guedes, 1985 (2 dobras) 17 a 27 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=27 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Jackson & Pollock, 1980 (7 dobras) 18 e 55 anos</option>
															<option>Jackson, Pollock & Ward, 1980 (3 dobras)  18 a 55 anos</option>
															<option>Petroski, 1995 (4 dobras) 18 a 51 anos</option>
															<option>Guedes, 1985 (2 dobras) 17 a 27 anos</option>
															<option>Tran & Weltman, 1989 - 15 a 79 anos</option>
															<option>Lean, et al., 1996 - % de gordura  CIRC.DA CINTURA (18 a 64 anos e com CC entre 60 e 116cm)</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=49 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Jackson & Pollock, 1980 (7 dobras) 18 e 55 anos</option>
															<option>Jackson, Pollock & Ward, 1980 (3 dobras)  18 a 55 anos</option>
															<option>Petroski, 1995 (4 dobras) 18 a 51 anos</option>
															<option>Tran & Weltman, 1989 - 15 a 79 anos</option>
															<option>Lean, et al., 1996 - % de gordura  CIRC.DA CINTURA (18 a 64 anos e com CC entre 60 e 116cm)</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=51 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Jackson & Pollock, 1980 (7 dobras) 18 e 55 anos</option>
															<option>Jackson, Pollock & Ward, 1980 (3 dobras)  18 a 55 anos</option>
															<option>Petroski, 1995 (4 dobras) 18 a 51 anos</option>
															<option>Tran & Weltman, 1989 - 15 a 79 anos</option>
															<option>Lean, et al., 1996 - % de gordura  CIRC.DA CINTURA (18 a 64 anos e com CC entre 60 e 116cm)</option>
															<option>Rech, Santos e Silva, 2006 - 50 a 75 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=55 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Jackson & Pollock, 1980 (7 dobras) 18 e 55 anos</option>
															<option>Jackson, Pollock & Ward, 1980 (3 dobras)  18 a 55 anos</option>
															<option>Tran & Weltman, 1989 - 15 a 79 anos</option>
															<option>Lean, et al., 1996 - % de gordura  CIRC.DA CINTURA (18 a 64 anos e com CC entre 60 e 116cm)</option>
															<option>Rech, Santos e Silva, 2006 - 50 a 75 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=64 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Tran & Weltman, 1989 - 15 a 79 anos</option>
															<option>Lean, et al., 1996 - % de gordura  CIRC.DA CINTURA (18 a 64 anos e com CC entre 60 e 116cm)</option>
															<option>Rech, Santos e Silva, 2006 - 50 a 75 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=75 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Tran & Weltman, 1989 - 15 a 79 anos</option>
															<option>Rech, Santos e Silva, 2006 - 50 a 75 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()<=79 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Tran & Weltman, 1989 - 15 a 79 anos</option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}else if(avaliacao.getIdadeCliente()>=80 && cliente.getSexo().equals("F")){%>
														<select id="txtFormulaUsada" name="txtFormulaUsada"
														class="form-control"> 
															<option><c:out value="${composicao.formula_usada}"></c:out></option>
															<option>Bioimpedância</option>
															<option>Soma das dobras</option>
															<option>Galagher et al. 2000 - (IMC) - % de gordura pelo IMC</option>
													</select>
														<%}%>
										</div>
									</div>
									<hr>
									<p class="text-center col-12"><strong>Tríceps</strong></p>
									<div class="form-row col-12">
									
									<div class="form-group col-6 col-sm-3">
											<label class="col-12  mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtTriceps1"
											name="txtTriceps1" value="${composicao.amostra1DcTriceps}" onkeypress="return onlynumber();" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3">
											<label class="col-12 mt-2">2ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtTriceps2"
											name="txtTriceps2" value="${composicao.amostra2DcTriceps}" onkeypress="return onlynumber();"  maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3">
											<label class="col-12 mt-2">3ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtTriceps3"
											name="txtTriceps3" value="${composicao.amostra3DcTriceps}" onkeypress="return onlynumber();"  maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtMediaTriceps"
											name="txtMediaTriceps" value="${composicao.dcTriceps}" readonly>
									</div>
									</div>
									<hr>
									<p class="text-center col-12"><strong>Bíceps</strong></p>
									<div class="form-row col-12">
									
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtBiceps1"
											name="txtBiceps1" value="${composicao.amostra1DcBiceps}" onkeypress="return onlynumber();" onChange ="mediaBiceps()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtBiceps2"
											name="txtBiceps2" value="${composicao.amostra2DcBiceps}" onkeypress="return onlynumber();" onChange = "mediaBiceps()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtBiceps3"
											name="txtBiceps3" value="${composicao.amostra3DcBiceps}" onkeypress="return onlynumber();" onChange = "mediaBiceps()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtMediaBiceps"
											name="txtMediaBiceps" value="${composicao.dcBiceps}" readonly>
									</div>
									</div>
									<hr>
									<p class="text-center col-12"><strong>Subescapular</strong></p>
									<div class="form-row col-12">
									
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtSubescapular1"
											name="txtSubescapular1" value="${composicao.amostra1DcSubescapular}" onkeypress="return onlynumber();" onChange = "mediaSubescapular()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">2ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtSubescapular2"
											name="txtSubescapular2" value="${composicao.amostra2DcSubescapular}" onkeypress="return onlynumber();" onChange = "mediaSubescapular()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">3ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtSubescapular3"
											name="txtSubescapular3" value="${composicao.amostra3DcSubescapular}" onkeypress="return onlynumber();" onChange = "mediaSubescapular()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtMediaSubescapular"
											name="txtMediaSubescapular" value="${composicao.dcSubescapular}" readonly>
									</div>
									</div>
									<hr>
									<p class="text-center col-12"><strong>Peito</strong></p>
									<div class="form-row col-12">
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtPeito1"
											name="txtPeito1" value="${composicao.amostra1DcPeitoral}" onkeypress="return onlynumber();" onChange="mediaPeito()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">2ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtPeito2"
											name="txtPeito2" value="${composicao.amostra2DcPeitoral}" onkeypress="return onlynumber();" onChange="mediaPeito()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">3ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtPeito3"
											name="txtPeito3" value="${composicao.amostra3DcPeitoral}" onkeypress="return onlynumber();" onChange="mediaPeito()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtMediaPeito"
											name="txtMediaPeito" value="${composicao.dcPeitoral}" readonly>
									</div>
									</div>
									
									<hr>
									<p class="text-center col-12"><strong>Axilar Média</strong></p>
									<div class="form-row col-12">
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtAxilarMedia1"
											name="txtAxilarMedia1" value="${composicao.amostra1DcAxilarMedia}" onkeypress="return onlynumber();" onChange="mediaAxilarMedia()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">2ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtAxilarMedia2"
											name="txtAxilarMedia2" value="${composicao.amostra2DcAxilarMedia}" onkeypress="return onlynumber();" onChange="mediaAxilarMedia()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">3ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtAxilarMedia3"
											name="txtAxilarMedia3" value="${composicao.amostra3DcAxilarMedia}" onkeypress="return onlynumber();" onChange="mediaAxilarMedia()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtAxilarMedia"
											name="txtAxilarMedia" value="${composicao.dcAxilarMedia}" readonly>
									</div>
									</div>
									
									<hr>
									<p class="text-center col-12"><strong>Supra Ilíaca</strong></p>
									<div class="form-row col-12">
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtSupraIliaca1"
											name="txtSupraIliaca1" value="${composicao.amostra1DcSupraIliaca}" onkeypress="return onlynumber();" onChange="mediaSupraIliaca()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">2ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtSupraIliaca2"
											name="txtSupraIliaca2" value="${composicao.amostra2DcSupraIliaca}" onkeypress="return onlynumber();" onChange="mediaSupraIliaca()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">3ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtSupraIliaca3"
											name="txtSupraIliaca3" value="${composicao.amostra3DcSupraIliaca}" onkeypress="return onlynumber();" onChange="mediaSupraIliaca()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtSupraIliacaMedia"
											name="txtSupraIliacaMedia" value="${composicao.dcSupraIliaca}" readonly>
									</div>
									</div>
									
									<hr>
									<p class="text-center col-12"><strong>Abdominal</strong></p>
									<div class="form-row col-12">
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtAbdomen1"
											name="txtAbdomen1" value="${composicao.amostra1DcAbdomen}" onkeypress="return onlynumber();" onChange="mediaAbdomen()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">2ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtAbdomen2"
											name="txtAbdomen2" value="${composicao.amostra2DcAbdomen}" onkeypress="return onlynumber();" onChange="mediaAbdomen()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">3ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtAbdomen3"
											name="txtAbdomen3" value="${composicao.amostra3DcAbdomen}" onkeypress="return onlynumber();" onChange="mediaAbdomen()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtAbdomenMedia"
											name="txtAbdomenMedia" value="${composicao.dcAbdomen}" readonly>
									</div>
									</div>
									
									<hr>
									<p class="text-center col-12"><strong>Coxa Medial</strong></p>
									<div class="form-row col-12">
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtCoxaMedial1"
											name="txtCoxaMedial1" value="${composicao.amostra1DcCoxaPollockMedial}" onkeypress="return onlynumber();" onChange="mediaCoxaMedial()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">2ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtCoxaMedial2"
											name="txtCoxaMedial2" value="${composicao.amostra2DcCoxaPollockMedial}" onkeypress="return onlynumber();" onChange="mediaCoxaMedial()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">3ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtCoxaMedial3"
											name="txtCoxaMedial3" value="${composicao.amostra3DcCoxaPollockMedial}" onkeypress="return onlynumber();" onChange="mediaCoxaMedial()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtCoxaMedialMedia"
											name="txtCoxaMedialMedia" value="${composicao.dcCoxaPollockMedial}" readonly>
									</div>
									</div>
									
									<hr>
									<p class="text-center col-12"><strong>Coxa Proximal</strong></p>
									<div class="form-row col-12">
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtCoxaProximal1"
											name="txtCoxaProximal1" value="${composicao.amostra1DcCoxaGuedesProx}" onkeypress="return onlynumber();" onChange="mediaCoxaProximal()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">2ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtCoxaProximal2"
											name="txtCoxaProximal2" value="${composicao.amostra2DcCoxaGuedesProx}"  onkeypress="return onlynumber();" onChange="mediaCoxaProximal()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">3ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtCoxaProximal3"
											name="txtCoxaProximal3" value="${composicao.amostra3DcCoxaGuedesProx}" onkeypress="return onlynumber();" onChange="mediaCoxaProximal()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtCoxaProximallMedia"
											name="txtCoxaProximallMedia" value="${composicao.dcCoxaGuedesProx}" readonly>
									</div>
									</div>
									<hr>
									<p class="text-center col-12"><strong>Panturrilha</strong></p>
									<div class="form-row col-12">
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">1ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtPanturrilhal1"
											name="txtPanturrilha1" value="${composicao.amostra1DcPanturrurrilha}" onkeypress="return onlynumber();" onChange="mediaPanturrilha()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">2ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtPanturrilhal2"
											name="txtPanturrilha2" value="${composicao.amostra2DcPanturrurrilha}" onkeypress="return onlynumber();" onChange="mediaPanturrilha()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">3ª Amostra</label>
											<input type="text" class="form-control col-12 mb-1" id="txtPanturrilhal3"
											name="txtPanturrilha3" value="${composicao.amostra3DcPanturrurrilha}" onkeypress="return onlynumber();" onChange="mediaPanturrilha()" maxlength="5">
									</div>
									<div class="form-group col-6 col-sm-3 ">
											<label class="col-12 mt-2">Média</label>
											<input type="text" class="form-control col-12 mb-1" id="txtPanturrilhalMedia"
											name="txtPanturrilhalMedia" value="${composicao.dcPanturrilha}" readonly>
									</div>
									</div>
									
									<hr>
									<p class="text-center col-12"><strong>Soma das Dobras</strong></p>
									<div class="form-row col-12">
									<div class="form-group col-12">
											<label class="col-12 mt-2">Total</label>
											<input type="text" class="form-control col-12 mb-1" id="txtSomaDobras"
											name="txtSomaDobras" value="${composicao.somaDobras}" readonly>
									</div>
									</div>
									
									<hr>
									<p class="text-center col-12"><strong>Bioimpedância</strong></p>
									<div class="form-row col-12">
									<div class="form-group col-12">
											<label class="col-12 mt-2">Valor</label>
											<input type="text" class="form-control col-12 mb-1" id="txtBioimpedancia"
											name="txtBioimpedancia" value="${composicao.bioimpedancia}">
									</div>
									</div>
								</div>

								<div
									class="form-row  col-12 border border-dark  shadow-lg rounded mt-1"
									id="parq1">

									<div class="form-group col-12 mt-2">
									<p class="text-center">Circunferência(cm)</p>
									</div>

									<div class="form-group col-6">
										<label class="col-12">Cintura</label>
										<input type="text" class="form-control col-12"
											name="txtCirCintura" id="txtCirCintura"
											value="${composicao.cirCintura}" onkeypress="return onlynumber();" maxlength="5">
									</div>

									<div class="form-group col-6">
										<label class="col-12">Abdomen</label>
										<input type="text" class="form-control col-12"
											name="txtCirAbdomen" id="txtCirAbdomen1"
											value="${composicao.cirAbdomen}" onkeypress="return onlynumber();" maxlength="5">
									</div>

									<div class="form-group col-6">
										<label class="col-12">Ilíaco</label>
										<input type="text" class="form-control col-12"
											name="txtCirIliaco" id="txtCirIliaco"
											value="${composicao.cirIliaco}" onkeypress="return onlynumber();" maxlength="5">
									</div>


									<div class="form-group col-6">
										<label class="col-12">Quadril</label>
										<input type="text" class="form-control col-12"
											name="txtCirQuadril" id="txtCirQuadril"
											value="${composicao.cirQuadril}" onkeypress="return onlynumber();" maxlength="5">
									</div>
								</div>

								<div
									class="form-row  col-12 border border-dark  shadow-lg rounded mt-1"
									id="parq1">

									<div class="form-group col-12 mt-2">
										<p class="text-center">Diâmetros ósseos(cm)</p>
									</div>

									<div class="form-group col-4">
										<label class="col-12">Punho</label>
										<input type="text" class="form-control col-12"
											name="txtDiametroOsseoPunho" id="txtDiametroOsseoPunho"
											value="${composicao.diametroOsseoPunho}" onkeypress="return onlynumber();" maxlength="5">
									</div>

									<div class="form-group col-4">
										<label class="col-12">Úmero</label>
										<input type="text" class="form-control col-12"
											name="txtDiametroOsseoUmero" id="txtDiametroOsseoUmero"
											value="${composicao.diametroOsseoUmero}" onkeypress="return onlynumber();" maxlength="5">
									</div>


									<div class="form-group col-4">
										<label class="col-12">Femur</label>
										<input type="text" class="form-control col-12"
											name="txtDiametroOsseoFemur" id="txtDiametroOsseoFemur"
											value="${composicao.diametroOsseoFemur}" onkeypress="return onlynumber();" maxlength="5">
									</div>

								</div>

								<div
									class="form-row  col-12 border border-dark  shadow-lg rounded mt-1"
									id="parq1">

									<div class="form-group col-12 mt-2">
									<p class="text-center">Resultado</p>
									</div>
									
									

									<div class="form-group col">
									<label class=" col-12">% Gordura Atual</label>
										<input type="text" class="form-control col-12"
											name="txtPercentualGorduraAtual"
											id="txtPercentualGorduraAtual"
											value="${composicao.percentualGorduraAtual}"  readonly>
									</div>

									

									<div class="form-group col">
										<label class=" col-12">% Gordura Alvo</label>
										<input type="text" class="form-control col-12"
											name="txtPercentualGorduraAlvo" id="txtPercentualGorduraAlvo"
											value="${composicao.percentualGorduraAlvo}" onkeypress="return onlynumber();" maxlength="5">
									</div>

								</div>

								<div class="form-group input-group-append mt-1">
									<button type="submit" class="btn btn-primary " id="botaoSalvar">Salvar</button>
								</div>
							</form>
						</section>
					</div>
				</div>
			</div>

		</div>
	</div>

	<jsp:include page="javascript.jsp"></jsp:include>
	<jsp:include page="javascriptcomposicao.jsp"></jsp:include>
</body>

</html>