package servletLogin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoAvaliadorRepository;
import model.ModelAvaliador;


@WebServlet("/ServletAvaliador")
public class ServletAvaliador extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DaoAvaliadorRepository daoAvaliador = new DaoAvaliadorRepository();
       
    
    public ServletAvaliador() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		System.out.println("Ação= "+acao);
		String user = request.getParameter("user");
		System.out.println("user= "+user);
		if(acao.equals("editar")) {
			
			ModelAvaliador avaliador = new ModelAvaliador();
			try {
				avaliador = daoAvaliador.pesquisaAvaliador(Integer.parseInt(user));
				request.setAttribute("avaliador", avaliador);
				RequestDispatcher redireciona = request.getRequestDispatcher("principal/avaliador.jsp");
				redireciona.forward(request, response);
			} catch (NumberFormatException e) {
				e.printStackTrace();
				RequestDispatcher redireciona = request.getRequestDispatcher("principal/erro.jsp");
				request.setAttribute("msg", "erro: " + e.getMessage());
				redireciona.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				RequestDispatcher redireciona = request.getRequestDispatcher("principal/erro.jsp");
				request.setAttribute("msg", "erro: " + e.getMessage());
				redireciona.forward(request, response);
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codUsuario = request.getParameter("txtCodUsuario");
		String telefoneAvaliador = request.getParameter("txtFone");
		String instagram = request.getParameter("txtInstagram");
		String facebook = request.getParameter("txtFacebook");
		String especializacao = request.getParameter("txtEspecializacao");
		String site = request.getParameter("txtSite");
		String cref = request.getParameter("txtCref");
		String diasReavaliacao = request.getParameter("txtDiasReavaliacao");
		ModelAvaliador avaliador = new ModelAvaliador();
		avaliador.setCodUsuario(Integer.parseInt(codUsuario));
		avaliador.setTelefoneAvaliador(telefoneAvaliador);
		avaliador.setInstagram(instagram);
		avaliador.setFacebook(facebook);
		avaliador.setEspecializacao(especializacao);
		avaliador.setSite(site);
		avaliador.setCref(cref);
		avaliador.setDiasParaReavaliação(Integer.parseInt(diasReavaliacao));
		try {
			daoAvaliador.alteraAvaliador(avaliador);
			RequestDispatcher redireciona = request.getRequestDispatcher("principal/inicial.jsp");
			redireciona.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
