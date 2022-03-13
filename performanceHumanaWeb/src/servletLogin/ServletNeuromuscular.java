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
import dao.DAONeuromuscularRepository;
import model.ModelAvaliacao;
import model.ModelCliente;
import model.ModelMedidas;
import model.ModelNeuromuscular;

/**
 * Servlet implementation class ServletNeuromuscular
 */
@WebServlet("/ServletNeuromuscular")
public class ServletNeuromuscular extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletNeuromuscular() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String codAvaliacao = request.getParameter("codavaliacao");
			DAONeuromuscularRepository daoNeuro = new DAONeuromuscularRepository();
			ModelNeuromuscular neuromuscular = new ModelNeuromuscular();
			neuromuscular = daoNeuro.pesquisaAvaliacaoNeuromuscularCodAvaliacao(Integer.parseInt(codAvaliacao));
			
			DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
			ModelAvaliacao avaliacao = new ModelAvaliacao();
			avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			
			DAOClienteRepository daoCliente = new DAOClienteRepository();
			ModelCliente cliente = new ModelCliente();
			cliente = daoCliente.pesquisaCliente(avaliacao.getCodCliente());
			
			DAOComposicaoRepository daoComposicao = new DAOComposicaoRepository();
			ModelMedidas medidas = new ModelMedidas();
			medidas = daoComposicao.pesquisarMedidasPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			
			RequestDispatcher redirecionar = request.getRequestDispatcher("principal/neuromuscular.jsp");
			request.setAttribute("medidas", medidas);
			request.setAttribute("neuromuscular", neuromuscular);
			request.setAttribute("avaliacao", avaliacao);
			request.setAttribute("cliente", cliente);
			
			redirecionar.forward(request, response);
			
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
		ModelNeuromuscular neuroMuscular = new ModelNeuromuscular();
		
		String peso = request.getParameter("peso");
		
		
		String codAvaliacao = request.getParameter("codAvaliacao");
		neuroMuscular.setCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		String resistenciaAbdominal = request.getParameter("resistenciaAbdominal");
		if(resistenciaAbdominal==null || resistenciaAbdominal.isEmpty()) {
			neuroMuscular.setNumRepetAbdominal(0);
		}else {
			neuroMuscular.setNumRepetAbdominal(Integer.parseInt(resistenciaAbdominal));
		}
		
		String classResisAbd = request.getParameter("classResisAbd");
		if(classResisAbd==null || classResisAbd.isEmpty()) {
			neuroMuscular.setClassificacaoAbdominal("Sem classificação");
		}else {
			neuroMuscular.setClassificacaoAbdominal(classResisAbd);
		}
		
		String resistenciabraquiPeitoral = request.getParameter("resistenciabraquiPeitoral");
		if(resistenciabraquiPeitoral==null || resistenciabraquiPeitoral.isEmpty()) {
			neuroMuscular.setNumRepetBraquioPeitoral(0);
		}else {
			neuroMuscular.setNumRepetBraquioPeitoral(Integer.parseInt(resistenciabraquiPeitoral));
		}
		
		String classResisBraquioPeitoral = request.getParameter("classResisBraquioPeitoral");
		if(classResisBraquioPeitoral==null || classResisBraquioPeitoral.isEmpty()) {
			neuroMuscular.setClassificacaoBraquioPeitoral("Sem classificação");
		}else {
			neuroMuscular.setClassificacaoBraquioPeitoral(classResisBraquioPeitoral);
		}
		
		String sentarAlcancarBanco = request.getParameter("sentarAlcancarBanco");
		if(sentarAlcancarBanco==null || sentarAlcancarBanco.isEmpty()) {
			neuroMuscular.setAmpliSentarAlcancarComBanco(0);
		}else {
			neuroMuscular.setAmpliSentarAlcancarComBanco(Integer.parseInt(sentarAlcancarBanco));
		}
		
		String classSentarAlcancarBanco = request.getParameter("classSentarAlcancarBanco");
		if(classSentarAlcancarBanco==null || classSentarAlcancarBanco.isEmpty()) {
			neuroMuscular.setClassifSentarAlcancarComBanco("Sem classificação");
		}else {
			neuroMuscular.setClassifSentarAlcancarComBanco(classSentarAlcancarBanco);
		}
		
		String sentarAlcancarSemBanco = request.getParameter("sentarAlcancarSemBanco");
		if(sentarAlcancarSemBanco==null || sentarAlcancarSemBanco.isEmpty()) {
			neuroMuscular.setAmpliSentarAlcancarSemBanco(0);
		}else {
			neuroMuscular.setAmpliSentarAlcancarSemBanco(Integer.parseInt(sentarAlcancarSemBanco));
		}
		
		String classSentarAlcancarSemBanco = request.getParameter("classSentarAlcancarSemBanco");
		if(classSentarAlcancarSemBanco==null | classSentarAlcancarSemBanco.isEmpty()) {
			neuroMuscular.setClassifSentarAlcancarSemBanco("Sem classificação");
		}else {
			neuroMuscular.setClassifSentarAlcancarSemBanco(classSentarAlcancarSemBanco);
		}
		
		String forcaSupino = request.getParameter("forcaSupino");
		if(forcaSupino==null || forcaSupino.isEmpty()) {
			neuroMuscular.setCargaMaxSupino(0);
		}else {
			neuroMuscular.setCargaMaxSupino(Double.parseDouble(forcaSupino));
		}
		
		String forcaRoscaDireta = request.getParameter("forcaRoscaDireta");
		if(forcaRoscaDireta==null || forcaRoscaDireta.isEmpty()) {
			neuroMuscular.setCargaMaxRoscaDir(0);
		}else {
			neuroMuscular.setCargaMaxRoscaDir(Double.parseDouble(forcaRoscaDireta));
		}
		
		String forcaPuxada = request.getParameter("forcaPuxada");
		if(forcaPuxada==null || forcaPuxada.isEmpty()) {
			neuroMuscular.setCargaMaxPuxadaFrente(0);
		}else {
			neuroMuscular.setCargaMaxPuxadaFrente(Double.parseDouble(forcaPuxada));
		}
		
		String forcaLegPress = request.getParameter("forcaLegPress");
		if(forcaLegPress==null || forcaLegPress.isEmpty()) {
			neuroMuscular.setCargaMaxLegPress(0);
		}else {
			neuroMuscular.setCargaMaxLegPress(Double.parseDouble(forcaLegPress));
		}
		
		String forcaExtensaoJoelho = request.getParameter("forcaExtensaoJoelho");
		if(forcaExtensaoJoelho==null || forcaExtensaoJoelho.isEmpty()) {
			neuroMuscular.setCargaMaxExtensaoJoelho(0);
		}else {
			neuroMuscular.setCargaMaxExtensaoJoelho(Double.parseDouble(forcaExtensaoJoelho));
		}
		
		String forcaFlexaoJoelho = request.getParameter("forcaFlexaoJoelho");
		if(forcaFlexaoJoelho==null || forcaFlexaoJoelho.isEmpty()) {
			neuroMuscular.setCargaMaxFlexaoJoelho(0);
		}else {
			neuroMuscular.setCargaMaxFlexaoJoelho(Double.parseDouble(forcaFlexaoJoelho));
		}
		
		String classForcaMuscular = request.getParameter("classForcaMuscular");
		if(classForcaMuscular==null || classForcaMuscular.isEmpty()) {
			neuroMuscular.setClassificacaoForcaRelativa("Sem classificação");
		}else {
			neuroMuscular.setClassificacaoForcaRelativa(classForcaMuscular);
		}
		
		String nomeExerc1 = request.getParameter("nomeExerc1");
		if(nomeExerc1==null || nomeExerc1.isEmpty()) {
			neuroMuscular.setTrmNomeExer1("Não informado");
		}else {
			neuroMuscular.setTrmNomeExer1(nomeExerc1);
		}
		
		String pesoLevan1 = request.getParameter("pesoLevan1");
		if(pesoLevan1==null || pesoLevan1.isEmpty()) {
			neuroMuscular.setTrmPesoLevantadoExer1(0);
		}else {
			neuroMuscular.setTrmPesoLevantadoExer1(Integer.parseInt(pesoLevan1));
		}
		
		String repet1 = request.getParameter("repet1");
		if(repet1==null || repet1.isEmpty()) {
			neuroMuscular.setTrmRepetiExer1(0);
		}else {
			neuroMuscular.setTrmRepetiExer1(Integer.parseInt(repet1));
		}
		
		String RM1 = request.getParameter("1RM1");
		if(RM1==null || RM1.isEmpty()) {
			neuroMuscular.setTrm1RMExer1(0);
		}else {
			neuroMuscular.setTrm1RMExer1(Double.parseDouble(RM1));
		}
		
		String nomeExerc2 = request.getParameter("nomeExerc2");
		if(nomeExerc2==null || nomeExerc2.isEmpty()) {
			neuroMuscular.setTrmNomeExer2("Não informado");
		}else {
			neuroMuscular.setTrmNomeExer2(nomeExerc2);
		}
		
		String pesoLevan2 = request.getParameter("pesoLevan2");
		if(pesoLevan2==null || pesoLevan2.isEmpty()) {
			neuroMuscular.setTrmPesoLevantadoExer2(0);
		}else {
			neuroMuscular.setTrmPesoLevantadoExer2(Integer.parseInt(pesoLevan2));
		}
		
		String repet2 = request.getParameter("repet2");
		if(repet2==null || repet2.isEmpty()) {
			neuroMuscular.setTrmRepetiExer2(0);
		}else {
			neuroMuscular.setTrmRepetiExer2(Integer.parseInt(repet2));
		}
		
		String RM2 = request.getParameter("1RM2");
		if(RM2==null || RM2.isEmpty()) {
			neuroMuscular.setTrm1RMExer2(0);
		}else {
			neuroMuscular.setTrm1RMExer2(Double.parseDouble(RM2));
		}
		
		String nomeExerc3 = request.getParameter("nomeExerc3");
		if(nomeExerc3==null || nomeExerc3.isEmpty()) {
			neuroMuscular.setTrmNomeExer3("Não informado");
		}else {
			neuroMuscular.setTrmNomeExer3(nomeExerc3);
		}
		
		String pesoLevan3 = request.getParameter("pesoLevan3");
		if(pesoLevan3==null || pesoLevan3.isEmpty()) {
			neuroMuscular.setTrmPesoLevantadoExer3(0);
		}else {
			neuroMuscular.setTrmPesoLevantadoExer3(Integer.parseInt(pesoLevan3));
		}
		
		String repet3 = request.getParameter("repet3");
		if(repet3==null || repet3.isEmpty()) {
			neuroMuscular.setTrmRepetiExer3(0);
		}else {
			neuroMuscular.setTrmRepetiExer3(Integer.parseInt(repet3));
		}
		
		String RM3 = request.getParameter("1RM3");
		if(RM3==null || RM3.isEmpty()) {
			neuroMuscular.setTrm1RMExer3(0);
		}else {
			neuroMuscular.setTrm1RMExer3(Double.parseDouble(RM3));
		}
		
		String nomeExerc4 = request.getParameter("nomeExerc4");
		if(nomeExerc4==null || nomeExerc4.isEmpty()) {
			neuroMuscular.setTrmNomeExer4("Não informado");
		}else {
			neuroMuscular.setTrmNomeExer4(nomeExerc4);
		}
		
		String pesoLevan4 = request.getParameter("pesoLevan4");
		if(pesoLevan4==null || pesoLevan4.isEmpty()) {
			neuroMuscular.setTrmPesoLevantadoExer4(0);
		}else {
			neuroMuscular.setTrmPesoLevantadoExer4(Integer.parseInt(pesoLevan4));
		}
		
		String repet4 = request.getParameter("repet4");
		if(repet4==null || repet4.isEmpty()) {
			neuroMuscular.setTrmRepetiExer4(0);
		}else {
			neuroMuscular.setTrmRepetiExer4(Integer.parseInt(repet4));
		}
		
		String RM4 = request.getParameter("1RM4");
		if(RM4==null || RM4.isEmpty()) {
			neuroMuscular.setTrm1RMExer4(0);
		}else {
			neuroMuscular.setTrm1RMExer4(Double.parseDouble(RM4));
		}
		
		DAONeuromuscularRepository daoNeuroMuscular = new DAONeuromuscularRepository();
		DAOAvaliacaoRepository daoAvaliacaoRepository = new DAOAvaliacaoRepository();
		
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		avaliacao = daoAvaliacaoRepository.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		
			daoNeuroMuscular.alterarAvaliacaoNeuromuscular(neuroMuscular);
			
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/principal.jsp");
			request.setAttribute("codAvaliacao", neuroMuscular.getCodAvaliacao());
			request.setAttribute("avaliacao", avaliacao);
			redireciona.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
	}

}
