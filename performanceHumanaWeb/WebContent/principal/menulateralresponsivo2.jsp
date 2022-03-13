<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>

    <div class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top overflow">
		<a class="navbar-brand" href="#">
          <img alt="Pipeline" src="<%=request.getContextPath() %>/assets/img/logo.svg" />
        </a>
        <div class="d-flex align-items-center">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
        
        
        <div class="collapse navbar-collapse flex-column" id="navbar-collapse" >
          <ul class="navbar-nav d-lg-block">

            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath() %>/ServletAnamnese?acao=anamnese&codavaliacao=${codAvaliacao}">Anamnese</a>

            </li>

            <li class="nav-item ">

              <a class="nav-link" href="<%=request.getContextPath() %>/ServletParq?acao=parq&codavaliacao=${codAvaliacao}">ParQ</a>

            </li>

            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletAha?acao=aha&codavaliacao=${codAvaliacao}">AHA</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletPostural?acao=postural&codavaliacao=${codAvaliacao}">Postural</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletComposicao?acao=composicao&codavaliacao=${codAvaliacao}">Composição Corporal</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletPerimetria?acao=perimetria&codavaliacao=${codAvaliacao}">Perimetria</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletTMB?acao=tmb&codavaliacao=${codAvaliacao}">TMB</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletSomatotipo?acao=somatotipo&codavaliacao=${codAvaliacao}">Somatotipo</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletCardiovascular?acao=cardiovascular&codavaliacao=${codAvaliacao}">Cardiovascular</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletNeuromuscular?acao=neuromuscular&codavaliacao=${codAvaliacao}">Neuromuscular</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="#">Flexiteste</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="#">Mobilidade Funcional</a>

            </li>
            
            <li class="nav-item">

              <a class="nav-link" href="#">Prescrição</a>

            </li>
            
            <li class="nav-item mb-0">

              <a class="nav-link" href="#">Considerações Gerais</a>

            </li>

          </ul>
          <hr class="mt-0 mb-0">
          <div class="mt-0">
            
            <div class="dropdown mt-0">
              <a href="#" >
                Voltar
              </a>
             
            </div>
          </div>
          <hr class="mt-0 mb-0">
          
          <div class="mt-0">
            
            <div class="dropdown mt-0">
              <a href="<%=request.getContextPath()%>/ServletLogin?acao=logout">
                Sair
              </a>
             
            </div>
          </div>
        </div>
        

      </div>