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
import model.ModelCliente;
import model.ModelMedidas;
import model.ModelResultado;
import regras.RegrasComposicao;

/**
 * Servlet implementation class ServletComposicao
 */
@WebServlet("/ServletComposicao")
public class ServletComposicao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ServletComposicao() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			String codAvaliacao = request.getParameter("codavaliacao");
			
			RequestDispatcher redirecionar = request.getRequestDispatcher("principal/composicaocorporal.jsp");
			DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
			ModelAvaliacao avaliacao = new ModelAvaliacao();
			avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			ModelMedidas medidas = new ModelMedidas();
			DAOComposicaoRepository daoComposicao = new DAOComposicaoRepository();
			medidas = daoComposicao.pesquisarMedidasPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			DAOClienteRepository daoCliente = new DAOClienteRepository();
			request.setAttribute("cliente", daoCliente.pesquisaCliente(avaliacao.getCodCliente()));
			request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
			request.setAttribute("avaliacao", avaliacao);
			
			request.setAttribute("composicao", medidas);
			redirecionar.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		request.setCharacterEncoding("UTF-8");
		String codAvaliacao = request.getParameter("codAvaliacao");
		System.out.println("código da avaliação dentro post composição: "+codAvaliacao);
		String peso = request.getParameter("txtPeso");
		String altura = request.getParameter("txtAltura");
		String formula = request.getParameter("txtFormulaUsada");
		String triceps1 = request.getParameter("txtTriceps1");
		String triceps2 = request.getParameter("txtTriceps2");
		String triceps3 = request.getParameter("txtTriceps3");
		String mediaTriceps = request.getParameter("txtMediaTriceps");
		String biceps1 = request.getParameter("txtBiceps1");
		String biceps2 = request.getParameter("txtBiceps2");
		String biceps3 = request.getParameter("txtBiceps3");
		String mediaBiceps = request.getParameter("txtMediaBiceps");
		String subEscapular1 = request.getParameter("txtSubescapular1");
		String subEscapular2 = request.getParameter("txtSubescapular2");
		String subEscapular3 = request.getParameter("txtSubescapular3");
		String mediaSubEscapular = request.getParameter("txtMediaSubescapular");
		String peito1 = request.getParameter("txtPeito1");
		String peito2 = request.getParameter("txtPeito2");
		String peito3 = request.getParameter("txtPeito3");
		String mediaPeito = request.getParameter("txtMediaPeito");
		String axilarMedia1 = request.getParameter("txtAxilarMedia1");
		String axilarMedia2 = request.getParameter("txtAxilarMedia2");
		String axilarMedia3 = request.getParameter("txtAxilarMedia3");
		String axilarMedia = request.getParameter("txtAxilarMedia");
		String supraIliaca1 = request.getParameter("txtSupraIliaca1");
		String supraIliaca2 = request.getParameter("txtSupraIliaca2");
		String supraIliaca3 = request.getParameter("txtSupraIliaca3");
		String supraIliacaMedia = request.getParameter("txtSupraIliacaMedia");
		String abdomen1 = request.getParameter("txtAbdomen1");
		String abdomen2 = request.getParameter("txtAbdomen2");
		String abdomen3 = request.getParameter("txtAbdomen3");
		String abdomenMedia = request.getParameter("txtAbdomenMedia");
		String coxaMedial1 = request.getParameter("txtCoxaMedial1");
		String coxaMedial2 = request.getParameter("txtCoxaMedial2");
		String coxaMedial3 = request.getParameter("txtCoxaMedial3");
		String coxaMedialMedia = request.getParameter("txtCoxaMedialMedia");
		String coxaProximal1 = request.getParameter("txtCoxaProximal1");
		String coxaProximal2 = request.getParameter("txtCoxaProximal2");
		String coxaProximal3 = request.getParameter("txtCoxaProximal3");
		String coxaProximalMedia = request.getParameter("txtCoxaProximallMedia");
		String paturrilha1 = request.getParameter("txtPanturrilha1");
		String paturrilha2 = request.getParameter("txtPanturrilha2");
		String paturrilha3 = request.getParameter("txtPanturrilha3");
		String paturrilhaMedia = request.getParameter("txtPanturrilhalMedia");
		String somaDasDobras = request.getParameter("txtSomaDobras");
		String cirCintura = request.getParameter("txtCirCintura");
		String cirAbdomen = request.getParameter("txtCirAbdomen");
		String cirIliaco = request.getParameter("txtCirIliaco");
		String cirQuadril = request.getParameter("txtCirQuadril");
		String diametroOsseoPunho = request.getParameter("txtDiametroOsseoPunho");
		String diametroOsseoUmero = request.getParameter("txtDiametroOsseoUmero");
		String diametroOsseoFemur = request.getParameter("txtDiametroOsseoFemur");
		String percentualGoduraAtual = request.getParameter("txtPercentualGorduraAtual");
		String percentualGoduraAlvo = request.getParameter("txtPercentualGorduraAlvo");
		
		ModelAvaliacao avaliacao = new ModelAvaliacao();
		DAOAvaliacaoRepository daoAvaliacao = new DAOAvaliacaoRepository();
		
			avaliacao = daoAvaliacao.pesquisaAvaliacaoPeloCodAvaliacao(Integer.parseInt(codAvaliacao));
			ModelMedidas medidas = new ModelMedidas();
			DAOComposicaoRepository daoComposicao = new DAOComposicaoRepository();
			medidas.setCodAvaliacao(Integer.parseInt(codAvaliacao));
			medidas.setPeso(Double.parseDouble(peso));
			medidas.setAltura(Double.parseDouble(altura));
			medidas.setFormula_usada(formula);
			if(triceps1==null || triceps1.isEmpty()) {
				medidas.setAmostra1DcTriceps(0);
			}else {
				medidas.setAmostra1DcTriceps(Double.parseDouble(triceps1));
			}
			
			if(triceps2==null || triceps2.isEmpty()) {
				medidas.setAmostra2DcTriceps(0);
			}else {
				medidas.setAmostra2DcTriceps(Double.parseDouble(triceps2));
			}
			
			if(triceps3==null || triceps3.isEmpty()) {
				medidas.setAmostra3DcTriceps(0);
			}else {
				medidas.setAmostra3DcTriceps(Double.parseDouble(triceps3));
			}
			
			if(mediaTriceps==null || mediaTriceps.isEmpty()) {
				medidas.setDcTriceps(0);
			}else {
				medidas.setDcTriceps(Double.parseDouble(mediaTriceps));
			}
			
			
			if(biceps1==null || biceps1.isEmpty()) {
				medidas.setAmostra1DcBiceps(0);
			}else {
				medidas.setAmostra1DcBiceps(Double.parseDouble(biceps1));
			}
			
			
			if(biceps2==null || biceps2.isEmpty()) {
				medidas.setAmostra2DcBiceps(0);
			}else {
				medidas.setAmostra2DcBiceps(Double.parseDouble(biceps2));
			}
			
			if(biceps3==null || biceps3.isEmpty()) {
				medidas.setAmostra3DcBiceps(0);
			}else {
				medidas.setAmostra3DcBiceps(Double.parseDouble(biceps3));
			}
			
			if(mediaBiceps==null || mediaBiceps.isEmpty()) {
				medidas.setDcBiceps(0);
			}else {
				medidas.setDcBiceps(Double.parseDouble(mediaBiceps));
			}
			
			if(subEscapular1==null || subEscapular1.isEmpty()) {
				medidas.setAmostra1DcSubescapular(0);
			}else {
				medidas.setAmostra1DcSubescapular(Double.parseDouble(subEscapular1));
			}
			
			if(subEscapular2==null || subEscapular2.isEmpty()) {
				medidas.setAmostra2DcSubescapular(0);
			}else {
				medidas.setAmostra2DcSubescapular(Double.parseDouble(subEscapular2));
			}
			
			if(subEscapular3==null || subEscapular3.isEmpty()) {
				medidas.setAmostra3DcSubescapular(0);
			}else {
				medidas.setAmostra3DcSubescapular(Double.parseDouble(subEscapular3));
			}
			
			if(mediaSubEscapular==null || mediaSubEscapular.isEmpty()) {
				medidas.setDcSubescapular(0);
			}else {
				medidas.setDcSubescapular(Double.parseDouble(mediaSubEscapular));
			}
			
			if(peito1==null || peito1.isEmpty()) {
				medidas.setAmostra1DcPeitoral(0);
			}else {
				medidas.setAmostra1DcPeitoral(Double.parseDouble(peito1));
			}
			
			if(peito2==null || peito2.isEmpty()) {
				medidas.setAmostra2DcPeitoral(0);
			}else {
				medidas.setAmostra2DcPeitoral(Double.parseDouble(peito2));
			}
			
			if(peito3==null || peito3.isEmpty()) {
				medidas.setAmostra3DcPeitoral(0);
			}else {
				medidas.setAmostra3DcPeitoral(Double.parseDouble(peito3));
			}
			
			if(mediaPeito==null || mediaPeito.isEmpty()) {
				medidas.setDcPeitoral(0);
			}else {
				medidas.setDcPeitoral(Double.parseDouble(mediaPeito));
			}
			
			if(axilarMedia1==null || axilarMedia1.isEmpty()) {
				medidas.setAmostra1DcAxilarMedia(0);
			}else {
				medidas.setAmostra1DcAxilarMedia(Double.parseDouble(axilarMedia1));
			}
			
			if(axilarMedia2==null || axilarMedia2.isEmpty()) {
				medidas.setAmostra2DcAxilarMedia(0);
			}else {
				medidas.setAmostra2DcAxilarMedia(Double.parseDouble(axilarMedia2));
			}
			
			if(axilarMedia3==null || axilarMedia3.isEmpty()) {
				medidas.setAmostra3DcAxilarMedia(0);
			}else {
				medidas.setAmostra3DcAxilarMedia(Double.parseDouble(axilarMedia3));
			}
			
			if(axilarMedia==null || axilarMedia.isEmpty()) {
				medidas.setDcAxilarMedia(0);
			}else {
				medidas.setDcAxilarMedia(Double.parseDouble(axilarMedia));
			}
			
			if(supraIliaca1==null || supraIliaca1.isEmpty()) {
				medidas.setAmostra1DcSupraIliaca(0);
			}else {
				medidas.setAmostra1DcSupraIliaca(Double.parseDouble(supraIliaca1));
			}
			
			if(supraIliaca2==null || supraIliaca2.isEmpty()) {
				medidas.setAmostra2DcSupraIliaca(0);
			}else {
				medidas.setAmostra2DcSupraIliaca(Double.parseDouble(supraIliaca2));
			}
			
			if(supraIliaca3==null || supraIliaca3.isEmpty()) {
				medidas.setAmostra3DcSupraIliaca(0);
			}else {
				medidas.setAmostra3DcSupraIliaca(Double.parseDouble(supraIliaca3));
			}

			if(supraIliacaMedia==null || supraIliacaMedia.isEmpty()) {
				medidas.setDcSupraIliaca(0);
			}else {
				medidas.setDcSupraIliaca(Double.parseDouble(supraIliacaMedia));
			}

			if(abdomen1==null || abdomen1.isEmpty()) {
				medidas.setAmostra1DcAbdomen(0);
			}else {
				medidas.setAmostra1DcAbdomen(Double.parseDouble(abdomen1));
			}
			
			if(abdomen2==null || abdomen2.isEmpty()) {
				medidas.setAmostra2DcAbdomen(0);
			}else {
				medidas.setAmostra2DcAbdomen(Double.parseDouble(abdomen2));
			}
			
			if(abdomen3==null || abdomen3.isEmpty()) {
				medidas.setAmostra3DcAbdomen(0);
			}else {
				medidas.setAmostra3DcAbdomen(Double.parseDouble(abdomen3));
			}
			
			if(abdomenMedia==null || abdomenMedia.isEmpty()) {
				medidas.setDcAbdomen(0);
			}else {
				medidas.setDcAbdomen(Double.parseDouble(abdomenMedia));
			}
			
			if(coxaMedial1==null || coxaMedial1.isEmpty()) {
				medidas.setAmostra1DcCoxaPollockMedial(0);
			}else {
				medidas.setAmostra1DcCoxaPollockMedial(Double.parseDouble(coxaMedial1));
			}
			
			if(coxaMedial2==null || coxaMedial2.isEmpty()) {
				medidas.setAmostra2DcCoxaPollockMedial(0);
			}else {
				medidas.setAmostra2DcCoxaPollockMedial(Double.parseDouble(coxaMedial2));
			}
			
			if(coxaMedial3==null || coxaMedial3.isEmpty()) {
				medidas.setAmostra3DcCoxaPollockMedial(0);
			}else {
				medidas.setAmostra3DcCoxaPollockMedial(Double.parseDouble(coxaMedial3));
			}
			
			if(coxaMedialMedia==null || coxaMedialMedia.isEmpty()) {
				medidas.setDcCoxaPollockMedial(0);
			}else {
				medidas.setDcCoxaPollockMedial(Double.parseDouble(coxaMedialMedia));
			}
			
			if(coxaProximal1==null || coxaProximal1.isEmpty()) {
				medidas.setAmostra1DcCoxaGuedesProx(0);
			}else {
				medidas.setAmostra1DcCoxaGuedesProx(Double.parseDouble(coxaProximal1));
			}
			
			if(coxaProximal2==null || coxaProximal2.isEmpty()) {
				medidas.setAmostra2DcCoxaGuedesProx(0);
			}else {
				medidas.setAmostra2DcCoxaGuedesProx(Double.parseDouble(coxaProximal2));
			}
			
			if(coxaProximal3==null || coxaProximal3.isEmpty()) {
				medidas.setAmostra3DcCoxaGuedesProx(0);
			}else {
				medidas.setAmostra3DcCoxaGuedesProx(Double.parseDouble(coxaProximal3));
			}
			
			if(coxaProximalMedia==null || coxaProximalMedia.isEmpty()) {
				medidas.setDcCoxaGuedesProx(0);
			}else {
				medidas.setDcCoxaGuedesProx(Double.parseDouble(coxaProximalMedia));
			}
			
			if(paturrilha1==null || paturrilha1.isEmpty()) {
				medidas.setAmostra1DcPanturrurrilha(0);
			}else {
				medidas.setAmostra1DcPanturrurrilha(Double.parseDouble(paturrilha1));
			}
			
			if(paturrilha2==null || paturrilha2.isEmpty()) {
				medidas.setAmostra2DcPanturrurrilha(0);
			}else {
				medidas.setAmostra2DcPanturrurrilha(Double.parseDouble(paturrilha2));
			}
			
			if(paturrilha3==null || paturrilha3.isEmpty()) {
				medidas.setAmostra3DcPanturrurrilha(0);
			}else {
				medidas.setAmostra3DcPanturrurrilha(Double.parseDouble(paturrilha3));
			}
			
			if(paturrilhaMedia==null || paturrilhaMedia.isEmpty()) {
				medidas.setDcPanturrilha(0);
			}else {
				medidas.setDcPanturrilha(Double.parseDouble(paturrilhaMedia));
			}
			
			if(somaDasDobras==null || somaDasDobras.isEmpty()) {
				medidas.setSomaDobras(0);
			}else {
				medidas.setSomaDobras(Double.parseDouble(somaDasDobras));
			}
			
			if(cirCintura==null || cirCintura.isEmpty()) {
				medidas.setCirCintura(0);
			}else {
				medidas.setCirCintura(Double.parseDouble(cirCintura));
			}
			
			if(cirAbdomen==null || cirAbdomen.isEmpty()) {
				medidas.setCirAbdomen(0);
			}else {
				medidas.setCirAbdomen(Double.parseDouble(cirAbdomen));
			}
			
			
			
			
			if(cirIliaco==null || cirIliaco.isEmpty()) {
				medidas.setCirIliaco(0);
			}else {
				medidas.setCirIliaco(Double.parseDouble(cirIliaco));
			}
			
			if(cirQuadril==null || cirQuadril.isEmpty()) {
				medidas.setCirQuadril(0);
			}else {
				medidas.setCirQuadril(Double.parseDouble(cirQuadril));
			}
			
			if(diametroOsseoPunho==null || diametroOsseoPunho.isEmpty()) {
				medidas.setDiametroOsseoPunho(0);
			}else {
				medidas.setDiametroOsseoPunho(Double.parseDouble(diametroOsseoPunho));
			}
			
			if(diametroOsseoUmero==null || diametroOsseoUmero.isEmpty()) {
				medidas.setDiametroOsseoUmero(0);
			}else {
				medidas.setDiametroOsseoUmero(Double.parseDouble(diametroOsseoUmero));
			}
			
			if(diametroOsseoFemur==null || diametroOsseoFemur.isEmpty()) {
				medidas.setDiametroOsseoFemur(0);
			}else {
				medidas.setDiametroOsseoFemur(Double.parseDouble(diametroOsseoFemur));
			}
			
			if(percentualGoduraAtual==null || percentualGoduraAtual.isEmpty()) {
				medidas.setPercentualGorduraAtual(0);
			}else {
				medidas.setPercentualGorduraAtual(Double.parseDouble(percentualGoduraAtual));
			}
			
			if(percentualGoduraAlvo==null || percentualGoduraAlvo.isEmpty()) {
				medidas.setPercentualGorduraAlvo(0);
			}else {
				medidas.setPercentualGorduraAlvo(Double.parseDouble(percentualGoduraAlvo));
			}
			
			daoComposicao.alterarMedidasNoBanco(medidas);
			
			
			DAOResultadoRepository daoResultado = new DAOResultadoRepository();
			ModelResultado resultado = new ModelResultado();
			RegrasComposicao regrasComposicao = new RegrasComposicao();
			
            resultado.setPeso(medidas.getPeso());
            resultado.setAltura(medidas.getAltura());

            resultado.setIdade(avaliacao.getIdadeCliente());
            double imc = medidas.getPeso()/(medidas.getAltura() * medidas.getAltura());
            resultado.setImc(imc);
            String classIMC = regrasComposicao.classificacaoIMCMulher(imc);
            resultado.setClassificacaoIMC(classIMC);
            

            resultado.setPercentual_gordura(medidas.getPercentualGorduraAtual());
            resultado.setPercentualGorduraAlvo(medidas.getPercentualGorduraAlvo());
            resultado.setMassa_gordura(regrasComposicao.massaGordura(medidas.getPeso(), medidas.getPercentualGorduraAtual()));
            double massaOssea=0;
            if (medidas.getDiametroOsseoPunho()<=0  || medidas.getDiametroOsseoFemur()<=0) {
                massaOssea=0;
            }else {
                massaOssea = regrasComposicao.massaOssea(medidas.getAltura(), medidas.getDiametroOsseoPunho(), medidas.getDiametroOsseoFemur());
            }
            resultado.setMassa_ossea(massaOssea);
            resultado.setMassa_gordura(regrasComposicao.massaGordura(medidas.getPeso(), medidas.getPercentualGorduraAtual()));
            resultado.setMassa_magra(regrasComposicao.massaCorporalMagra(medidas.getPeso(), resultado.getMassa_gordura()));

            resultado.setPercentual_massa_magra(regrasComposicao.percentualMassaCorporalMagra(resultado.getMassa_magra(), medidas.getPeso()));
            DAOClienteRepository daoCliente = new DAOClienteRepository();
            ModelCliente cliente = new ModelCliente();
            cliente = daoCliente.pesquisaCliente(avaliacao.getCodCliente());
            if(cliente.getSexo().equals("F")) {
            	resultado.setMassa_residual(regrasComposicao.massaResidualFeminina(medidas.getPeso()));
            }else {
            	resultado.setMassa_residual(regrasComposicao.massaResidualMasc(medidas.getPeso()));
            }
            
           
            double massaMuscular = 0;
            double percentualMassaMuscular = 0;
            if (massaOssea==0) {
                resultado.setMassa_muscular(0);
               resultado.setPercentual_massa_muscular(0);
            }else{
                resultado.setMassa_muscular(regrasComposicao.massaMuscular(medidas.getPeso(), resultado.getMassa_gordura(), resultado.getMassa_ossea(), resultado.getMassa_residual()));
                resultado.setPercentual_massa_muscular(regrasComposicao.percentualMassaMuscular(resultado.getMassa_muscular(), medidas.getPeso()));
            }
            
            if(cliente.getSexo().equals("F")) {
            	resultado.setPesoIdealMinimo(regrasComposicao.pesoIdealMinimoFem(resultado.getMassa_magra()));
            }else {
            	resultado.setPesoIdealMinimo(regrasComposicao.pesoIdealMinimoMasc(resultado.getMassa_magra()));
            }
            
            resultado.setPeso_excesso(regrasComposicao.pesoExcesso(medidas.getPeso(), resultado.getPesoIdealMinimo()));
            
            if(cliente.getSexo().equals("F")) {
            	resultado.setPesoIdealMaximo(regrasComposicao.pesoIdealMaximoFem(resultado.getMassa_magra()));
            }else {
            	resultado.setPesoIdealMaximo(regrasComposicao.pesoIdealMaximoMasc(resultado.getMassa_magra()));
            }
            
            resultado.setPesoAlvo(resultado.getMassa_magra()/(1-(resultado.getPercentualGorduraAlvo()/100))); 
            
            resultado.setDiferenca_peso(medidas.getPeso() - resultado.getPesoAlvo());
            resultado.setCod_avaliacao(avaliacao.getCodAvaliacao());
            
            daoResultado.alteraDaoResultado(resultado);
			
			DAOCardiovascularRepository daoCardio = new DAOCardiovascularRepository();
			daoCardio.alterarPeso(medidas.getPeso(), medidas.getCodAvaliacao());
			resultado = daoResultado.pesquisaResultadoPeloCodAvaliacao(medidas.getCodAvaliacao());
			
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/principal.jsp");
			request.setAttribute("resultado",resultado );
			request.setAttribute("codAvaliacao", avaliacao.getCodAvaliacao());
			request.setAttribute("avaliacao", avaliacao);
			redireciona.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
}

}
