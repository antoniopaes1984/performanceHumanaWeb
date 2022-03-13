<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" import="java.sql.*" errorPage="" %>

    <div class="navbar navbar-expand-lg bg-dark navbar-dark sticky-top">

        <a class="navbar-brand" href="#">
          <img alt="Pipeline" src="<%=request.getContextPath() %>/assets/img/logo.svg" />
        </a>
        <div class="d-flex align-items-center">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-collapse" aria-controls="navbar-collapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          
        </div>
        <div class="collapse navbar-collapse flex-column" id="navbar-collapse">
          <ul class="navbar-nav d-lg-block">

            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletCliente?acao=listarclientes&user=${usuario}">Clientes</a>

            </li>

            <li class="nav-item">

              <a class="nav-link" href="<%=request.getContextPath()%>/ServletAvaliador?acao=editar&user=${usuario}">Avaliador</a>

            </li>

            <li class="nav-item">

              <a class="nav-link" href="#">Relatórios</a>

            </li>

          </ul>
          <hr>
          
          <div>
            
            <div class="dropdown mt-2">
              <a href="<%=request.getContextPath()%>/ServletLogin?acao=logout"% title="Sair">
                <span  id="more-details"><%=session.getAttribute("usuarioNome") %><i  class="fas fa-sign-out-alt ml-2"></i></span>
              </a>
             
            </div>
          </div>
        </div>
        

      </div>