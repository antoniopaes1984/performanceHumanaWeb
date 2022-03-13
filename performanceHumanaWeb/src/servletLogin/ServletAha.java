package servletLogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOAhaRepository;
import dao.DAOAvaliacaoRepository;
import model.ModelAha;
import model.ModelAvaliacao;

/**
 * Servlet implementation class ServletAha
 */
@WebServlet("/ServletAha")
public class ServletAha extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
	ModelAvaliacao avaliacao = new ModelAvaliacao();
	DAOAhaRepository daoAha = new DAOAhaRepository();
	ModelAha aha = new ModelAha();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAha() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			String codAvaliacao = request.getParameter("codavaliacao");
			avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			aha = daoAha.pesquisaAhaPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/aha.jsp");
			request.setAttribute("aha", aha);
			request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
			request.setAttribute("avaliacao", avaliacao);
			redireciona.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
		String codAvaliacao = request.getParameter("codAvaliacao");
		
		
		String hist1 = request.getParameter("historico1");
		String hist2 = request.getParameter("historico2");
		String hist3 = request.getParameter("historico3");
		String hist4 = request.getParameter("historico4");
		String hist5 = request.getParameter("historico5");
		String hist6 = request.getParameter("historico6");
		String hist7 = request.getParameter("historico7");
		String hist8 = request.getParameter("historico8");
		String hist9 = request.getParameter("historico9");
		String hist10 = request.getParameter("historico10");
		
		
		if(hist1==null) {
			aha.setHistPerg1(false);
		}else {
			aha.setHistPerg1(true);
		}
		
		if(hist2==null) {
			aha.setHistPerg2(false);
		}else {
			aha.setHistPerg2(true);
		}
		
		if(hist3==null) {
			aha.setHistPerg3(false);
		}else {
			aha.setHistPerg3(true);
		}
		
		if(hist4==null) {
			aha.setHistPerg4(false);
		}else {
			aha.setHistPerg4(true);
		}
		
		if(hist5==null) {
			aha.setHistPerg5(false);
		}else {
			aha.setHistPerg5(true);
		}
		
		if(hist6==null) {
			aha.setHistPerg6(false);
		}else {
			aha.setHistPerg6(true);
		}
		
		if(hist7==null) {
			aha.setHistPerg7(false);
		}else {
			aha.setHistPerg7(true);
		}
		
		if(hist8==null) {
			aha.setHistPerg8(false);
		}else {
			aha.setHistPerg8(true);
		}
		
		if(hist9==null) {
			aha.setHistPerg9(false);
		}else {
			aha.setHistPerg9(true);
		}
		
		if(hist10==null) {
			aha.setHistPerg10(false);
		}else {
			aha.setHistPerg10(true);
		}
		
		
		
		String sint1= request.getParameter("sintomaspergunta1");
		String sint2= request.getParameter("sintomaspergunta2");
		String sint3= request.getParameter("sintomaspergunta3");
		String sint4= request.getParameter("sintomaspergunta4");
		String sint5= request.getParameter("sintomaspergunta5");
		String sint6= request.getParameter("sintomaspergunta6");
		
		if(sint1==null) {
			aha.setSintoPerg1(false);
		}else {
			aha.setSintoPerg1(true);
		}
		
		if(sint2==null) {
			aha.setSintoPerg2(false);
		}else {
			aha.setSintoPerg2(true);
		}
		
		if(sint3==null) {
			aha.setSintoPerg3(false);
		}else {
			aha.setSintoPerg3(true);
		}
		
		if(sint4==null) {
			aha.setSintoPerg4(false);
		}else {
			aha.setSintoPerg4(true);
		}
		
		if(sint5==null) {
			aha.setSintoPerg5(false);
		}else {
			aha.setSintoPerg5(true);
		}
		
		if(sint6==null) {
			aha.setSintoPerg6(false);
		}else {
			aha.setSintoPerg6(true);
		}
		
		String saude1= request.getParameter("saudepergunta1");
		String saude2= request.getParameter("saudepergunta2");
		String saude3= request.getParameter("saudepergunta3");
		String saude4= request.getParameter("saudepergunta4");
		String saude5= request.getParameter("saudepergunta5");
		String saude6= request.getParameter("saudepergunta6");
		String saude7= request.getParameter("saudepergunta7");
		String saude8= request.getParameter("saudepergunta8");
		
		if(saude1==null) {
			aha.setSaudePerg1(false);
		}else {
			aha.setSaudePerg1(true);
		}
		
		if(saude2==null) {
			aha.setSaudePerg2(false);
		}else {
			aha.setSaudePerg2(true);
		}
		
		if(saude3==null) {
			aha.setSaudePerg3(false);
		}else {
			aha.setSaudePerg3(true);
		}
		
		if(saude4==null) {
			aha.setSaudePerg4(false);
		}else {
			aha.setSaudePerg4(true);
		}
		
		if(saude5==null) {
			aha.setSaudePerg5(false);
		}else {
			aha.setSaudePerg5(true);
		}
		
		if(saude6==null) {
			aha.setSaudePerg6(false);
		}else {
			aha.setSaudePerg6(true);
		}
		
		if(saude7==null) {
			aha.setSaudePerg7(false);
		}else {
			aha.setSaudePerg7(true);
		}
		
		if(saude8==null) {
			aha.setSaudePerg8(false);
		}else {
			aha.setSaudePerg8(true);
		}
		
		String cardio1= request.getParameter("cardiopergunta1");
		String cardio2= request.getParameter("cardiopergunta2");
		String cardio3= request.getParameter("cardiopergunta3");
		String cardio4= request.getParameter("cardiopergunta4");
		String cardio5= request.getParameter("cardiopergunta5");
		String cardio6= request.getParameter("cardiopergunta6");
		String cardio7= request.getParameter("cardiopergunta7");
		
		if(cardio1==null) {
			aha.setCardioPerg1(false);
		}else {
			aha.setCardioPerg1(true);
		}
		
		if(cardio2==null) {
			aha.setCardioPerg2(false);
		}else {
			aha.setCardioPerg2(true);
		}
		
		if(cardio3==null) {
			aha.setCardioPerg3(false);
		}else {
			aha.setCardioPerg3(true);
		}
		
		if(cardio4==null) {
			aha.setCardioPerg4(false);
		}else {
			aha.setCardioPerg4(true);
		}
		
		if(cardio5==null) {
			aha.setCardioPerg5(false);
		}else {
			aha.setCardioPerg5(true);
		}
		
		if(cardio6==null) {
			aha.setCardioPerg6(false);
		}else {
			aha.setCardioPerg6(true);
		}
		
		if(cardio7==null) {
			aha.setCardioPerg7(false);
		}else {
			aha.setCardioPerg7(true);
		}
		
		String situacao = request.getParameter("situacaoAha");
		
		aha.setSituacao(situacao);
		
		
		
		avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		aha.setCodAvaliacao(avaliacao.getCodAvaliacao());
			
		daoAha.alterarAhaBanco(aha);
			
			RequestDispatcher redirecionar = request.getRequestDispatcher("principal/principal.jsp");
			request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
			request.setAttribute("avaliacao", avaliacao);
			request.setAttribute("aha", aha);
			redirecionar.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
