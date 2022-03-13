package servletLogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOAvaliacaoRepository;
import dao.DAOCircunferenciaRepository;
import dao.DAOClienteRepository;
import dao.DAOComposicaoRepository;
import model.ModelAvaliacao;
import model.ModelCircunferencia;
import model.ModelCliente;
import model.ModelMedidas;

/**
 * Servlet implementation class ServletPerimetria
 */
@WebServlet("/ServletPerimetria")
public class ServletPerimetria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletPerimetria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String codAvaliacao = request.getParameter("codavaliacao");
			DAOCircunferenciaRepository daoCircunferencia = new DAOCircunferenciaRepository();
			ModelCircunferencia circunferencia = new ModelCircunferencia();
			DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
			ModelAvaliacao avaliacao = new ModelAvaliacao();
			avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			
			circunferencia = daoCircunferencia.pesquisarCircunferenciaPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			
			DAOClienteRepository daoCliente = new DAOClienteRepository();
			ModelCliente cliente = new ModelCliente();
			
			DAOComposicaoRepository daoComposicao = new DAOComposicaoRepository();
			ModelMedidas medidas = new ModelMedidas();
			medidas = daoComposicao.pesquisarMedidasPeloCodAvaliacao(avaliacao.getCodAvaliacao());
			
			cliente = daoCliente.pesquisaCliente(avaliacao.getCodCliente());
			request.setAttribute("sexo", cliente.getSexo());
			request.setAttribute("circunferencia", circunferencia);
			request.setAttribute("avaliacao", avaliacao);
			request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
			request.setAttribute("altura", medidas.getAltura());
			request.setAttribute("peso", medidas.getPeso());
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/perimetria.jsp");
			redireciona.forward(request, response);
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
		
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		String cirOmbro = request.getParameter("txtCirOmbro");
		String cirTorax = request.getParameter("txtCirTorax");
		String cirBracoDirRelax = request.getParameter("txtCirBracoDirRelax");
		String cirBracoEsqRelax = request.getParameter("txtCirBracoEsqRelax");
		String cirBracoDirCont = request.getParameter("txtCirBracoDirCont");
		String cirBracoEsqCont = request.getParameter("txtCirBracoEsqCont");
		String cirAnteBracoDir = request.getParameter("txtCirAnteBracoDir");
		String cirAnteBracoEsq = request.getParameter("txtCirAnteBracoEsq");
		String cirCintura = request.getParameter("txtCirCintura");
		String cirIliaco = request.getParameter("txtCirIliaco");
		String cirAbdomen = request.getParameter("txtCirAbdomen");
		String cirQuadril = request.getParameter("txtCirQuadril");
		String cirCoxaProxDir = request.getParameter("txtCirCoxaProxDir");
		String cirCoxaProxEsq = request.getParameter("txtCirCoxaProxEsq");
		String cirCoxaMedialDir = request.getParameter("txtCirCoxaMedialDir");
		String cirCoxaMedialEsq = request.getParameter("txtCirCoxaMedialEsq");
		String cirCoxaDistalDir = request.getParameter("txtCirCoxaDistalDir");
		String cirCoxaDistalEsq = request.getParameter("txtCirCoxaDistalEsq");
		String cirPanturrilhaDir = request.getParameter("txtCirPanturrilhaDir");
		String cirPanturrilhaEsq = request.getParameter("txtCirPanturrilhaEsq");
		String relacaoCinturaQuadril = request.getParameter("txtRelacaoCinturaQuadril");
		String resultadoRelacaoCinturaQuadril = request.getParameter("txtResultadoRelacaoCinturaQuadril");
		String relacaoCircunferenciaCintura = request.getParameter("txtRelacaoCircunferenciaCintura");
		String resultadoRelacaoCircunferenciaCintura = request.getParameter("txtResultadoRelacaoCircunferenciaCintura");
		String relacaoCinturaEstatura = request.getParameter("txtRelacaoCinturaEstatura");
		String resultadoRelacaoCinturaEstatura = request.getParameter("txtResultadoRelacaoCinturaEstatura");
		String indiceConicidade = request.getParameter("txtIndiceConicidade");
		String resultadoIndiceConicidade = request.getParameter("txtResultadoIndiceConicidade");
		
		ModelCircunferencia circunferencia = new  ModelCircunferencia();
		
		circunferencia.setCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		if(cirOmbro.equals("")) {
			circunferencia.setCirOmbro(0);
		}else {
			circunferencia.setCirOmbro(Double.parseDouble(cirOmbro));
		}
		
		if(cirTorax.equals("")) {
			circunferencia.setCirTorax(0);
		}else {
			circunferencia.setCirTorax(Double.parseDouble(cirTorax));
		}
		
		if(cirBracoDirRelax.equals("")) {
			circunferencia.setCirBracoDirRelax(0);
		}else {
			circunferencia.setCirBracoDirRelax(Double.parseDouble(cirBracoDirRelax));
		}
		
		if(cirBracoEsqRelax.equals("")) {
			circunferencia.setCirBracoEsqRelax(0);
		}else {
			circunferencia.setCirBracoEsqRelax(Double.parseDouble(cirBracoEsqRelax));
		}
		
		if(cirBracoDirCont.equals("")) {
			circunferencia.setCirBracoDirCont(0);
		}else {
			circunferencia.setCirBracoDirCont(Double.parseDouble(cirBracoDirCont));
		}
		
		if(cirBracoEsqCont.equals("")) {
			circunferencia.setCirBracoEsqCont(0);
		}else {
			circunferencia.setCirBracoEsqCont(Double.parseDouble(cirBracoEsqCont));
		}
		
		if(cirAnteBracoDir.equals("")) {
			circunferencia.setCirAntebracoDir(0);
		}else {
			circunferencia.setCirAntebracoDir(Double.parseDouble(cirAnteBracoDir));
		}
		
		if(cirAnteBracoEsq.equals("")) {
			circunferencia.setCirAntebracoEsq(0);
		}else {
			circunferencia.setCirAntebracoEsq(Double.parseDouble(cirAnteBracoEsq));
		}
		
		if(cirCintura.equals("")) {
			circunferencia.setCirCintura(0);
		}else {
			circunferencia.setCirCintura(Double.parseDouble(cirCintura));
		}
		
		if(cirIliaco.equals("")) {
			circunferencia.setCirIliaco(0);
		}else {
			circunferencia.setCirIliaco(Double.parseDouble(cirIliaco));
		}
		
		if(cirAbdomen.equals("")) {
			circunferencia.setCirAbdomen(0);
		}else {
			circunferencia.setCirAbdomen(Double.parseDouble(cirAbdomen));
		}
		
		if(cirQuadril.equals("")) {
			circunferencia.setCirQuadril(0);
		}else {
			circunferencia.setCirQuadril(Double.parseDouble(cirQuadril));
		}
		
		if(cirCoxaProxDir.equals("")) {
			circunferencia.setCirCoxaProxDir(0);
		}else {
			circunferencia.setCirCoxaProxDir(Double.parseDouble(cirCoxaProxDir));
		}
		
		if(cirCoxaProxEsq.equals("")) {
			circunferencia.setCirCoxaProxEsq(0);
		}else {
			circunferencia.setCirCoxaProxEsq(Double.parseDouble(cirCoxaProxEsq));
		}
		
		if(cirCoxaMedialDir.equals("")) {
			circunferencia.setCirCoxaMediaDir(0);
		}else {
			circunferencia.setCirCoxaMediaDir(Double.parseDouble(cirCoxaMedialDir));
		}
		
		if(cirCoxaMedialEsq.equals("")) {
			circunferencia.setCirCoxaMediaEsq(0);
		}else {
			circunferencia.setCirCoxaMediaEsq(Double.parseDouble(cirCoxaMedialEsq));
		}
		
		if(cirCoxaDistalDir.equals("")) {
			circunferencia.setCirCoxaDistalDir(0);
		}else {
			circunferencia.setCirCoxaDistalDir(Double.parseDouble(cirCoxaDistalDir));
		}
		
		if(cirCoxaDistalEsq.equals("")) {
			circunferencia.setCirCoxaDistalEsq(0);
		}else {
			circunferencia.setCirCoxaDistalEsq(Double.parseDouble(cirCoxaDistalEsq));
		}
		
		if(cirPanturrilhaDir.equals("")) {
			circunferencia.setCirPanturrilhaDir(0);
		}else {
			circunferencia.setCirPanturrilhaDir(Double.parseDouble(cirPanturrilhaDir));
		}
		
		if(cirPanturrilhaEsq.equals("")) {
			circunferencia.setCirPanturrilhaEsq(0);
		}else {
			circunferencia.setCirPanturrilhaEsq(Double.parseDouble(cirPanturrilhaEsq));
		}
		
		if(relacaoCinturaQuadril.equals("")) {
			circunferencia.setRelacaoCinturaQuadril(0);
		}else {
			circunferencia.setRelacaoCinturaQuadril(Double.parseDouble(relacaoCinturaQuadril));
		}
		
		if(resultadoRelacaoCinturaQuadril.equals("")) {
			circunferencia.setClassRelacaoCinturaQuadril("Sem classificação");
		}else {
			circunferencia.setClassRelacaoCinturaQuadril(resultadoRelacaoCinturaQuadril);
		}
		
		if(relacaoCircunferenciaCintura.equals("")) {
			circunferencia.setRelacaoCirCintura(0);
		}else {
			circunferencia.setRelacaoCirCintura(Double.parseDouble(relacaoCircunferenciaCintura));
		}
		
		if(resultadoRelacaoCircunferenciaCintura.equals("")) {
			circunferencia.setClassRelacaoCirCintura("Sem classificação");
		}else {
			circunferencia.setClassRelacaoCirCintura(resultadoRelacaoCircunferenciaCintura);
		}
		
		if(relacaoCinturaEstatura.equals("")) {
			circunferencia.setRelacaoCinturaEstatura(0);
		}else {
			circunferencia.setRelacaoCinturaEstatura(Double.parseDouble(relacaoCinturaEstatura));
		}
		
		if(resultadoRelacaoCinturaEstatura.equals("")) {
			circunferencia.setClassRelacaoCinturaEstatura("Sem classificação");
		}else {
			circunferencia.setClassRelacaoCinturaEstatura(resultadoRelacaoCinturaEstatura);
		}
		
		if(indiceConicidade.equals("")) {
			circunferencia.setIndiceConicidade(0);
		}else {
			circunferencia.setIndiceConicidade(Double.parseDouble(indiceConicidade));
		}
		
		if(resultadoIndiceConicidade.equals("")) {
			circunferencia.setClassIndiceConicidade("Sem classificação");
		}else {
			circunferencia.setClassIndiceConicidade(resultadoIndiceConicidade);
		}
		
		DAOClienteRepository daoCliente = new DAOClienteRepository();
		ModelCliente cliente = new ModelCliente();
		
		cliente = daoCliente.pesquisaCliente(avaliacao.getCodCliente());
		
		DAOCircunferenciaRepository daoCircunferencia = new DAOCircunferenciaRepository();
		daoCircunferencia.alterarCircunferenciaPeloCodAvaliacao(circunferencia);
		
		
		RequestDispatcher redireciona = request.getRequestDispatcher("principal/principal.jsp");
		request.setAttribute("sexo", cliente.getSexo());
		request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
		request.setAttribute("avaliacao", avaliacao);
		redireciona.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
