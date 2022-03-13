package servletLogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOAvaliacaoRepository;
import dao.DAOClienteRepository;
import dao.DAOComposicaoRepository;
import dao.DAOTMB;
import model.ModelAvaliacao;
import model.ModelCliente;
import model.ModelMedidas;
import model.ModelTMB;

/**
 * Servlet implementation class ServletTMB
 */
@WebServlet("/ServletTMB")
public class ServletTMB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletTMB() {
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
		
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		ModelCliente cliente = new ModelCliente();
		DAOClienteRepository daoCliente = new DAOClienteRepository();
		cliente = daoCliente.pesquisaCliente(avaliacao.getCodCliente());
		
		DAOComposicaoRepository daoComposicao = new DAOComposicaoRepository();
		ModelMedidas medidas = new ModelMedidas();
		medidas = daoComposicao.pesquisarMedidasPeloCodAvaliacao(avaliacao.getCodAvaliacao());
		
		DAOTMB daoTmb = new DAOTMB();
		ModelTMB tmb = new ModelTMB();
		
		tmb = daoTmb.pesquisarTmb(Integer.parseInt(codAvaliacao));
		
		RequestDispatcher redireciona = request.getRequestDispatcher("principal/tmb.jsp");
		
		request.setAttribute("tmb", tmb);
		request.setAttribute("cliente", cliente);
		request.setAttribute("avaliacao", avaliacao);
		request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
		request.setAttribute("medidas", medidas);
		
		redireciona.forward(request, response);
		
			daoTmb.pesquisarTmb(Integer.parseInt(codAvaliacao));
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
		String protocolo = request.getParameter("protocolotmb");
		String tmb = request.getParameter("resultadotmb");
		
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		DAOComposicaoRepository daoComposicao = new DAOComposicaoRepository();
		ModelMedidas medidas = new ModelMedidas();
		medidas = daoComposicao.pesquisarMedidasPeloCodAvaliacao(avaliacao.getCodAvaliacao());
		
		DAOClienteRepository daoCliente = new DAOClienteRepository();
		ModelCliente cliente = new ModelCliente();
		cliente = daoCliente.pesquisaCliente(avaliacao.getCodCliente());
		
		DAOTMB daoTmb = new DAOTMB();
		ModelTMB taxaMetabolicaBasal = new ModelTMB();
		taxaMetabolicaBasal.setCodAvaliacao(Integer.parseInt(codAvaliacao));
		taxaMetabolicaBasal.setProtocoloTmb(protocolo);
		taxaMetabolicaBasal.setTmb(Double.parseDouble(tmb));
		daoTmb.alterarTmb(taxaMetabolicaBasal);
		RequestDispatcher redireciona = request.getRequestDispatcher("principal/principal.jsp");
		request.setAttribute("cliente", cliente);
		request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
		request.setAttribute("avaliacao", avaliacao);
		request.setAttribute("medidas", medidas);
		redireciona.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
