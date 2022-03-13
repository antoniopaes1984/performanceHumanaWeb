package servletLogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOAvaliacaoRepository;
import dao.DAOParqRepository;
import model.ModelAvaliacao;
import model.ModelParq;

/**
 * Servlet implementation class ServletParq
 */
@WebServlet("/ServletParq")
public class ServletParq extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DAOParqRepository daoParq = new DAOParqRepository();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletParq() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
		String acao = request.getParameter("acao");
		String codAvaliacao = request.getParameter("codavaliacao");
		
		
		ModelParq parq = new ModelParq();
			ModelAvaliacao avaliacao = new ModelAvaliacao();
			DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
			avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			parq = daoParq.pesquisaParqDeUmCliente(Integer.parseInt(codAvaliacao));
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/parq.jsp");
			request.setAttribute("avaliacao", avaliacao);
			request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
			request.setAttribute("parq", parq);
			redireciona.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			request.setCharacterEncoding("UTF-8");
		String codAvaliacao = request.getParameter("codAvaliacao");
		String pergunta1 = request.getParameter("selectPergunta1");
		String pergunta2 = request.getParameter("selectPergunta2");
		String pergunta3 = request.getParameter("selectPergunta3");
		String pergunta4 = request.getParameter("selectPergunta4");
		String pergunta5 = request.getParameter("selectPergunta5");
		String pergunta6 = request.getParameter("selectPergunta6");
		String pergunta7 = request.getParameter("selectPergunta7");
		String situacao = request.getParameter("situacaoParq");
		
		ModelParq parq = new ModelParq();
		parq.setPergunta1(pergunta1);
		parq.setPergunta2(pergunta2);
		parq.setPergunta3(pergunta3);
		parq.setPergunta4(pergunta4);
		parq.setPergunta5(pergunta5);
		parq.setPergunta6(pergunta6);
		parq.setPergunta7(pergunta7);
		parq.setSituacao(situacao);
		parq.setCodAvaliacao(Integer.parseInt(codAvaliacao));
		
			daoParq.alterarParqDeUmCliente(parq);
			
			ModelAvaliacao avaliacao = new ModelAvaliacao();
			DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
			avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/principal.jsp");
			request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
			request.setAttribute("avaliacao", avaliacao);
			redireciona.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
