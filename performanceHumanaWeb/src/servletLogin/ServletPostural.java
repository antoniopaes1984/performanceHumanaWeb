package servletLogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOAvaliacaoRepository;
import dao.DAOPosturalRepository;
import model.ModelAvaliacao;
import model.ModelPostural;


@WebServlet("/ServletPostural")
public class ServletPostural extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServletPostural() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String codAvaliacao = request.getParameter("codavaliacao");
		DAOPosturalRepository daoPostural = new DAOPosturalRepository();
		ModelPostural postural = new ModelPostural();
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		
		try {
			postural = daoPostural.pesquisaPostural(Integer.parseInt(codAvaliacao));
			avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/postural.jsp");
			request.setAttribute("codAvaliacao", postural.getCodAvaliacao());
			request.setAttribute("postural", postural);
			request.setAttribute("avaliacao", avaliacao);
			redireciona.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		String codAvaliacao = request.getParameter("codAvaliacao");
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		try {
			avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		ModelPostural postural = new ModelPostural();
		
		
		
		
		
		String visaoDorsalCabecaPescoco = request.getParameter("visaoDorsalCabecaPescoco");
		if(visaoDorsalCabecaPescoco.equals("visaoDorsalCabecaPescoco1")) {
			postural.setVisaoDorsalCabecaPescoco1(true);
			postural.setVisaoDorsalCabecaPescoco3(false);
			postural.setVisaoDorsalCabecaPescoco5(false);
		}else if(visaoDorsalCabecaPescoco.equals("visaoDorsalCabecaPescoco3")) {
			postural.setVisaoDorsalCabecaPescoco1(false);
			postural.setVisaoDorsalCabecaPescoco3(true);
			postural.setVisaoDorsalCabecaPescoco5(false);
		}else {
			postural.setVisaoDorsalCabecaPescoco1(false);
			postural.setVisaoDorsalCabecaPescoco3(false);
			postural.setVisaoDorsalCabecaPescoco5(true);
		}
		
		String visaoDorsalOmbro = request.getParameter("visaoDorsalOmbro");
		if(visaoDorsalOmbro.equals("visaoDorsalOmbro1")) {
			postural.setVisaoDorsalOmbros1(true);
			postural.setVisaoDorsalOmbros3(false);
			postural.setVisaoDorsalOmbros5(false);
		}else if(visaoDorsalOmbro.equals("visaoDorsalOmbro3")) {
			postural.setVisaoDorsalOmbros1(false);
			postural.setVisaoDorsalOmbros3(true);
			postural.setVisaoDorsalOmbros5(false);
		}else {
			postural.setVisaoDorsalOmbros1(false);
			postural.setVisaoDorsalOmbros3(false);
			postural.setVisaoDorsalOmbros5(true);
		}
		
		String visaoDorsalColuna = request.getParameter("visaoDorsalColuna");
		if(visaoDorsalColuna.equals("visaoDorsalColuna1")) {
			postural.setVisaoDorsalColuna1(true);
			postural.setVisaoDorsalColuna3(false);
			postural.setVisaoDorsalColuna5(false);
		}else if(visaoDorsalColuna.equals("visaoDorsalColuna3")) {
			postural.setVisaoDorsalColuna1(false);
			postural.setVisaoDorsalColuna3(true);
			postural.setVisaoDorsalColuna5(false);
		}else {
			postural.setVisaoDorsalColuna1(false);
			postural.setVisaoDorsalColuna3(false);
			postural.setVisaoDorsalColuna5(true);
		}
		
		String visaoDorsalQuadril = request.getParameter("visaoDorsalQuadril");
		if(visaoDorsalQuadril.equals("visaoDorsalQuadril1")) {
			postural.setVisaoDorsalQuadril1(true);
			postural.setVisaoDorsalQuadril3(false);
			postural.setVisaoDorsalQuadril5(false);
		}else if(visaoDorsalQuadril.equals("visaoDorsalQuadril3")) {
			postural.setVisaoDorsalQuadril1(false);
			postural.setVisaoDorsalQuadril3(true);
			postural.setVisaoDorsalQuadril5(false);
		}else {
			postural.setVisaoDorsalQuadril1(false);
			postural.setVisaoDorsalQuadril3(false);
			postural.setVisaoDorsalQuadril5(true);
		}
		
		String visaoDorsalJoelhos = request.getParameter("visaoDorsalJoelhos");
		if(visaoDorsalJoelhos.equals("visaoDorsalJoelhos1")) {
			postural.setVisaoDorsalJoelhos1(true);
			postural.setVisaoDorsalJoelhos3(false);
			postural.setVisaoDorsalJoelhos5(false);
		}else if(visaoDorsalJoelhos.equals("visaoDorsalJoelhos3")) {
			postural.setVisaoDorsalJoelhos1(false);
			postural.setVisaoDorsalJoelhos3(true);
			postural.setVisaoDorsalJoelhos5(false);
		}else {
			postural.setVisaoDorsalJoelhos1(false);
			postural.setVisaoDorsalJoelhos3(false);
			postural.setVisaoDorsalJoelhos5(true);
		}
		
		String visaoDorsalCalcanhares = request.getParameter("visaoDorsalCalcanhares");
		if(visaoDorsalCalcanhares.equals("visaoDorsalCalcanhares1")) {
			postural.setVisaoDorsalCalcanhares1(true);
			postural.setVisaoDorsalCalcanhares3(false);
			postural.setVisaoDorsalCalcanhares5(false);
		}else if(visaoDorsalCalcanhares.equals("visaoDorsalCalcanhares3")) {
			postural.setVisaoDorsalCalcanhares1(false);
			postural.setVisaoDorsalCalcanhares3(true);
			postural.setVisaoDorsalCalcanhares5(false);
		}else {
			postural.setVisaoDorsalCalcanhares1(false);
			postural.setVisaoDorsalCalcanhares3(false);
			postural.setVisaoDorsalCalcanhares5(true);
		}
		
		String visaoDorsalPes = request.getParameter("visaoDorsalPes");
		if(visaoDorsalPes.equals("visaoDorsalPes1")) {
			postural.setVisaoDorsalPes1(true);
			postural.setVisaoDorsalPes3(false);
			postural.setVisaoDorsalPes5(false);
		}else if(visaoDorsalPes.equals("visaoDorsalPes3")) {
			postural.setVisaoDorsalPes1(false);
			postural.setVisaoDorsalPes3(true);
			postural.setVisaoDorsalPes5(false);
		}else {
			postural.setVisaoDorsalPes1(false);
			postural.setVisaoDorsalPes3(false);
			postural.setVisaoDorsalPes5(true);
		}
		
		String visaoLateralPescoco = request.getParameter("visaoLateralPescoco");
		if(visaoLateralPescoco.equals("visaoLateralPescoco1")) {
			postural.setVisaoLateralPescocoPeitora1(true);
			postural.setVisaoLateralPescocoPeitora3(false);
			postural.setVisaoLateralPescocoPeitora5(false);
		}else if(visaoLateralPescoco.equals("visaoLateralPescoco3")) {
			postural.setVisaoLateralPescocoPeitora1(false);
			postural.setVisaoLateralPescocoPeitora3(true);
			postural.setVisaoLateralPescocoPeitora5(false);
		}else {
			postural.setVisaoLateralPescocoPeitora1(false);
			postural.setVisaoLateralPescocoPeitora3(false);
			postural.setVisaoLateralPescocoPeitora5(true);
		}
		
		String visaoLateralOmbros = request.getParameter("visaoLateralOmbros");
		if(visaoLateralOmbros.equals("visaoLateralOmbros1")) {
			postural.setVisaoLateralOmbros1(true);
			postural.setVisaoLateralOmbros3(false);
			postural.setVisaoLateralOmbros5(false);
		}else if(visaoLateralOmbros.equals("visaoLateralOmbros3")) {
			postural.setVisaoLateralOmbros1(false);
			postural.setVisaoLateralOmbros3(true);
			postural.setVisaoLateralOmbros5(false);
		}else {
			postural.setVisaoLateralOmbros1(false);
			postural.setVisaoLateralOmbros3(false);
			postural.setVisaoLateralOmbros5(true);
		}
		
		String visaoLateralTorax = request.getParameter("visaoLateralTorax");
		if(visaoLateralTorax.equals("visaoLateralTorax1")) {
			postural.setVisaoLateralTorax1(true);
			postural.setVisaoLateralTorax3(false);
			postural.setVisaoLateralTorax5(false);
		}else if(visaoLateralTorax.equals("visaoLateralTorax3")) {
			postural.setVisaoLateralTorax1(false);
			postural.setVisaoLateralTorax3(true);
			postural.setVisaoLateralTorax5(false);
		}else {
			postural.setVisaoLateralTorax1(false);
			postural.setVisaoLateralTorax3(false);
			postural.setVisaoLateralTorax5(true);
		}
		
		String visaoLateralColuna = request.getParameter("visaoLateralColuna");
		if(visaoLateralColuna.equals("visaoLateralColuna1")) {
			postural.setVisaoLateralColunaToracicaCifose1(true);
			postural.setVisaoLateralColunaToracicaCifose3(false);
			postural.setVisaoLateralColunaToracicaCifose5(false);
		}else if(visaoLateralColuna.equals("visaoLateralColuna3")) {
			postural.setVisaoLateralColunaToracicaCifose1(false);
			postural.setVisaoLateralColunaToracicaCifose3(true);
			postural.setVisaoLateralColunaToracicaCifose5(false);
		}else {
			postural.setVisaoLateralColunaToracicaCifose1(false);
			postural.setVisaoLateralColunaToracicaCifose3(false);
			postural.setVisaoLateralColunaToracicaCifose5(true);
		}
		
		String visaoLateralLombossacral = request.getParameter("visaoLateralLombossacral");
		if(visaoLateralLombossacral.equals("visaoLateralLombossacral1")) {
			postural.setVisaoLateralColunaLombossacraLordose1(true);
			postural.setVisaoLateralColunaLombossacraLordose3(false);
			postural.setVisaoLateralColunaLombossacraLordose5(false);
		}else if(visaoLateralLombossacral.equals("visaoLateralLombossacral3")) {
			postural.setVisaoLateralColunaLombossacraLordose1(false);
			postural.setVisaoLateralColunaLombossacraLordose3(true);
			postural.setVisaoLateralColunaLombossacraLordose5(false);
		}else {
			postural.setVisaoLateralColunaLombossacraLordose1(false);
			postural.setVisaoLateralColunaLombossacraLordose3(false);
			postural.setVisaoLateralColunaLombossacraLordose5(true);
		}
		
		String visaoLateralTronco = request.getParameter("visaoLateralTronco");
		if(visaoLateralTronco.equals("visaoLateralTronco1")) {
			postural.setVisaoLateralTronco1(true);
			postural.setVisaoLateralTronco3(false);
			postural.setVisaoLateralTronco5(false);
		}else if(visaoLateralTronco.equals("visaoLateralTronco3")) {
			postural.setVisaoLateralTronco1(false);
			postural.setVisaoLateralTronco3(true);
			postural.setVisaoLateralTronco5(false);
		}else {
			postural.setVisaoLateralTronco1(false);
			postural.setVisaoLateralTronco3(false);
			postural.setVisaoLateralTronco5(true);
		}
		
		String visaoLateralAbdomen = request.getParameter("visaoLateralAbdomen");
		if(visaoLateralAbdomen.equals("visaoLateralAbdomen1")) {
			postural.setVisaoLateralAbdomen1(true);
			postural.setVisaoLateralAbdomen3(false);
			postural.setVisaoLateralAbdomen5(false);
		}else if(visaoLateralAbdomen.equals("visaoLateralAbdomen3")) {
			postural.setVisaoLateralAbdomen1(false);
			postural.setVisaoLateralAbdomen3(true);
			postural.setVisaoLateralAbdomen5(false);
		}else {
			postural.setVisaoLateralAbdomen1(false);
			postural.setVisaoLateralAbdomen3(false);
			postural.setVisaoLateralAbdomen5(true);
		}
		
		String visaoLateralJoelhos = request.getParameter("visaoLateralJoelhos");
		if(visaoLateralJoelhos.equals("visaoLateralJoelhos1")) {
			postural.setVisaoLateralJoelhos1(true);
			postural.setVisaoLateralJoelhos3(false);
			postural.setVisaoLateralJoelhos5(false);
		}else if(visaoLateralJoelhos.equals("visaoLateralJoelhos3")) {
			postural.setVisaoLateralJoelhos1(false);
			postural.setVisaoLateralJoelhos3(true);
			postural.setVisaoLateralJoelhos5(false);
		}else {
			postural.setVisaoLateralJoelhos1(false);
			postural.setVisaoLateralJoelhos3(false);
			postural.setVisaoLateralJoelhos5(true);
		}
		
		
		
		
		String valorRegiaoCabecaPescoco = request.getParameter("valorRegiaoCabecaPescoco");
		
		String valorRegiaoAbdomemQuadril = request.getParameter("valorRegiaoAbdomemQuadril");
		
		String valorIndiceCorrecaoPostural = request.getParameter("valorIndiceCorrecaoPostural");
		
		String valorRegiaoColunaLombar = request.getParameter("valorRegiaoColunaLombar");
		
		String valorRegiaoMembrosInferiores = request.getParameter("valorRegiaoMembrosInferiores");
		
		String resultado = request.getParameter("resultado");
		
		String txtObservacoesAvaliador = request.getParameter("txtObservacoesAvaliador");
		
		
		
		
		postural.setRegiaoCabecaPescoco(Double.parseDouble(valorRegiaoCabecaPescoco));
		
		postural.setRegiaoAbdomenQuadril(Double.parseDouble(valorRegiaoAbdomemQuadril));
		
		postural.setIndiceCorrecaoPostural(Double.parseDouble(valorIndiceCorrecaoPostural));
		
		postural.setRegiaoColunaDorsalLombar(Double.parseDouble(valorRegiaoColunaLombar));
		
		postural.setRegiaoMembrosInferioers(Double.parseDouble(valorRegiaoMembrosInferiores));
		
		postural.setClassificacao(resultado);
		
		postural.setObservacoes(txtObservacoesAvaliador);
		
		postural.setCodAvaliacao(Integer.parseInt(codAvaliacao));
		
		DAOPosturalRepository daoPostural = new DAOPosturalRepository();
		try {
			daoPostural.alterarPostural(postural);
			RequestDispatcher view = request.getRequestDispatcher("principal/principal.jsp");
			request.setAttribute("codAvaliacao", codAvaliacao);
			request.setAttribute("avaliacao", avaliacao);
			view.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
