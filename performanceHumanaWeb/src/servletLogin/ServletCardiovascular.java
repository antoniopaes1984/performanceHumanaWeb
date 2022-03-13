package servletLogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOAvaliacaoRepository;
import dao.DAOCardiovascularRepository;
import dao.DAOClienteRepository;
import dao.DAOComposicaoRepository;
import dao.DAOResultadoRepository;
import model.ModelAvaliacao;
import model.ModelCardiovascular;
import model.ModelCliente;
import model.ModelMedidas;
import model.ModelResultado;

/**
 * Servlet implementation class ServletCardiovascular
 */
@WebServlet("/ServletCardiovascular")
public class ServletCardiovascular extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ServletCardiovascular() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		request.setCharacterEncoding("UTF-8");
		String codAvaliacao = request.getParameter("codavaliacao");
		
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		DAOCardiovascularRepository daoCardio = new DAOCardiovascularRepository();
		ModelCardiovascular cardio = new ModelCardiovascular();
		cardio = daoCardio.pesquisaTesteCardio(Integer.parseInt(codAvaliacao));
		
		DAOClienteRepository daoCliente = new DAOClienteRepository();
		ModelCliente cliente = new ModelCliente();
		cliente = daoCliente.pesquisaCliente(avaliacao.getCodCliente());
		
		DAOComposicaoRepository daoComposicao = new DAOComposicaoRepository();
		ModelMedidas medidas = new ModelMedidas();
		medidas = daoComposicao.pesquisarMedidasPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		DAOResultadoRepository daoResultado = new DAOResultadoRepository();
		ModelResultado resultado = new ModelResultado();
		resultado = daoResultado.pesquisaResultadoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		
		RequestDispatcher redireciona = request.getRequestDispatcher("principal/cardiovascular.jsp");
		
		request.setAttribute("resultado", resultado);
		request.setAttribute("medidas", medidas);
		request.setAttribute("cliente", cliente);
		request.setAttribute("cardiovascular", cardio);
		request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
		request.setAttribute("avaliacao", avaliacao);
		redireciona.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
