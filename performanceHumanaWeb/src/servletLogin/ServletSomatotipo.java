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
import dao.DAOSomatotipoRepository;
import model.ModelAvaliacao;
import model.ModelCliente;
import model.ModelMedidas;
import model.ModelSomatotipo;

/**
 * Servlet implementation class ServletSomatotipo
 */
@WebServlet("/ServletSomatotipo")
public class ServletSomatotipo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletSomatotipo() {
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
		System.out.println("Cod "+codAvaliacao);
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		
		avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		
		ModelCliente cliente = new ModelCliente();
		DAOClienteRepository daoCliente = new DAOClienteRepository();
		cliente = daoCliente.pesquisaCliente(avaliacao.getCodCliente());
		
		DAOComposicaoRepository daoComposicao = new DAOComposicaoRepository();
		ModelMedidas medidas = new ModelMedidas();
		medidas = daoComposicao.pesquisarMedidasPeloCodAvaliacao(avaliacao.getCodAvaliacao());
		
		DAOSomatotipoRepository daoSomatotipo = new DAOSomatotipoRepository();
		ModelSomatotipo somatotipo = new ModelSomatotipo();
		somatotipo = daoSomatotipo.pesquisaSomatotipo(avaliacao.getCodAvaliacao());
		
		RequestDispatcher redireciona = request.getRequestDispatcher("principal/somatotipo.jsp");
		request.setAttribute("somatotipo", somatotipo);
		request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
		request.setAttribute("avaliacao", avaliacao);
		request.setAttribute("cliente", cliente);
		request.setAttribute("medidas", medidas);
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
		System.out.println("cod somato é :" +codAvaliacao);
		
		String dcTriceps = request.getParameter("dcTriceps");
		String dcSubescapular = request.getParameter("dcSubescapulatr");
		String dcSupraIliaca = request.getParameter("dcSupraIliaca");
		String dcPanturrilha = request.getParameter("dcPanturrilha");
		String cirBracoDirRelax = request.getParameter("cirBracoDirRelax");
		String cirPanturrilha = request.getParameter("cirPanturrilha");
		String diametroUmero = request.getParameter("diametroUmero");
		String diametroFemur = request.getParameter("diametroFemur");
		String peso = request.getParameter("peso");
		String altura = request.getParameter("altura");
		String endomorfia = request.getParameter("endomorfia");
		String mesomorfia = request.getParameter("mesomorfia");
		String ectomorfia = request.getParameter("ectomorfia");
		String classificacao = request.getParameter("classificacao");
		String acao = request.getParameter("acao");
		
		ModelSomatotipo somatotipo = new ModelSomatotipo();
		
		if(dcTriceps=="" || dcTriceps.isEmpty() || dcTriceps==null ) {
			somatotipo.setDcTriceps(0);
		}else {
			somatotipo.setDcTriceps(Double.parseDouble(dcTriceps));
		}
		
		if(dcSubescapular=="" || dcSubescapular.isEmpty() || dcSubescapular==null ) {
			somatotipo.setDcSubEscapular(0);
		}else {
			somatotipo.setDcSubEscapular(Double.parseDouble(dcSubescapular));
		}
		
		if(dcSupraIliaca=="" || dcSupraIliaca.isEmpty() || dcSupraIliaca==null ) {
			somatotipo.setDcSupraIliaca(0);
		}else {
			somatotipo.setDcSupraIliaca(Double.parseDouble(dcSupraIliaca));
		}
		
		if(dcPanturrilha=="" || dcPanturrilha.isEmpty() || dcPanturrilha==null ) {
			somatotipo.setDcPanturrilha(0);
		}else {
			somatotipo.setDcPanturrilha(Double.parseDouble(dcPanturrilha));
		}
		
		if(cirBracoDirRelax=="" || cirBracoDirRelax.isEmpty() || cirBracoDirRelax==null ) {
			somatotipo.setCircBracoDireitoRelax(0);
		}else {
			somatotipo.setCircBracoDireitoRelax(Double.parseDouble(cirBracoDirRelax));
		}
		
		if(cirPanturrilha=="" || cirPanturrilha.isEmpty() || cirPanturrilha==null ) {
			somatotipo.setCircPanturrilha(0);
		}else {
			somatotipo.setCircPanturrilha(Double.parseDouble(cirPanturrilha));
		}
		
		if(diametroUmero=="" || diametroUmero.isEmpty() || diametroUmero==null ) {
			somatotipo.setDiamUmero(0);
		}else {
			somatotipo.setDiamUmero(Double.parseDouble(diametroUmero));
		}
		
		if(diametroFemur=="" || diametroFemur.isEmpty() || diametroFemur==null ) {
			somatotipo.setDiamFemur(0);
		}else {
			somatotipo.setDiamFemur(Double.parseDouble(diametroFemur));
		}
		
		if(peso=="" || peso.isEmpty() || peso==null ) {
			somatotipo.setPeso(0);
		}else {
			somatotipo.setPeso(Double.parseDouble(peso));
		}
		
		if(altura=="" || altura.isEmpty() || altura==null ) {
			somatotipo.setAltura(0);
		}else {
			somatotipo.setAltura(Double.parseDouble(altura));
		}
		
		if(endomorfia=="" || endomorfia.isEmpty() || endomorfia==null ) {
			somatotipo.setSomatoTipoEndomorfia(0);
		}else {
			somatotipo.setSomatoTipoEndomorfia(Double.parseDouble(endomorfia));
		}
		
		if(mesomorfia=="" || mesomorfia.isEmpty() || mesomorfia==null ) {
			somatotipo.setSomatoTipoMesomorfia(0);
		}else {
			somatotipo.setSomatoTipoMesomorfia(Double.parseDouble(mesomorfia));
		}
		
		if(ectomorfia=="" || ectomorfia.isEmpty() || ectomorfia==null ) {
			somatotipo.setSomatoTipoEctomorfia(0);
		}else {
			somatotipo.setSomatoTipoEctomorfia(Double.parseDouble(ectomorfia));
		}
		
		if(classificacao.equals("") || classificacao.isEmpty() || classificacao==null ) {
			somatotipo.setClassificacaoSomatotipo("");
		}else {
			somatotipo.setClassificacaoSomatotipo(classificacao);
		}
		
		if(acao=="" || acao.isEmpty() || acao==null ) {
			somatotipo.setAcaoSomatotipo("");
		}else {
			somatotipo.setAcaoSomatotipo(acao);
		}
		
		somatotipo.setCod_avaliacao(Integer.parseInt(codAvaliacao));
		
		DAOSomatotipoRepository daoSomatotipo = new DAOSomatotipoRepository();
		
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		
			daoSomatotipo.alterarSomatotipo(somatotipo);
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/principal.jsp");
			request.setAttribute(diametroFemur, redireciona);
			request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
			request.setAttribute("avaliacao", avaliacao);
			redireciona.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
