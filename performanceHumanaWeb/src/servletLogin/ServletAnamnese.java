package servletLogin;

import java.io.IOException;

import javax.print.attribute.standard.MediaName;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DAOAnamneseRepository;
import dao.DAOAvaliacaoRepository;
import model.ModelAnamnese;
import model.ModelAvaliacao;
import regras.RegrasAnamnese;

/**
 * Servlet implementation class ServletAnamnese
 */
@WebServlet("/ServletAnamnese")
public class ServletAnamnese extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAnamnese() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		
		request.setCharacterEncoding("UTF-8");
		String acao = request.getParameter("acao");
		if(acao.equals("anamnese")){
			DAOAnamneseRepository daoAnamnese = new DAOAnamneseRepository();
			String codAvaliacao = request.getParameter("codavaliacao");
			
			ModelAnamnese anamnese = new ModelAnamnese();
			
			DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
			ModelAvaliacao avaliacaoEmExecucao = new ModelAvaliacao();
				
				avaliacaoEmExecucao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
				anamnese = daoAnamnese.pesquisaAnamnese(Integer.parseInt(codAvaliacao));
				RegrasAnamnese regrasAnamnese = new RegrasAnamnese();
				if(regrasAnamnese.verificaSePressaoArterialFoiSelecionada(anamnese.getPressaoArterial())) {
					String pressaoSistolica = regrasAnamnese.retornaPressaoSistolica(anamnese.getPressaoArterial());
					anamnese.setPressaoSistolica(pressaoSistolica);
					
					String pressaoDiastolica = regrasAnamnese.retornaPressaoDiastolica(anamnese.getPressaoArterial());
					anamnese.setPressaoDiastolica(pressaoDiastolica);
				}else {
					anamnese.setPressaoSistolica("Não informada");
					anamnese.setPressaoDiastolica("Não informada");
				}
				
				RequestDispatcher redireciona = request.getRequestDispatcher("principal/anamnese.jsp");
				request.setAttribute("codAvaliacao", avaliacaoEmExecucao.getCodAvaliacao());
				request.setAttribute("avaliacao", avaliacaoEmExecucao);
				request.setAttribute("anamnese", anamnese);
				redireciona.forward(request, response);
			}
				
			
		}catch (Exception e) {
				e.printStackTrace();
			}
			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
		String codAvaliacao = request.getParameter("txtCodAvaliacao");
		String atvFisAtual = request.getParameter("txtAtividAtual");
		String atvFisPret = request.getParameter("txtAtividPret");
		String objetivo = request.getParameter("txtObjetivo");
		String disponibilidade = request.getParameter("txtDisponibilidade");
		String fumante = request.getParameter("txtFumante");
		String situacao = request.getParameter("situacao");
		String dorLesao = request.getParameter("txtDorLesao");
		String histFamiliar = request.getParameter("txtHistoricoFamiliar");
		String histPessoal = request.getParameter("txtHistoricoPessoal");
		String observacoes = request.getParameter("txtObservacoes");
		String pressaoSist = request.getParameter("txtPressaoSistolica");
		String pressaoDias = request.getParameter("txtPressaoDiastolica");
		String classPressao = request.getParameter("classPA");
		String oximetria = request.getParameter("txtOximetria");
		String resulOximetria = request.getParameter("resultadoOximetria");
		String glicemia = request.getParameter("txtGlicemia");
		String resultGlicemia = request.getParameter("resultadoGlicemia");
		String triglicerideo = request.getParameter("txtTriglicerideo");
		String resultTriglicerideo = request.getParameter("resultadoTriglicerideo");
		String colesterol = request.getParameter("txtColesterol");
		String resultColesterol = request.getParameter("resultadoColesterol");
		String hdl = request.getParameter("txtHdl");
		String resultHdl = request.getParameter("resultadoHdl");
		String ldl = request.getParameter("txtLdl");
		String resultLdl = request.getParameter("resultadoLdl");
		String vldl = request.getParameter("txtVldl");
		String resultVldl = request.getParameter("resultadoVldl");
		DAOAnamneseRepository daoAnamnese = new DAOAnamneseRepository();
		ModelAnamnese anamnese = new ModelAnamnese();
		anamnese.setCodAvaliacao(Integer.parseInt(codAvaliacao));
		anamnese.setAtividadeFisicaAtual(atvFisAtual);
		anamnese.setAtividadeFisicaPretendida(atvFisPret);
		anamnese.setObjetivo(objetivo);
		anamnese.setDisponibilidade(disponibilidade);
		anamnese.setFumante(fumante);
		anamnese.setSituacao(situacao);
		anamnese.setDorLesao(dorLesao);
		anamnese.setHistoricoMedicoFamiliar(histFamiliar);
		anamnese.setHistoricoMedicoPessoal(histPessoal);
		anamnese.setObservacoes(observacoes);
		String pressaoArterial = pressaoSist+"x"+pressaoDias;
		anamnese.setPressaoArterial(pressaoArterial);
		anamnese.setClassificacaoPressaoArterial(classPressao);
		anamnese.setOximetria(oximetria);
		anamnese.setClassificacaoOximetria(resulOximetria);
		anamnese.setGlicemia(Integer.parseInt(glicemia));
		anamnese.setResultaGlicemia(resultGlicemia);
		anamnese.setTriglicerideo(Integer.parseInt(triglicerideo));
		anamnese.setResulta_triglicerideo(resultTriglicerideo);
		anamnese.setColesterolTotal(Integer.parseInt(colesterol));
		anamnese.setResulta_colesterol(resultColesterol);
		anamnese.setHdl(Integer.parseInt(hdl));
		anamnese.setResulta_hdl(resultHdl);
		anamnese.setLdl(Integer.parseInt(ldl));
		anamnese.setResulta_ldl(resultLdl);
		anamnese.setVldl(Integer.parseInt(vldl));
		anamnese.setResulta_vldl(resultVldl);
		
			daoAnamnese.alterarAnamnese(anamnese);
			DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/principal.jsp");
			request.setAttribute("codAvaliacao", anamnese.getCodAvaliacao());
			request.setAttribute("avaliacao", daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(anamnese.getCodAvaliacao()));
			request.setAttribute(pressaoArterial, redireciona);
			redireciona.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	

}