;	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		request.setCharacterEncoding("UTF-8");
		String codAvaliacao = request.getParameter("codAvaliacao");
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		String protocoloCardio = request.getParameter("protocoloCardio");
		String tempoMinutos = request.getParameter("tempoMinutos");
		String tempoSegundos = request.getParameter("tempoSegundos");
		String cargaWatts = request.getParameter("cargaWatts");
		String cargaKg = request.getParameter("cargaKg");
		String distanciaPercorrida = request.getParameter("distanciaPercorrida");
		String fcTeste = request.getParameter("fcTeste");
		String condicaAtual = request.getParameter("condicaAtual");
		String velocidadeKmH = request.getParameter("velocidadeKm/h");
		String nivelAtvFisica = request.getParameter("nivelAtvFisica");
		String inclinacaoEsteira = request.getParameter("inclinacaoEsteira");
		String peso = request.getParameter("peso");
		String vo2CargaLmin = request.getParameter("vo2CargaLmin");
		String vo2MaxMlMin = request.getParameter("vo2MaxMlMin");
		String vo2MaxLMin = request.getParameter("vo2MaxLMin");
		String vo2Predito = request.getParameter("vo2Predito");
		String kcalMin = request.getParameter("kcalMin");
		String metMax = request.getParameter("metMax");
		String deficitFuncional = request.getParameter("deficitFuncional");
		String classificacao = request.getParameter("classificacao");
		ModelCardiovascular cardio = new ModelCardiovascular();
		
		if(protocoloCardio.isEmpty() || protocoloCardio==null) {
			cardio.setFormulaUsada("Escolher protocolo");
		}else {
			cardio.setFormulaUsada(protocoloCardio);
		}
		if( tempoMinutos==null  || tempoMinutos.isEmpty()) {
			cardio.setTempoMinutos(0);
		}else {
			cardio.setTempoMinutos(Integer.parseInt(tempoMinutos));
		}
		
		if( tempoSegundos==null || tempoSegundos.isEmpty() ) {
			cardio.setTempoSegundos(0);
		}else {
			cardio.setTempoSegundos(Integer.parseInt(tempoSegundos));
		}
		
		if( cargaWatts==null || cargaWatts.isEmpty() ) {
			cardio.setCargaWatts(0);
		}else {
			cardio.setCargaWatts(Double.parseDouble(cargaWatts));
		}
		
		if( cargaKg==null || cargaKg.isEmpty() ) {
			cardio.setCargaKg(0);
		}else {
			cardio.setCargaKg(Double.parseDouble(cargaKg));
		}
		
		if( distanciaPercorrida==null || distanciaPercorrida.isEmpty() ) {
			cardio.setDistanciaMetros(0);
		}else {
			cardio.setDistanciaMetros(Integer.parseInt(distanciaPercorrida));
		}
		
		if( fcTeste==null || fcTeste.isEmpty() ) {
			cardio.setFcTeste(0);
		}else {
			cardio.setFcTeste(Integer.parseInt(fcTeste));
		}
		
		if( condicaAtual==null || condicaAtual.isEmpty() ) {
			cardio.setCondicaoAtual("Selecionar");
		}else {
			cardio.setCondicaoAtual((condicaAtual));
		}
		
		if( velocidadeKmH==null || velocidadeKmH.isEmpty() ) {
			cardio.setVelocidadeKmHora(0);
		}else {
			cardio.setVelocidadeKmHora(Double.parseDouble(velocidadeKmH));
		}
		
		if(nivelAtvFisica==null || nivelAtvFisica.isEmpty() ) {
			cardio.setNivelAtvFisica(0);
		}else {
			cardio.setNivelAtvFisica(Integer.parseInt(nivelAtvFisica));
		}
		
		if( inclinacaoEsteira==null ||  inclinacaoEsteira.isEmpty()) {
			cardio.setInclinacaoEsteira(0);
		}else {
			cardio.setInclinacaoEsteira(Integer.parseInt(inclinacaoEsteira));
		}
		
		DAOComposicaoRepository daoComposicao = new DAOComposicaoRepository();
		
		if( peso==null || peso.isEmpty() ) {
			cardio.setPeso(0);
		}else {
			cardio.setPeso(Double.parseDouble(peso));
		}
		
		if(vo2CargaLmin==null || vo2CargaLmin.isEmpty() ) {
			cardio.setVo2CargaLMin(0);
		}else {
			cardio.setVo2CargaLMin(Double.parseDouble(vo2CargaLmin));
		}
		
		if(vo2MaxMlMin==null || vo2MaxMlMin.isEmpty() ) {
			cardio.setVo2maxMlKgMin(0);
		}else {
			cardio.setVo2maxMlKgMin(Double.parseDouble(vo2MaxMlMin));
		}
		
		if(vo2MaxLMin==null ||  vo2MaxLMin.isEmpty() ) {
			cardio.setVo2MaxLMin(0);
		}else {
			cardio.setVo2MaxLMin(Double.parseDouble(vo2MaxLMin));
		}
		
		if(vo2Predito==null || vo2Predito.isEmpty()) {
			cardio.setVo2Predito(0);
		}else {
			cardio.setVo2Predito(Double.parseDouble(vo2Predito));
		}
		
		if(kcalMin==null || kcalMin.isEmpty() ) {
			cardio.setKcalMin(0);
		}else {
			cardio.setKcalMin(Double.parseDouble(kcalMin));
		}
		
		if(metMax==null || metMax.isEmpty() ) {
			cardio.setMetMax(0);
		}else {
			cardio.setMetMax(Double.parseDouble(metMax));
		}
		
		if(deficitFuncional==null || deficitFuncional.isEmpty()) {
			cardio.setDefictFuncional(0);
		}else {
			cardio.setDefictFuncional(Double.parseDouble(deficitFuncional));
		}
		
		if(classificacao==null || classificacao.isEmpty()) {
			cardio.setClassificaoAHA("Sem classificação");
		}else {
			cardio.setClassificaoAHA(classificacao);
		}
		
		cardio.setCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		DAOCardiovascularRepository daoCardio = new DAOCardiovascularRepository();
		
			daoComposicao.alterarPeso(cardio.getPeso(), cardio.getCodAvaliacao());
			daoCardio.alterarTesteCardio(cardio);
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
